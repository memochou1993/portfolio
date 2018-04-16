<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="{{ route('home.index') }}">周孝威作品集（2012 - 2018）</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto">
			@auth
				<li class="nav-item dropdown {{ Request::is('works*') ? 'active' : '' }}">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						作品
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a href="{{ route('works.index') }}" class="dropdown-item">一覽</a>
						<a href="{{ route('works.add') }}" class="dropdown-item">新增</a>
					</div>
				</li>
				
				@if (Request::is('works/view*'))
					<li class="nav-item {{ Request::is('works*') ? 'active' : '' }}">
						<a href="{{ route('works.edit', $work->id) }}" class="nav-link">編輯</a>
					</li>
				@endif
			@else
				<li class="nav-item dropdown {{ Request::is('works*') ? 'active' : '' }}">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						作品
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						@foreach ($unfiltered_year_tags as $unfiltered_year_tag)
							<a href="{{ route('works.index', ['q' => $unfiltered_year_tag,]) }}" class="dropdown-item {{ $request->q == $unfiltered_year_tag ? 'active' : '' }}">{{ $unfiltered_year_tag }}</a>
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