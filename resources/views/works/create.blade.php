@extends('layouts.app')

@section('content')
    @include('common.errors')
    
    <form action="{{ route('works.store') }}" method="POST" class="form-horizontal">
        {{ csrf_field() }}

        <div class="card border-secondary">
            <div class="card-header">新增</div>

            <div class="card-body border-secondary">
                <div class="form-group">
                    <label for="title">標題</label>
                    <input type="text" name="title" value="{{ old('title') }}" class="form-control" id="title" aria-describedby="title" required>
                </div>

                <div class="form-group">
                    <label for="date">日期</label>

                    <input type="text" name="date" value="{{ old('date') }}" class="form-control" id="date" aria-describedby="date" required>
                </div>

                <div class="form-group">
                    <label for="content">內容</label>

                    <div class="collapse " id="CollapseContent">
                        <textarea name="content" class="form-control" id="content" aria-describedby="content" required>{{ old('content') }}</textarea>
                    </div>

                    <button type="button" class="btn btn-block" data-toggle="collapse" href="#CollapseContent" role="button" aria-expanded="false" aria-controls="CollapseContent" id="clickToShow">顯示</button>
                </div>
            </div>

            <div class="card-footer border-secondary text-center">
                <input type="submit" class="btn btn-success" value="儲存">
            </div>
        </div>
    </form>
@endsection