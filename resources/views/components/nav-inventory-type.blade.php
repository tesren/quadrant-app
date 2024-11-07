<div class="row justify-content-between px-2 px-lg-0 pt-4">

    @php
        $current_route = Route::currentRouteName();
        //$menu_towers = App\Models\Tower::all();
    @endphp


    <div class="col-12 col-lg-6 text-start align-self-center px-0">
        <div class="d-flex">
            <a href="{{route('pages.inventory', ['slug'=>'himalia'] )}}" wire:navigate class="btn btn-outline-blue rounded-circle align-self-center me-2 me-lg-3 p-3 @if( strpos($current_route, 'inventory') != false) active @endif" title="{{__('Gráfico')}}">
                <i class="fa-solid fs-5 fa-arrows-to-eye"></i>
            </a>
        
            <a href="{{route('pages.search')}}" wire:navigate class="btn btn-outline-blue rounded-circle align-self-center me-2 me-lg-3 p-3 @if( strpos($current_route, 'search') != false) active @endif" title="{{__('Lista')}}">
                <i class="fa-solid fs-5 fa-list-ul"></i>
            </a>
        
            <p class="align-self-center fs-4 fw-light mb-0">{{__('Cambia el modo de visualización del inventario')}}</p>
        </div>
    </div>

{{--     <div class="col-12 col-lg-6 text-center">
        <p>{{__('Navega entre nuestras torres disponibles')}}</p>

        <div class="rounded-4 overflow-hidden d-flex">
            @foreach ($menu_towers as $tower)

                <div class="py-4 px-5 position-relative" style="background-image:url('{{asset('media/'.$tower->tower_path)}}'); background-repeat: no-repeat; background-position: center; background-size: cover;">
                    <div class="fondo-oscuro"></div>
                    <h2 class="text-white position-relative z-2 mb-0">
                        <span class="fw-light">{{__('Torre')}}</span> 
                        {{$tower->name}}
                    </h2>
                </div>

            @endforeach
        </div>
    </div> --}}

</div>