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

    public function create(Work $work)
    {
        $work_tags = Work::find($work->id)->workTag()->orderBy('name', 'desc')->get();

        return view('workTag.create', [
            'work' => $work,
            'work_tags' => $work_tags,
        ]);
    }

    public function store(Request $request, Work $work)
    {
        if ($request->input('tag')) {
            foreach (explode(',', trim($request->input('tag'))) as $work_tag) {
                $data[] = [
                    'type' => $request->input('type'),
                    'name' => $work_tag,
                    'work_id' => $work->id,
                ];
            }

            $work_tags = WorkTag::insert($data);
        }

        WorkController::integrate($work);
        
        return redirect()->back();
    }

    public function destroy(Work $work, $work_tag)
    {
        WorkTag::destroy($work_tag);

        WorkController::integrate($work);

        return redirect()->back();
    }

    public function search(Request $request)
    {
        $term = $request->get('term');
        
        $work_tags = WorkTag::distinct()->whereNotNull('name')->where('name', 'LIKE', '%'.$term.'%')->orderBy('name', 'desc')->pluck('name')->all();
        
        foreach ($work_tags as $work_tag) {
            $data[] = ['value' => $work_tag,];
        }

        return $data;
    }
}
