@extends('layouts.app')

@section('content')
    @include('common.errors')

    <div class="card border-secondary">
        <div class="card-header">
            修改
        </div>

        <div class="card-body border-secondary">
            <nav class="nav nav-tabs flex-column flex-sm-row mb-3">
                <a href="{{ route('works.edit', $work->id) }}" class="nav-item nav-link">基本</a>
                <a href="{{ route('workTags.showUpdateForm', $work->id) }}" class="nav-item nav-link active">標記</a>
            </nav>

            <form action="{{ route('workTags.add', $work) }}" method="POST" class="form-horizontal">
                {{ csrf_field() }}

                <div class="form-group">
                    <label for="type">類型</label>

                    <div class="input-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-outline-secondary active">
                                <input type="radio" name="type" value="一般" id="ordinary" autocomplete="off" checked>一般
                            </label>
                            <label class="btn btn-outline-secondary">
                                <input type="radio" name="type" value="年分" id="year" autocomplete="off">年分
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="tag">名稱</label>

                    <div class="input-group">
                        <input type="text" name="tag" value="" class="form-control" id="tag" aria-describedby="tag">

                        <div class="input-group-append">
                            <input type="submit" value="新增" class="btn btn-outline-secondary">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    @foreach ($work_tags as $work_tag)
                        <a href="{{ route('workTags.destroy', $work_tag->id) }}" class="badge badge-primary badge-tag">{{ $work_tag->name }} <i class="far fa-trash-alt"></i></a>
                    @endforeach
                </div>
            </form>
        </div>
        
        <form action="{{ route('workTags.update', $work) }}" method="POST" class="form-horizontal">
            {{ csrf_field() }}

            <div class="card-footer border-secondary text-center">
                <input type="submit" value="儲存" class="btn btn-success">
            </div>
        </form>
    </div>
@endsection