
<div class="list-group">
    @foreach ($distinct_works as $distinct_work)
        <a href="{{ route('works.show', $distinct_work->id) }}" class="list-group-item list-group-item-action {{ (Request::is('works/'.$distinct_work->id) or Request::is('works/'.$distinct_work->id.'/edit') or Request::is('works/'.$distinct_work->id.'/workTags/create')) ? 'active' : '' }}" @if (!$agent->isMobile()) data-toggle="tooltip" @endif title="{{ $distinct_work->begin_date == $distinct_work->end_date ? $distinct_work->begin_date : $distinct_work->begin_date . ' - ' . $distinct_work->end_date }}">
            <div class="first-line-outdent">
                {{ $distinct_work->title }}
            </div>
        </a>
    @endforeach
</div>
