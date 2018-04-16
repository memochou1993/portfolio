
<div class="list-group">
    @foreach ($unfiltered_works as $unfiltered_work)
        <a href="{{ route('works.view', $unfiltered_work->id) }}" class="list-group-item list-group-item-action {{ (Request::is('works/view/'.$unfiltered_work->id) or Request::is('works/edit/'.$unfiltered_work->id) or Request::is('workTags/update/'.$unfiltered_work->id)) ? 'active' : '' }}" data-toggle="tooltip" data-placement="left" title="{{ $unfiltered_work->date }}">
            <div class="first-line-outdent">
                {{ $unfiltered_work->title }}
            </div>
        </a>
    @endforeach
</div>