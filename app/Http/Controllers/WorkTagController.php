<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\WorkTag;
use App\Work;

class WorkTagController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except('logout');
    }

    public function add(Request $request, Work $work)
    {
        if ($request->input('tag')) {
            foreach (explode(',', trim($request->input('tag'))) as $work_tag) {
                $data[] = ['type' => $request->input('type'), 'name' => $work_tag, 'work_id' => $work->id,];
            }

            $work_tags = WorkTag::insert($data);
        }

        return redirect()->back();
    }

    public function showUpdateForm(Work $work)
    {
        $work_tags = Work::find($work->id)->workTag()->orderBy('name', 'desc')->get();

        return view('workTags.update', [
            'work' => $work,
            'work_tags' => $work_tags,
        ]);
    }

    public function update(Work $work)
    {
        WorkController::integrate($work);

        return redirect()->route('works.view', $work);
    }

    public function destroy(WorkTag $work_tag)
    {
        $work_tag->delete();

        return redirect()->back();
    }

    public function search(Request $request)
    {
        $term = $request->get('term', '');
        
        $work_tags = WorkTag::distinct()->whereNotNull('name')->where('name', 'LIKE', '%'.$term.'%')->orderBy('name', 'desc')->pluck('name');
        
        foreach ($work_tags as $work_tag) {
            $data[] = ['value' => $work_tag,];
        }

        return $data;
    }
}
