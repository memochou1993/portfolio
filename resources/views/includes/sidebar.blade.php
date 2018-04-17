
<div class="list-group">
    @foreach ($distinct_works as $distinct_work)
        <a href="{{ route('work.show', $distinct_work->id) }}" class="list-group-item list-group-item-action {{ (Request::is('work/'.$distinct_work->id) or Request::is('work/'.$distinct_work->id.'/edit') or Request::is('work/'.$distinct_work->id.'/workTag/create')) ? 'active' : '' }}" @if (!$agent->isMobile()) data-toggle="tooltip" @endif title="{{ $distinct_work->date }}">
            <div class="first-line-outdent">
                {{ $distinct_work->title }}
            </div>
        </a>
    @endforeach
</div>