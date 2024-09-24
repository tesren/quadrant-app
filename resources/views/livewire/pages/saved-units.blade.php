<div>
    {{-- Close your eyes. Count to one. That is how long forever feels. --}}
    @section('titles')
        <title>{{__('Unidades Guardadas')}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="{{__('Unidades guardadas de Quadrant del usuario')}}">
    @endsection 

    @php
        $user = auth()->user();
        $url = Gravatar::fallback('https://www.gravatar.com/avatar/de7554e3560de602155ce77b2eef85cb?s=300')->get($user->email, ['size'=>500]);
    @endphp


    {{-- Inicio --}}
    <div class="position-relative mb-6">

        <div class="position-absolute bottom-0 start-0 row justify-content-center justify-content-lg-start">

            <div class="col-12 col-lg-8 col-xxl-6 px-0 position-relative">
                <img class="px-0 w-100" src="{{asset('img/bg-white-home.webp')}}" alt="" style="min-height: 160px; transform: scaleY(-1);">

                <div class="position-absolute start-0 top-0 pt-3 ps-3 pt-lg-5 ps-lg-5 w-100">
                    
                    <div class="d-flex">
                        <img width="160px" src="{{$url}}" alt="Profile picture" class="rounded-circle me-4">

                        <div class="align-self-center me-4">
                            <div class="fs-2">{{$user->name}}</div>
                            <div class="fs-4 text-yellow">{{$user->email}}</div>
                        </div>

                        <div class="align-self-center">
                            <a href="{{route('pages.profile')}}" class="text-blue text-decoration-none" aria-label="Config">
                                <i class="fa-solid fa-2x fa-gear"></i>
                            </a>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <img src="{{asset('img/inventory-img.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 33vh;">

    </div>

    {{-- Unidades --}}
    <div class="container mb-6 mt-5" style="min-height: 50vh;">

        @if ($units->isNotEmpty())

            <div class="row justify-content-center">

                <div class="col-12 col-lg-9">
                    <h1>{{__('Unidades Guardadas')}}</h1>
                    <p class="fs-5">{{__('Haga clic en las tarjetas para ver más información sobre la unidad.')}}</p>        
                </div>

                <div class="col-12 col-lg-3 align-self-center">
                    <div class="text-center my-5">
                        <a href="{{route('pages.search')}}" class="btn btn-outline-blue rounded-pill fs-5" wire:navigate>
                            <i class="fa-regular fa-building"></i> {{__('Ver todo el inventario')}}
                        </a>    
                    </div>
                </div>

            </div>

            @foreach ($units as $unit)

                @php
                    $gallery = $unit->unitType->getMedia('gallery');

                    if($unit->status == 'Disponible'){
                        $badgeBg = 'bg-success';
                    }elseif($unit->status == 'Apartada'){
                        $badgeBg = 'bg-warning';
                    }
                    else{
                        $badgeBg = 'bg-danger';
                    }
                @endphp

                <div class="card border border-1 border-dark mb-4 rounded-5 overflow-hidden">

                    <div class="position-absolute top-0 end-0 m-3 d-flex justify-content-start justify-content-lg-end">
                        <div class="badge {{$badgeBg}} rounded-pill mb-2 fs-5 fw-light align-self-center">
                            {{__($unit->status)}}
                        </div>
            
                        <div class="">
                            <button wire:click="removeUnit({{$unit->id}})" class="btn btn-link link-danger fs-4" title="{{__('Quitar de Favoritos')}}">
                                <i class="fa-solid fa-heart"></i>
                            </button>
                        </div>
                    </div>

                    <a href="{{ route('pages.unit', ['name' => $unit->name ]) }}" class="row g-0 text-decoration-none" wire:navigate>

                        <div class="col-lg-3 p-0">
                            @if ( isset($gallery[0]) )
                                <img src="{{ $gallery[0]->getUrl('medium') }}" class="h-100 w-100 object-fit-cover" alt="Planos de la unidad {{$unit->name}} de Espacio Marina">
                            @endif
                        </div>

                        <div class="col-lg-9 border-1 border-dark ps-2 ps-lg-3">

                            <div class="card-body text-blue">

                                <h2 class="card-title mb-0">{{__('Unidad')}} {{$unit->name}}</h2>

                                <div class="fs-1 fw-bold mb-0">
                                    @if ($unit->price != 0 and $unit->status == 'Disponible')
                                        ${{ number_format($unit->price) }} {{$unit->currency}}       
                                    @endif
                                </div>

                                <hr class="col-1 blue-hr mt-1">

                                <div class="fs-4 fw-light text-yellow mb-1">{{__('Tipo')}} {{$unit->unitType->name}}</div>

                                <div class="d-flex justify-content-center justify-content-lg-start mb-4 fs-5 fw-light">

                                    <div>
                                        <i class="fa-solid fa-bed"></i> {{$unit->unitType->bedrooms}} <span class="d-none d-lg-inline fw-light">{{__('Recámaras')}}</span>
                                    </div>
                    
                                    <div class="mx-3">
                                        <i class="fa-solid fa-bath"></i> {{$unit->unitType->bathrooms}} <span class="d-none d-lg-inline fw-light">{{__('Baños')}}</span>
                                    </div>
                    
                                    <div>
                                        <i class="fa-solid fa-house-chimney"></i> {{__('Total')}}: {{$unit->const_total}} {{__('m²')}}
                                    </div>
                    
                                </div>

                                

                            </div>
                        </div>
                    </a>
                </div>
                
            @endforeach

        @else

            <h1>{{__('Aún no tienes unidades guardadas')}}</h1>
            <p>{{__('Visita nuestro inventario para ver todas las unidades')}}</p>
            <a href="{{route('pages.search')}}" class="btn btn-blue mb-6" wire:navigate>
                {{__('Ver Inventario')}}
            </a>

        @endif

    </div>


    {{-- Formulario de contacto --}}
    <livewire:contact-form />

</div>
