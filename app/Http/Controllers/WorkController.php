<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Work;
use App\WorkTag;

class WorkController extends Controller
{
    public function index(Request $request)
    {
        $works = Work::inRandomOrder();

        foreach (explode(' ', trim($request->q)) as $query) {
            $works->where('full_text', 'LIKE', '%'.$query.'%');
        };
        
        $works = $works->paginate(20);

        return view('works.index', [
            'works' => $works->appends(request()->input()),
        ]);
    }

    public function showAddForm()
    {
        return view('works.add');
    }

    public function add(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'date' => 'required',
            'content' => 'required',
        ]);

        $works = new Work;
        $works->title = $request->input('title');
        $works->date = $request->input('date');
        $works->content = $request->input('content');
        $works->save();

        return redirect()->route('workTags.update', $works->id);
    }

    public function view(Work $work)
    {
        $work_tags = Work::find($work->id)->workTag()->orderBy('name', 'desc')->get();

        return view('works.view', [
            'work' => $work,
            'work_tags' => $work_tags,
        ]);
    }

    public function showEditForm(Work $work)
    {
        $work_tags = Work::find($work->id)->workTag()->orderBy('name', 'desc')->get();

        return view('works.edit', [
            'work' => $work,
            'work_tags' => $work_tags,
        ]);
    }

    public function edit(Request $request, Work $work)
    {
        $this->validate($request, [
            'title' => 'required',
            'date' => 'required',
            'content' => 'required',
        ]);

        $work->update([
            'title' => $request->input('title'),
            'date' => $request->input('date'),
            'content' => $request->input('content'),
        ]);

        WorkController::integrate($work);

        return redirect()->route('works.view', $work);
    }

    public static function integrate(Work $work)
    {
        $full_text = '';
        
        foreach (['title', 'date', 'content',] as $column) {
            $full_text .= $column.':'.$work->$column.';';
        }

        $full_text .= implode(',', Work::find($work->id)->workTag()->orderBy('name', 'desc')->pluck('name')->all()).';';

        $work->update([
            'full_text' => $full_text,
        ]);

        return redirect()->route('works.view', $work);
    }
}
