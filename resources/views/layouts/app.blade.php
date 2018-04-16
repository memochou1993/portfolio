<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        @include('includes.head')
    </head>
    
    <body>
        <div id="app">
            <a id="scroll-to-top"><i class="fas fa-arrow-circle-up"></i></a>
            
            <div class="container mb-4">
                @include('includes.navbar')

                @include('includes.header')

                <div class="d-flex flex-wrap">
                    <div class="col-md-3 mb-4">
                        @include('includes.sidebar')
                    </div>

                    <div class="col-md-9 mb-4">
                        @yield('content')
                    </div>
                </div>
            </div>

            @include('includes.footer')
        </div>
    </body>
    
    @include('includes.scripts')
</html>
