<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        @include('includes.head')
    </head>
    
    <body>
        <div id="app">
            <a id="scroll-to-top"><i style="position:absolute;top:12px;left:12px;" class="fas fa-arrow-circle-up"></i></a>

            <div class="container my-4">
                @include('includes.navbar')

                @include('includes.header')

                <div class="d-flex flex-wrap">
                    <div class="col-md-9 mb-4 order-md-2">
                        @yield('content')
                    </div>

                    <div class="col-md-3 mb-4 order-md-1">
                        @include('includes.sidebar')
                    </div>
                </div>
            </div>

            @include('includes.footer')
        </div>
    </body>
    
    @include('includes.scripts')
</html>
