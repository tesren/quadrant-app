<div>
    
    @section('titles')
        <title>{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="{{__('Increíble condominio que fusiona lujo, confort y vistas asombrosas. Con un diseño amplio y contemporáneo, esta propiedad ofrece :bedrooms recámaras, :bathrooms baños, y un total de :area m². Disfruta de asombrosas áreas comunes con espléndidos ambientes, todo en una ubicación exclusiva en Bucerías, Nayarit. Experimenta un estilo de vida costero de primer nivel en Quadrant Luxury Ocean Living.', 
                [
                    'bedrooms' => $unit->unitType->bedrooms,
                    'bathrooms' => $unit->unitType->bathrooms,
                    'area' => $unit->const_total
                ])}}">
    @endsection

    @php
        $images = $unit->unitType->getMedia('gallery');

        $blueprints = $unit->unitType->getMedia('blueprints');

        $status_class = $this->unit->status;

        switch ($status_class) {
            case 'Disponible':
                $status_class = 'bg-success';
                break;

            case 'Apartada':
                $status_class = 'bg-warning';
                break;

            case 'Vendida':
                $status_class = 'bg-danger';
                break;
            
            default:
                $status_class = 'bg-success';
                break;
        }
    @endphp


    {{-- Inicio --}}
    <div class="position-relative">
        @if ( count($images) > 0 )
            <img src="{{ $images[0]->getUrl('large') }}" alt="{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 80vh;" data-fancybox="gallery">

            @for ($i=1; $i < count($images); $i++)
                <img src="{{ $images[$i]->getUrl('large') }}" alt="{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living" class="d-none" data-fancybox="gallery">
            @endfor
            
        @endif

        

        <a href="#gallery" class="badge bg-white rounded-pill fw-light fs-4 position-absolute start-0 bottom-0 ms-1 ms-lg-5 mb-3 mb-lg-5 text-blue text-decoration-none">
            <i class="fa-regular fa-images"></i> 1/{{count($images)}}
        </a>

        <img width="50px" src="{{asset('/img/quadrant-logo-icon-white.svg')}}" alt="" class="position-absolute top-0 end-0 m-4 m-lg-5">

        {{-- <img class="position-absolute bottom-0 end-0 separador-" src="{{asset('/img/separador-largo.png')}}" alt=""> --}}

        <div style="background-size: cover; background-image: url('{{asset('/img/separador-largo.png')}}')" class="position-absolute bottom-0 end-0 ps-5 pe-3 pe-lg-4 py-3">
            <a href="#lead_form" class="btn btn-blue fs-5 py-3 px-3 px-lg-4 rounded-4">{{__('¿Necesitas más información?')}}</a>
        </div>
    </div>

    <div class="text-center mt-4 mb-6">
        <a href="#info" class="btn btn-light rounded-pill px-4 fs-5 shadow">
            <i class="fa-regular fa-circle-down"></i> {{__('Ver más')}}
        </a>
    </div>

    {{-- Info general --}}
    <div id="info" class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-6 px-4 px-lg-3">
            <h1>
                {{__('Unidad')}} {{$unit->name}}
                @auth
                    @if ( !null == $unit->users()->wherePivot('unit_id', $unit->id)->wherePivot('user_id', auth()->user()->id)->first() )

                        <button wire:click="removeUnit({{$unit->id}})" class="btn btn-link link-danger fs-3" title="{{__('Quitar de Favoritos')}}">
                            <i class="fa-solid fa-heart"></i>
                        </button>

                    @else

                        <button wire:click="saveUnit({{$unit->id}})" class="btn btn-link link-danger fs-3"  title="{{__('Agregar a Favoritos')}}">
                            <i class="fa-regular fa-heart"></i>
                        </button>

                    @endif
                @endauth
                
            </h1>

            <p class="fw-light fs-5 mb-5">
                {{__('Increíble condominio que fusiona lujo, confort y vistas asombrosas. Con un diseño amplio y contemporáneo, esta propiedad ofrece :bedrooms recámaras, :bathrooms baños, y un total de :area m². Disfruta de asombrosas áreas comunes con espléndidos ambientes, todo en una ubicación exclusiva en Bucerías, Nayarit. Experimenta un estilo de vida costero de primer nivel en Quadrant Luxury Ocean Living.', 
                [
                    'bedrooms' => $unit->unitType->bedrooms,
                    'bathrooms' => $unit->unitType->bathrooms,
                    'area' => $unit->const_total
                ])}}
            </p>

            <h2>{{__('Características')}}</h2>

            <div class="row fs-5 fw-light mb-5">

                <div class="col-12 col-lg-3 mb-1">
                    <i class="fa-solid fa-bed"></i> {{$unit->unitType->bedrooms}} {{__('Recámaras')}}
                </div>

                <div class="col-12 col-lg-3 mb-1 col-xxl-2">
                    <i class="fa-solid fa-bath"></i> {{$unit->unitType->bathrooms}} {{__('Baños')}}
                </div>

                <div class="col-12 col-lg-3 mb-1 col-xxl-2">
                    <i class="fa-solid fa-turn-up"></i> {{__('Piso')}} {{$unit->floor}}
                </div>

                <div class="col-12 col-lg-3 mb-1">
                    <i class="fa-solid fa-building"></i> {{__('Torre')}} {{$unit->tower->name}}
                </div>

            </div>

            <h2 class="fs-5 text-yellow">{{__('Dimensiones')}}</h2>

            <div class="row mb-5 fw-light fs-5">
                <div class="col-12 col-lg-3 mb-1">
                    <i class="fa-solid fa-ruler-combined"></i> Interior: {{$unit->interior_const}} {{__('m²')}}
                </div>

                <div class="col-12 col-lg-3 mb-1">
                    <i class="fa-solid fa-maximize"></i> Exterior: {{$unit->exterior_const}} {{__('m²')}}
                </div>

                <div class="col-12 col-lg-3">
                    <i class="fa-solid fa-house"></i> Total: {{$unit->const_total}} {{__('m²')}}
                </div>
            </div>

        </div>

        <div class="col-12 col-lg-5 col-xxl-4 align-self-center text-center text-lg-start">

            @if ($unit->status == 'Disponible')
                <div class="badge {{$status_class}} fs-5 fw-light rounded-pill mb-3">
                    {{__($unit->status)}}
                </div>
                <div class="fs-1 mb-1 lh-1">${{number_format($unit->price)}} {{$unit->currency}}</div>
            @else
                <div class="badge {{$status_class}} fs-3 fw-light rounded-pill mb-3">
                    {{__('Unidad')}} {{__($unit->status)}}
                </div>
            @endif

            <div class="text-yellow fs-4 fw-light mb-6">{{__('Unidad tipo:')}} {{$unit->unitType->name}}</div>
        </div>

    </div>

    {{-- Planos --}}
    <div class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-5 col-xxl-4 align-self-center mb-5" style="background-image: url('{{asset('img/blueprint-bg.webp')}}'); background-repeat: no-repeat; background-position: center; background-size: contain;">
            @if ( count($blueprints) > 0 )
                <img class="w-100" src="{{ $blueprints[1]->getUrl('medium') }}" alt="Planos de la unidad {{$unit->name}} de Quadrant Bucerías" data-fancybox="blueprints" loading="lazy">
            @endif
        </div>

        <div class="col-12 col-lg-5">
            {{-- Distribución --}}
            
            @if ( count($blueprints) > 0 )
                <h3>{{__('Distribución')}}</h3>
                <img class="w-100 mb-5" src="{{ $blueprints[0]->getUrl('medium') }}" alt="Distribución de la unidad {{$unit->name}} de Quadrant Bucerías" data-fancybox="blueprints" loading="lazy">
            @endif

            <div class="position-relative">

                <div class="position-absolute top-0 start-0 fs-4 fw-light mt-1 mt-lg-3 ms-0 ms-lg-4 ">
                    <i class="fa-solid fa-location-crosshairs"></i> {{__('Localización')}}
                </div>

                <img src="{{asset('/img/himalia-tower.webp')}}" alt="Localización de la unidad {{$unit->name}} Quadrant" class="w-100 rounded-5">

                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute h-100 start-0 top-0 px-0" viewBox="0 0 1068.67 613.56">
                    <polygon class="poly-location" points="{{$unit->shape->points ?? '0,0'}}"></polygon>
                </svg>

            </div>

        </div>

    </div>

    {{-- formulario de contacto --}}
    <livewire:contact-form />

    @script
        <script>
            Fancybox.bind("[data-fancybox]", {
                // Your custom options
            });
        </script>
    @endscript

</div>