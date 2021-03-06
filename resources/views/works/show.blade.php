@extends('layouts.app')

@section('content')
    <div id="loading">
        <img src="{{ asset('images/loading.svg') }}" class="my-5" alt="Loading...">
    </div>

    <div class="card" hidden>
        <div class="card-header">
            <div class="title text-center my-0">{{ $work->title }}</div>
        </div>
        
        <div class="card-body">
            <div class="text-right text-muted mb-3">
                {{ $work->begin_date == $work->end_date ? $work->begin_date : $work->begin_date . ' - ' . $work->end_date }}
            </div>

            <div>
                {!! str_replace('http://', request()->getScheme().'://', $work->content) !!}
            </div>
        </div>
        
        @if (count($work_tags) > 0)
            <div class="card-footer">
                @foreach ($work_tags as $work_tag)
                    <a href="{{ route('works.index', ['tag' => $work_tag->name]) }}" class="badge badge-primary">
                        {{ $work_tag->name }}
                    </a>
                @endforeach
            </div>
        @endif
    </div>
@endsection
