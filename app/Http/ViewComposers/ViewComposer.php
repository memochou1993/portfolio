<?php

namespace App\Http\ViewComposers;

use App\Work;
use App\WorkTag;
use Illuminate\View\View;
use Jenssegers\Agent\Agent;

class ViewComposer
{
    var $data;

    /**
     * Create a new composer.
     *
     * @param  User  $user
     * @return void
     */
    public function __construct(Agent $agent, Work $work, WorkTag $workTag)
    {
        $distinct_works = $work->select('id', 'title', 'date')->orderBy('date', 'desc')->get();

        $featured_tags = [
            "Laravel",
            "Vue",
            "Go",
        ];

        $distinct_ordinary_tags = $workTag
            ->distinct()
            ->whereNotNull('name')
            ->where('type', '一般')
            ->orderBy('name', 'desc')
            ->pluck('name')
            ->all();

        $distinct_year_tags = $workTag
            ->distinct()
            ->whereNotNull('name')
            ->where('type', '年分')
            ->orderBy('name', 'desc')
            ->pluck('name')
            ->all();

        $this->data = compact([
            'request',
            'agent',
            'distinct_works',
            'featured_tags',
            'distinct_ordinary_tags',
            'distinct_year_tags',
        ]);
    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with($this->data);
    }
}
