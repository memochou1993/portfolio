<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Work;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $works = Work::inRandomOrder();

        foreach (explode(' ', trim($request->q)) as $query) {
            $works->orWhere('full_text', 'LIKE', '%'.$query.'%');
        };
        
        $works = $works->paginate(20);

        return view('works.index', [
            'works' => $works->appends(request()->input()),
        ]);
    }
}
