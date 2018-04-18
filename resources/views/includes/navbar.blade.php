<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="{{ route('home.index') }}">周孝威作品集@if (!$agent->isMobile()) （2012 - 2018） @endif</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto">
			@auth
				@if (Route::current()->getName() == "work.show")
					<li class="nav-item active">
						<a href="{{ route('work.edit', $work->id) }}" class="nav-link">編輯</a>
					</li>
				@elseif (Route::current()->getName() == "work.edit" or Route::current()->getName() == "work.workTag.create")
					<li class="nav-item active">
						<a href="{{ route('work.show', $work->id) }}" class="nav-link">查看</a>
					</li>
				@endif

				<li class="nav-item dropdown {{ Request::is('work*') ? 'active' : '' }}">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						作品
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a href="{{ route('work.index') }}" class="dropdown-item">一覽</a>
						<a href="{{ route('work.create') }}" class="dropdown-item">新增</a>
					</div>
				</li>
			@else
				<li class="nav-item dropdown {{ Request::is('work*') ? 'active' : '' }}">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						作品
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						@foreach ($distinct_year_tags as $distinct_year_tag)
							<a href="{{ route('work.index', ['q' => $distinct_year_tag,]) }}" class="dropdown-item {{ $request->q == $distinct_year_tag ? 'active' : '' }}">{{ $distinct_year_tag }}</a>
						@endforeach
					</div>
				</li>
			@endauth

			@auth
				<li class="nav-item">
					<a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
						登出
					</a>

					<form id="logout-form" action="{{ route('logout') }}" method="POST">
						{{ csrf_field() }}
					</form>
				</li>
			@endauth
		</ul>
	</div>
</nav>