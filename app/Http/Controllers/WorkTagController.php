<?php

namespace App\Http\Controllers;

use App\Work;
use App\WorkTag;
use Illuminate\Http\Request;

class WorkTagController extends Controller
{
    public function create(Work $work)
    {
        $work_tags = Work::find($work->id)
            ->tags()
            ->orderBy('name', 'desc')
            ->get();

        return view('workTags.create', [
            'work' => $work,
            'work_tags' => $work_tags,
        ]);
    }

    public function store(Request $request, Work $work)
    {
        if ($request->input('tag')) {
            $data = [];

            foreach (explode(',', $request->input('tag')) as $work_tag) {
                $data[] = [
                    'type' => $request->input('type'),
                    'name' => trim($work_tag),
                    'work_id' => $work->id,
                ];
            }

            WorkTag::insert($data);

            WorkController::integrate($work);
        }

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

        $work_tags = WorkTag::distinct()
            ->whereNotNull('name')
            ->where('name', 'LIKE', '%'.$term.'%')
            ->orderBy('name', 'desc')
            ->pluck('name')
            ->all();

        $data = [];

        foreach ($work_tags as $work_tag) {
            $data[] = [
                'value' => $work_tag,
            ];
        }

        return $data;
    }
}
