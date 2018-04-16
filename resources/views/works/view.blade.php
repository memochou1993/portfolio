@extends('layouts.app')

@section('content')
    <div id="loading">
        <img src="{{ asset('public/img/loading.svg') }}" class="my-5" alt="Loading...">
    </div>

    <div class="card" hidden>
        <div class="card-header text-center">
            <h5 class="my-0">{!! $work->title !!}</h5>
        </div>
        
        <div class="card-body">
            <div class="text-right text-muted mb-3">
                {!! $work->date !!}
            </div>
            
            <div>
                {!! $work->content !!}
            </div>
        </div>
        
        @if (count($work_tags) > 0)
            <div class="card-footer">
                @foreach ($work_tags as $work_tag)
                    <a href="{{ route('works.index', ['q' => $work_tag->name,]) }}" class="badge badge-primary badge-tag">
                        {{ $work_tag->name }}
                    </a>
                @endforeach
            </div>
        @endif
    </div>
@endsection