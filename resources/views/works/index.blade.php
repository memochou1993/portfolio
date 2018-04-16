@extends('layouts.app')

@section('content')
    @if (count($works) > 0)
        <div class="card-columns">
            @foreach ($works as $work)
                <div class="card border-secondary">
                    <a href="{{ route('works.view', $work->id) }}"><img src="{{ asset('storage/app/public/images/screenshots/thumbnail/'.$work->id.'.jpg') }}" class="card-img-top" alt="{{ $work->title }}" title="{!! $work->title !!}"></a>

                    <div class="card-body border-secondary">
                        <a href="{{ route('works.view', $work->id) }}" class="card-link">{{ $work->title }}</a>
                    </div>
                </div>
            @endforeach
        </div>
    @else
        <div class="alert alert-warning" role="alert">
            找不到任何結果，請重新檢索。
        </div>
    @endif
    
    <div class="d-flex justify-content-center my-3">
        {{$works->links('vendor.pagination.bootstrap-4')}}
    </div>
@endsection