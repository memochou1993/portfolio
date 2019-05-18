<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Http\Request;
use App\Work;
use App\WorkTag;
use Jenssegers\Agent\Agent;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Request $request)
    {
        $agent = new Agent();

        $distinct_works = Schema::hasTable('works')
            ? Work::select('id', 'title', 'date')->orderBy('date', 'desc')->get()
            : [];

        $featured_tags = [
            "Laravel",
            "Vue",
        ];

        $distinct_ordinary_tags = Schema::hasTable('work_tags')
            ? WorkTag::distinct()->whereNotNull('name')->where('type', '一般')->orderBy('name', 'desc')->pluck('name')->all()
            : [];

        $distinct_year_tags = Schema::hasTable('work_tags')
            ? WorkTag::distinct()->whereNotNull('name')->where('type', '年分')->orderBy('name', 'desc')->pluck('name')->all()
            : [];

        vidw()->share(compact([
            'request',
            'agent',
            'distinct_works',
            'featured_tags',
            'distinct_ordinary_tags',
            'distinct_year_tags',
        ]));
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
