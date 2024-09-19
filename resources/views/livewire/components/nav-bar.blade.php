<div class="sticky-top">
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
    <nav class="navbar navbar-expand-xl bg-white">
        <div class="container-fluid">

            <a class="navbar-brand" href="{{route('pages.home')}}" wire:navigate>
                <img width="250px" src="{{asset('/img/full-logo-quadrant.svg')}}" alt="Logo de Quadrant Luxury Ocean Living">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header">
                    <div class="offcanvas-title" id="offcanvasNavbarLabel">
                        <img src="{{asset('/img/full-logo-quadrant.svg')}}" alt="Logo de Quadrant Luxury Ocean Living" class="w-100">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                
                <div class="offcanvas-body">

                    @php
                        $route = Route::currentRouteName();
                        $lang = app()->getLocale();
                    @endphp

                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

                        <li class="nav-item me-0 me-lg-4">
                            <a class="nav-link fs-5 @if( strpos($route, 'search') != false) active @endif" href="{{route('pages.search')}}" wire:navigate>{{__('Inventario')}}</a>
                        </li>

                        <li class="nav-item me-0 me-lg-4">
                            <a class="nav-link fs-5 @if( strpos($route, 'lifestyle') != false) active @endif" href="{{route('pages.lifestyle')}}" wire:navigate>{{__('Estilo de vida')}}</a>
                        </li>

                        <li class="nav-item me-0 me-lg-4">
                            <a class="nav-link fs-5 @if( strpos($route, 'contact') != false) active @endif" href="{{ route('pages.contact') }}" wire:navigate>{{__('Contacto')}}</a>
                        </li>

                        <li class="nav-item dropdown me-0 me-lg-4">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa-regular fs-4 fa-circle-user"></i>
                            </a>

                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="#">Action</a></li>
                              <li><a class="dropdown-item" href="#">Another action</a></li>
                            </ul>
                        </li>

                        <li class="nav-item me-0 me-lg-4">
        
                            @if ($lang == 'en')
                                @if($route != 'en.pages.unit' and $route != 'es.livewire.update')
        
                                    <a href="{{$url = route($route, request()->query(), true, 'es')}}" wire:navigate class="d-block align-self-center me-0 me-lg-3 link-light fs-4" title="{{__('Cambiar idioma')}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}">
                                    </a>
                                @else
        
                                    <a class="d-block align-self-center me-0 me-lg-3 link-light fs-4" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.unit', ['name'=>$unit_name, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'es');}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}">
                                    </a>
        
                                @endif
        
                            @else
                                @if($route != 'es.pages.unit' and $route != 'es.livewire.update')
        
                                    <a href="{{$url = route($route, request()->query(), true, 'en')}}" wire:navigate class="d-block align-self-center me-0 me-lg-3 link-light fs-4" title="{{__('Cambiar idioma')}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}">
                                    </a>
        
                                @else
                                    
                                    <a class="d-block align-self-center me-0 me-lg-3 link-light fs-4" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.unit', ['name'=>$unit_name, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'en');}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}">
                                    </a>
        
                                @endif
                            @endif
                        </li>

                    </ul>

                    {{-- Redes sociales solo en móvil --}}
                    <div class="text-center fs-2 d-block d-lg-none mt-4">
                        <a href="https://www.instagram.com/domus_vallarta/" target="_blank" rel="noopener noreferrer" class="text-decoration-none text-blue me-2">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
            
                        <a href="https://www.facebook.com/DomusVallartaInmobiliaria" target="_blank" rel="noopener noreferrer" class="text-decoration-none text-blue">
                            <i class="fa-brands fa-square-facebook"></i>
                        </a>
                    </div>

                </div>

            </div>
        </div>
    </nav>

    @script
        <script>
            const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
            const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
        </script>
    @endscript

</div>