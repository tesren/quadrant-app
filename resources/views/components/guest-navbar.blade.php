<header class="bg-white py-3">

    @php
        $route = Route::currentRouteName();
    @endphp

    <div class="mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex h-16 items-center justify-between">

        <div class="flex-1 md:flex md:items-center md:gap-12">
            <a class="block text-teal-600" href="{{route('pages.home', request()->query() )}}">
                <img width="250px" src="{{asset('/img/full-logo-quadrant.svg')}}" alt="Logo de Quadrant Luxury Ocean Living">
            </a>
        </div>
  
        <div class="md:flex md:items-center md:gap-12">
            <nav aria-label="Global" class="hidden md:block">
                <ul class="flex items-center gap-6 text-lg font-light">

                    <li>
                        <a class="text-sky-900 transition hover:text-sky-700/75" href="{{route('pages.search', request()->query() )}}"> {{__('Inventario')}} </a>
                    </li>

                    <li>
                        <a class="text-gray-500 transition hover:text-gray-500/75" href="{{route('pages.lifestyle', request()->query() )}}"> {{__('Estilo de vida')}} </a>
                    </li>

                    <li>
                        <a class="text-gray-500 transition hover:text-gray-500/75" href="{{route('pages.contact', request()->query() )}}"> {{__('Contacto')}} </a>
                    </li>

                    <li>
                        @if (app()->getLocale() == 'es')

                            <a href="{{$url = route($route, request()->query(), true, 'en')}}" wire:navigate class="me-0" title="{{__('Cambiar idioma')}}" >
                                <img width="20px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}">
                            </a>

                        @else
                            <a href="{{$url = route($route, request()->query(), true, 'es')}}" wire:navigate class="me-0" title="{{__('Cambiar idioma')}}" >
                                <img width="20px" src="{{asset('/img/lang-icon.svg')}}" alt="{{__('Cambiar idioma')}}">
                            </a>
                        @endif
                    </li>

                </ul>
            </nav>
            
            <div class="flex items-center gap-4">
                <div class="sm:flex sm:gap-4">

                  <a class="rounded-md px-5 py-2.5 text-sm font-medium btn-outline-blue shadow" wire:navigate href="{{route('login', request()->query() )}}">
                    {{__('Inicia sesión')}}
                  </a>
      
                  <div class="hidden sm:flex">
                    {{-- <a class="rounded-md px-5 py-2.5 text-sm font-medium btn-blue" wire:navigate href="{{route('register', request()->query() )}}">
                      {{__('Regístrate')}}
                    </a> --}}
                  </div>

                </div>
  
            <div class="flex items-center gap-4">
                <div class="block md:hidden">
                    <button class="rounded bg-gray-100 p-2 text-gray-600 transition hover:text-gray-600/75">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="size-5"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                        stroke-width="2"
                    >
                        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                    </button>
                </div>
            </div>

        </div>
      </div>
    </div>
</header>