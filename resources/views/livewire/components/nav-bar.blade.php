<div class="sticky-top">
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
    <nav class="navbar navbar-expand-xxl bg-white">
        <div class="container-fluid">

            <a class="navbar-brand" href="{{route('pages.home', ['contact'=>$contact] )}}" wire:navigate>
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
                        $lang = app()->getLocale();
                    @endphp

                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-0 pe-lg-3">

                        <li class="nav-item d-block d-xxl-none mb-2 mb-xxl-0">
                            <a class="nav-link fs-5 @if( strpos($route, 'home') != false) active @endif" href="{{route('pages.home', ['contact'=>$contact] )}}" wire:navigate>{{__('Inicio')}}</a>
                        </li>

                        @foreach ($towers as $tower)
                            <li class="nav-item mb-2 mb-xxl-0 me-0 me-lg-4">
                                @if ($tower->private_presale == 1)
                                    @auth
                                        <a wire:navigate class="nav-link fs-5 @if( strpos($current_url, $tower->slug) != false) active @endif" href="{{ route('pages.inventory', ['slug' => $tower->slug, 'contact'=>$contact]) }}">{{__('Torre')}} {{$tower->name}} ({{__('Preventa privada')}})</a>
                                    @endauth
                                @else
                                    <a wire:navigate class="nav-link fs-5 @if( strpos($current_url, $tower->slug) != false) active @endif" href="{{ route('pages.inventory', ['slug' => $tower->slug, 'contact'=>$contact]) }}">{{__('Torre')}} {{$tower->name}}</a>
                                @endif
                            </li>
                        @endforeach

                        <li class="nav-item mb-2 mb-xxl-0 me-0 me-lg-4">
                            <a class="nav-link fs-5 @if( strpos($route, 'search') != false) active @endif" wire:navigate href="{{ route('pages.search') }}">{{__('Buscar')}}</a>
                        </li>


                        {{-- @if (count($towers) > 1)
                            <li class="nav-item dropdown me-0 me-lg-4 mb-2 mb-xxl-0">
                                <a class="nav-link dropdown-toggle fs-5" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    {{__('Inventario')}}
                                </a>
                                <ul class="dropdown-menu">
                                    @foreach ($towers as $tower)
                                        <li>
                                            @if ($tower->private_presale == 1)
                                                @auth
                                                    <a wire:navigate class="dropdown-item fw-bold" href="{{ route('pages.inventory', ['slug' => $tower->slug, 'contact'=>$contact]) }}">{{__('Torre')}} {{$tower->name}} ({{__('Preventa privada')}})</a>
                                                @endauth
                                            @else
                                                <a wire:navigate class="dropdown-item" href="{{ route('pages.inventory', ['slug' => $tower->slug, 'contact'=>$contact]) }}">{{__('Torre')}} {{$tower->name}}</a>
                                            @endif
                                        </li>
                                    @endforeach

                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" wire:navigate href="{{ route('pages.search') }}">{{__('Ver todo')}}</a></li>

                                </ul>
                            </li>
                        @else
                            <li class="nav-item me-0 me-lg-4 mb-2 mb-xxl-0">
                                <a class="nav-link fs-5 @if( strpos($route, 'inventory') != false) active @endif" href="{{route('pages.inventory', ['slug'=> 'himalia', 'contact'=>$contact] )}}" wire:navigate>{{__('Inventario')}}</a>
                            </li>
                        @endif --}}


                        <li class="nav-item me-0 me-lg-4 mb-2 mb-xxl-0">
                            <a class="nav-link fs-5 @if( strpos($route, 'lifestyle') != false) active @endif" href="{{route('pages.lifestyle', ['contact'=>$contact] ) }}" wire:navigate>{{__('Estilo de vida')}}</a>
                        </li>

                        @if ( count($const_updates) > 0)
                            <li class="nav-item me-0 me-lg-4 mb-2 mb-xxl-0">
                                <a class="nav-link fs-5 @if( strpos($route, 'construction') != false) active @endif" href="{{route('pages.construction', ['contact'=>$contact]) }}" wire:navigate>{{__('Avances de obra')}}</a>
                            </li>                            
                        @endif


                       @guest
                            @if ($contact != 'no')
                                <li class="nav-item me-0 me-lg-4 mb-2 mb-xxl-0">
                                    <a class="nav-link fs-5 @if( strpos($route, 'contact') != false) active @endif" href="{{ route('pages.contact', ['contact'=>$contact] ) }}" wire:navigate>{{__('Contacto')}}</a>
                                </li>
                            @endif
                       @endguest


                        @guest
                            <li class="nav-item me-0 me-lg-4 align-self-start align-self-xxl-center mb-3 mb-xxl-0">
                                <a class="btn btn-outline-blue" href="{{ route('login', ['contact'=>$contact]) }}" wire:navigate><i class="fa-solid fa-right-to-bracket"></i> {{__('Inicia Sesión')}}</a>
                            </li>

                            {{-- <li class="nav-item me-0 me-lg-4 align-self-start align-self-xxl-center mb-4 mb-xxl-0">
                                <a class="btn btn-blue" href="{{ route('register', ['contact'=>$contact] ) }}" wire:navigate>{{__('Regístrate')}}</a>
                            </li> --}}
                        @endguest

                        @auth
                            <li class="nav-item dropdown me-0 me-lg-4">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa-regular text-blue fs-4 fa-circle-user"></i>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-end">
                                    @if (auth()->user()->role != 'client')
                                        <li><a class="dropdown-item" href="{{ url('nova') }}">{{__('Panel de control')}}</a></li>
                                        
                                    @endif
                                    <li><a class="dropdown-item" wire:navigate href="{{ route('pages.profile', ['contact'=>$contact] ) }}">{{__('Mi Perfil')}}</a></li>
                                    <li><a class="dropdown-item" href="{{route('pages.saved', ['contact'=>$contact] ) }}" wire:navigate>{{__('Unidades Guardadas')}}</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><button class="dropdown-item" wire:click="logout" >{{__('Cerrar sesión')}}</button></li>
                                </ul>
                            </li>
                        @endauth

                        <li class="nav-item me-0 me-lg-4">
        
                            @if ($lang == 'en')
                                @if($route == 'en.pages.unit' )

                                    <a class="d-block align-self-center me-0 me-lg-3 text-blue fs-4 text-decoration-none fw-light" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.unit', ['name'=>$unit_name, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'es');}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}"> <span class="d-inline d-xxl-none fw-light">{{__('Cambiar idioma')}}</span>
                                    </a>

                                @elseif($route == 'en.pages.inventory')

                                    <a class="d-block align-self-center me-0 me-lg-3 text-blue fs-4 text-decoration-none fw-light" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.inventory', ['slug'=>$tower_slug, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'es');}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}"> <span class="d-inline d-xxl-none fw-light">{{__('Cambiar idioma')}}</span>
                                    </a>

                                @else
        
                                    <a href="{{$url = route($route, request()->query(), true, 'es')}}" wire:navigate class="d-block align-self-center me-0 me-lg-3 text-blue fs-4 text-decoration-none fw-light" title="{{__('Cambiar idioma')}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}"> <span class="d-inline d-xxl-none fw-light">{{__('Cambiar idioma')}}</span>
                                    </a>
        
                                @endif
        
                            @else
                                @if($route == 'es.pages.unit' )

                                    <a class="d-block align-self-center me-0 me-lg-3 text-blue fs-4 text-decoration-none fw-light" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.unit', ['name'=>$unit_name, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'en');}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}"> <span class="d-inline d-xxl-none fw-light">{{__('Cambiar idioma')}}</span>
                                    </a>

                                @elseif($route == 'es.pages.inventory')

                                    <a class="d-block align-self-center me-0 me-lg-3 text-blue fs-4 text-decoration-none fw-light" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.inventory', ['slug'=>$tower_slug, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'en');}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}"> <span class="d-inline d-xxl-none fw-light">{{__('Cambiar idioma')}}</span>
                                    </a>

                                @else
                                    
                                    <a href="{{$url = route($route, request()->query(), true, 'en')}}" wire:navigate class="d-block align-self-center me-0 me-lg-3 text-blue fs-4 text-decoration-none fw-light" title="{{__('Cambiar idioma')}}" data-bs-toggle="tooltip" data-bs-title="{{__('Cambiar idioma')}}">
                                        <img width="25px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}"> <span class="d-inline d-xxl-none fw-light">{{__('Cambiar idioma')}}</span>
                                    </a>
        
                                @endif
                            @endif
                        </li>

                    </ul>

                    {{-- Redes sociales solo en móvil --}}
                    <div class="text-center fs-2 d-block d-xxl-none mt-4">
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