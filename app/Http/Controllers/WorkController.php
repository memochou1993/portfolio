<?php

namespace App\Http\Controllers;

use App\Work;
use Illuminate\Http\Request;

class WorkController extends Controller
{
    public function index(Request $request)
    {
        $works = Work::query();

        $q = $request->q;
        $tag = $request->tag;

        if ($q) {
            $works->where('full_text', 'LIKE', '%'.$q.'%');
        }

        if ($tag) {
            $works->whereHas('tags', function ($query) use ($tag) {
                $query->where('name', $tag);
            });
        }

        $works = $works
            ->orderByDesc('end_date')
            ->paginate(20)
            ->appends(request()->input());

        return view('works.index', [
            'works' => $works,
        ]);
    }

    public function create()
    {
        return view('works.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'begin_date' => 'required|date_format:Y.m',
            'end_date' => 'required|date_format:Y.m',
            'content' => 'required',
        ]);

        $works = new Work;
        $works->title = $request->input('title');
        $works->begin_date = $request->input('begin_date');
        $works->end_date = $request->input('end_date');
        $works->content = $request->input('content');
        $works->save();

        return redirect()->route('works.workTags.create', $works->id);
    }

    public function show(Work $work)
    {
        $work_tags = Work::find($work->id)
            ->tags()
            ->orderBy('name', 'desc')
            ->get();

        return view('works.show', [
            'work' => $work,
            'work_tags' => $work_tags,
        ]);
    }

    public function edit(Work $work)
    {
        return view('works.edit', [
            'work' => $work,
        ]);
    }

    public function update(Request $request, Work $work)
    {
        $this->validate($request, [
            'title' => 'required',
            'begin_date' => 'required|date_format:Y.m',
            'end_date' => 'required|date_format:Y.m',
            'content' => 'required',
        ]);

        $work->update([
            'title' => $request->input('title'),
            'begin_date' => $request->input('begin_date'),
            'end_date' => $request->input('end_date'),
            'content' => $request->input('content'),
        ]);

        WorkController::integrate($work);

        return redirect()->route('works.show', $work);
    }

    public static function integrate(Work $work)
    {
        $columns = ['title', 'begin_date', 'end_date', 'content'];

        $full_text = '';

        foreach ($columns as $column) {
            $full_text .= $column.':'.$work->$column.';';
        }

        $work_tags = Work::find($work->id)
            ->tags()
            ->orderBy('name', 'desc')
            ->pluck('name')
            ->all();

        $full_text .= 'tag:'.implode(',', $work_tags).';';

        $work->update([
            'full_text' => $full_text,
        ]);

        return redirect()->route('works.show', $work);
    }
}
