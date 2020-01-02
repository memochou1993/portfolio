<div class="d-flex flex-wrap my-2">
    <div class="col-md-12 mb-2">
        @foreach ($distinct_ordinary_tags as $distinct_ordinary_tag)
            @if (in_array($distinct_ordinary_tag, $featured_tags))
                <a href="{{ route('works.index', ['q' => $distinct_ordinary_tag]) }}" class="btn btn-sm btn-outline-danger btn-tag {{ $request->q == $distinct_ordinary_tag ? 'active' : '' }}">
                    <i class="far fa-star"></i>
                    {{ $distinct_ordinary_tag }}
                </a>
            @else
                <a href="{{ route('works.index', ['q' => $distinct_ordinary_tag]) }}" class="btn btn-sm btn-outline-secondary btn-tag {{ $request->q == $distinct_ordinary_tag ? 'active' : '' }}">
                    {{ $distinct_ordinary_tag }}
                </a>
            @endif
        @endforeach
    </div>

    <div class="col-md-12 mb-2">
        {{ Breadcrumbs::render() }}
    </div>
</div>
