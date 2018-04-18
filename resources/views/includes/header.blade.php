<div class="d-flex flex-wrap my-2">
    <div class="col-md-12 mb-2">
        {{ Breadcrumbs::render() }}
    </div>

    <div class="col-md-12 mb-2">
        @foreach ($distinct_ordinary_tags as $distinct_ordinary_tag)
            <a href="{{ route('works.index', ['q' => $distinct_ordinary_tag,]) }}" class="btn btn-sm btn-outline-secondary btn-outline-secondary-tag {{ $request->q == $distinct_ordinary_tag ? 'active' : '' }}">
                {{ $distinct_ordinary_tag }}
            </a>
        @endforeach
    </div>
</div>