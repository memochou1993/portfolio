@extends('layouts.app')

@section('content')
    @include('common.errors')

    <div class="card border-secondary">
        <div class="card-header">
            <nav class="nav nav-pills">
                <a href="{{ route('works.edit', $work->id) }}" class="nav-link">基本</a>
                <a href="{{ route('works.workTags.create', $work->id) }}" class="nav-link active">標記</a>
            </nav>
        </div>

        <div class="card-body border-secondary">
            <form action="{{ route('works.workTags.store', $work) }}" method="POST" class="form-horizontal">
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
                            <input type="submit" value="儲存" class="btn btn-success">
                        </div>
                    </div>
                </div>
            </form>

            @foreach ($work_tags as $work_tag)
                <div class="d-inline-flex">
                    <form action="{{ route('works.workTags.destroy', [$work, $work_tag->id]) }}" method="POST">
                        {{ csrf_field() }}
                        {{ method_field('DELETE') }}

                        <button class="badge badge-danger badge-tag">
                            {{ $work_tag->name }} <i class="far fa-trash-alt"></i>
                        </button>
                    </form>
                </div>
            @endforeach
        </div>
    </div>
@endsection
