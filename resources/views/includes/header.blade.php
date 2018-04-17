<div class="d-flex flex-wrap my-2">
    <div class="col-md-12 mb-2">
        {{ Breadcrumbs::render() }}
    </div>

    <div class="col-md-12 mb-2">
        @foreach ($distinct_ordinary_tags as $distinct_ordinary_tag)
            <a href="{{ route('work.index', ['q' => $distinct_ordinary_tag,]) }}" class="btn btn-sm btn-outline-secondary btn-outline-secondary-tag {{ $request->q == $distinct_ordinary_tag ? 'active' : '' }}">
                {{ $distinct_ordinary_tag }}
            </a>
        @endforeach
    </div>

    {{--  @if (Request::is('/') or Request::is('work'))
        <div class="col-md-12 mb-2 text-right">
            找到 {{ $works->count() }} 筆結果
        </div>
    @endif  --}}
    
    {{--  <div class="col-md-3 mb-2 ml-auto">
        <form>
            <div class="input-group">
                <input type="text" value="@if ($request->q) {{ $request->q }} @endif" aria-label="search" class="form-control form-control-sm">
                <div class="input-group-append">
                    <button class="btn btn-sm btn-outline-secondary" type="button">檢索</button>
                </div>
            </div>
        </form>
    </div>  --}}
</div>