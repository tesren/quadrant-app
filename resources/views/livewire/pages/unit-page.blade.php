<div>
    
    @section('titles')
        <title>{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="">
    @endsection

    @php
        $images = $unit->unitType->getMedia('gallery');

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
        <img src="{{ $images[0]->getUrl('large') }}" alt="{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 80vh;">


        <div class="badge bg-white rounded-pill fw-light fs-4 position-absolute start-0 bottom-0 ms-5 mb-5 text-blue">
            <i class="fa-regular fa-images"></i> 1/{{count($images)}}
        </div>

        <img width="50px" src="{{asset('/img/quadrant-logo-icon-white.svg')}}" alt="" class="position-absolute top-0 end-0 m-4 m-lg-5">

        {{-- <img class="position-absolute bottom-0 end-0 separador-" src="{{asset('/img/separador-largo.png')}}" alt=""> --}}

        <div style="background-size: cover; background-image: url('{{asset('/img/separador-largo.png')}}')" class="position-absolute bottom-0 end-0 ps-5 pe-4 py-3">
            <a href="#lead_form" class="btn btn-blue fs-5 py-3 px-4 rounded-4">{{__('¿Necesitas más información?')}}</a>
        </div>
    </div>

    <div class="text-center mt-4 mb-6">
        <a href="#info" class="btn btn-light rounded-pill px-4 fs-5 shadow">
            <i class="fa-regular fa-circle-down"></i> {{__('Ver más')}}
        </a>
    </div>

    {{-- Info general --}}
    <div id="info" class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-6">
            <h1>{{__('Unidad')}} {{$unit->name}}</h1>

            <p class="fw-light fs-5">
                {{__('Increíble condominio que fusiona lujo, confort y vistas asombrosas. Con un diseño amplio y contemporáneo, esta propiedad ofrece :bedrooms recámaras, :bathrooms baños, y un total de :area m². Disfruta de asombrosas áreas comunes con espléndidos ambientes, todo en una ubicación exclusiva en Bucerías, Nayarit. Experimenta un estilo de vida costero de primer nivel en Quadrant Luxury Ocean Living.', 
                [
                    'bedrooms' => $unit->unitType->bedrooms,
                    'bathrooms' => $unit->unitType->bathrooms,
                    'area' => $unit->const_total
                ])}}
            </p>
        </div>

        <div class="col-12 col-lg-4 col-xxl-3 align-self-center">
            <div class="badge {{$status_class}} fs-5 fw-light rounded-pill mb-3">
                {{$unit->status}}
            </div>

            <div class="fs-1 mb-1 lh-1">${{number_format($unit->price)}} {{$unit->currency}}</div>
            <div class="text-yellow fs-4 fw-light">{{__('Unidad tipo:')}} {{$unit->unitType->name}}</div>
        </div>

    </div>

</div>
