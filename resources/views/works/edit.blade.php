@extends('layouts.app')

@section('content')
    @include('common.errors')
    
    <form action="{{ route('works.update', $work->id) }}" method="POST" class="form-horizontal">
        {{ csrf_field() }}
        {{ method_field('PATCH') }}

        <div class="card border-secondary">
            <div class="card-header">
                <nav class="nav nav-pills">
                    <a href="{{ route('works.edit', $work->id) }}" class="nav-link active">基本</a>
                    <a href="{{ route('works.workTags.create', $work->id) }}" class="nav-link">標記</a>
                </nav>
            </div>

            <div class="card-body border-secondary">
                <div class="form-group">
                    <label for="title">標題</label>

                    <input type="text" name="title" value="{{ $work->title }}" class="form-control" id="title" aria-describedby="title" required>
                </div>

                <div class="form-group">
                    <label for="begin-date">開始日期</label>
                    
                    <input type="text" name="begin_date" value="{{ $work->begin_date }}" class="form-control" id="begin-date" aria-describedby="begin-date" required>
                </div>

                <div class="form-group">
                    <label for="end-date">開始日期</label>
                    
                    <input type="text" name="end_date" value="{{ $work->end_date }}" class="form-control" id="end-date" aria-describedby="end-date" required>
                </div>

                <div class="form-group">
                    <label for="content">內容</label>

                    <div class="collapse " id="CollapseContent">
                        <textarea name="content" class="form-control" id="content" aria-describedby="content" required>{{ $work->content }}</textarea>
                    </div>

                    <button type="button" class="btn btn-block" data-toggle="collapse" data-target="#CollapseContent" role="button" aria-expanded="false" aria-controls="CollapseContent" id="clickToShow">顯示</button>
                </div>
            </div>

            <div class="card-footer border-secondary text-center">
                <input type="submit" class="btn btn-success" value="儲存">
            </div>
        </div>
    </form>
@endsection