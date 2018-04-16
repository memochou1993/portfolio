<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Http\Request;
use App\Work;
use App\WorkTag;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Request $request)
    {
        view()->share('request', $request);

        $unfiltered_works = Work::select('id', 'title', 'date')->orderBy('date', 'desc')->get();
        view()->share('unfiltered_works', $unfiltered_works);

        $unfiltered_ordinary_tags = WorkTag::distinct()->whereNotNull('name')->where('type', '一般')->orderBy('name', 'desc')->pluck('name')->all();
        view()->share('unfiltered_ordinary_tags', $unfiltered_ordinary_tags);

        $unfiltered_year_tags = WorkTag::distinct()->whereNotNull('name')->where('type', '年分')->orderBy('name', 'desc')->pluck('name')->all();
        view()->share('unfiltered_year_tags', $unfiltered_year_tags);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
