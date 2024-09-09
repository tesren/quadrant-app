<div>
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
    <nav class="navbar navbar-expand-xl bg-white sticky-top shadow">
        <div class="container-fluid">

            <a class="navbar-brand" href="{{route('pages.home')}}" wire:navigate>
                <img width="250px" src="{{asset('/img/full-logo-quadrant.svg')}}" alt="Logo de Quadrant Luxury Ocean Living">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header">
                    <div class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</div>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                
                <div class="offcanvas-body">

                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

                        <li class="nav-item me-0 me-lg-4">
                            <a class="nav-link fs-5" href="#" wire:navigate>{{__('Inventario')}}</a>
                        </li>

                        <li class="nav-item me-0 me-lg-4">
                            <a class="nav-link fs-5" href="#" wire:navigate>{{__('Estilo de vida')}}</a>
                        </li>

                        <li class="nav-item me-0 me-lg-4">
                            <a class="nav-link fs-5" href="#" wire:navigate>{{__('Contacto')}}</a>
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

                    </ul>

                </div>

            </div>
        </div>
    </nav>

</div>