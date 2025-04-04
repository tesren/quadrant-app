<div>
    
    @section('titles')
        <title>{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="{{__('Increíble condominio que fusiona lujo y confort. Con un diseño amplio y contemporáneo, esta propiedad ofrece :bedrooms recámaras, :bathrooms baños, y un total de :area m². Disfruta de asombrosas áreas comunes con espléndidos ambientes, todo en una ubicación exclusiva en Bucerías, Nayarit. Experimenta un estilo de vida costero de primer nivel en Quadrant Luxury Ocean Living.', 
                [
                    'bedrooms' => $unit->unitType->bedrooms,
                    'bathrooms' => $unit->unitType->bathrooms,
                    'area' => $unit->const_total
                ])}}">
    @endsection

    @php
        $type_images = $unit->unitType->getMedia('gallery');
        $unit_images = $unit->getMedia('unitgallery');
        $total_images = count($type_images) + count($unit_images);

        $blueprints = $unit->getMedia('blueprint');

        if( count($blueprints) < 1 ){
            $blueprints = $unit->unitType->getMedia('blueprints');
        }


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
        @if ( count($type_images) > 0 )
            <img src="{{ $type_images[0]->getUrl('large') }}" alt="{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 80vh;" data-fancybox="gallery">

            @for ($i=1; $i < count($type_images); $i++)
                <img src="{{ $type_images[$i]->getUrl('large') }}" alt="{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living" class="d-none" data-fancybox="gallery">
            @endfor
            
        @endif

        @if ( count($unit_images) > 0)

            @foreach ($unit_images as $img)
                <img src="{{ $img->getUrl('large') }}" alt="{{__('Condominio')}} {{$unit->name}} - Quadrant Luxury Ocean Living" class="d-none" data-fancybox="gallery">
            @endforeach
            
        @endif
        

        <a href="#gallery" class="badge bg-white rounded-pill fw-light fs-4 position-absolute start-0 bottom-0 ms-1 ms-lg-5 mb-3 mb-lg-5 text-blue text-decoration-none">
            <i class="fa-regular fa-images"></i> 1/{{ $total_images }}
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
                @if($unit->unitType->flexrooms == 1)

                    {{__('Increíble condominio que fusiona lujo y confort. Con un diseño amplio y contemporáneo, esta propiedad ofrece :bedrooms recámaras + Flex, :bathrooms baños, y un total de :area m². Disfruta de asombrosas áreas comunes con espléndidos ambientes, todo en una ubicación exclusiva en Bucerías, Nayarit. Experimenta un estilo de vida costero de primer nivel en Quadrant Luxury Ocean Living.', 
                    [
                        'bedrooms' => $unit->unitType->bedrooms,
                        'flexrooms' => $unit->unitType->flexrooms,
                        'bathrooms' => $unit->unitType->bathrooms,
                        'area' => $unit->const_total
                    ])}}

                @else

                    {{__('Increíble condominio que fusiona lujo y confort. Con un diseño amplio y contemporáneo, esta propiedad ofrece :bedrooms recámaras, :bathrooms baños, y un total de :area m². Disfruta de asombrosas áreas comunes con espléndidos ambientes, todo en una ubicación exclusiva en Bucerías, Nayarit. Experimenta un estilo de vida costero de primer nivel en Quadrant Luxury Ocean Living.', 
                    [
                        'bedrooms' => $unit->unitType->bedrooms,
                        'bathrooms' => $unit->unitType->bathrooms,
                        'area' => $unit->const_total
                    ])}}
                
                @endif
                
            </p>

            <h2>{{__('Características')}}</h2>

            <div class="row fs-5 fw-light mb-5">

                <div class="col-12 col-lg-3 mb-1">
                    <i class="fa-solid fa-bed"></i> {{$unit->unitType->bedrooms}} {{__('Recámaras')}} @if($unit->unitType->flexrooms == 1) + Flex @endif
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


        <div class="col-12 col-lg-5">
            {{-- Distribución --}}
            
            @if ( count($blueprints) > 0 )
                <h3>{{__('Distribución')}}</h3>
                <img class="w-100 mb-5" src="{{ $blueprints[0]->getUrl('large') }}" alt="Distribución de la unidad {{$unit->name}} de Quadrant Bucerías" data-fancybox="blueprints" loading="lazy">
            @endif

        </div>

        @if ( count($blueprints) > 1 )
            <div class="col-12 col-lg-5 col-xxl-4 align-self-center mb-5" style="background-image: url('{{asset('img/blueprint-bg.webp')}}'); background-repeat: no-repeat; background-position: center; background-size: contain;">
                <img class="w-100" src="{{ $blueprints[1]->getUrl('medium') }}" alt="Planos de la unidad {{$unit->name}} de Quadrant Bucerías" data-fancybox="blueprints" loading="lazy">
            </div>
        @endif


    </div>

    <div class="row justify-content-evenly mb-6">

        {{-- Planes de pago --}}
        @if( $unit->status != 'Vendida' )
            <div class="col-12 col-lg-6 order-2 order-lg-1 px-2 px-lg-0">

                
                <div class="px-0 shadow">

                    <h3 class="fs-4 mb-3 text-center d-block d-lg-none pt-4">{{__('Planes de Pago')}}</h3>

                    <ul class="position-relative nav nav-pills px-3 px-lg-5 pb-4 pt-0 pt-lg-4 justify-content-center justify-content-lg-start z-3" id="pills-tab" role="tablist">
        
                        <li class="me-3 d-none d-lg-flex">
                            <h3 class="fs-4 mb-0 align-self-center">{{__('Planes de Pago')}}</h3>
                        </li>
        
                        @php
                            $i = 0;
                        @endphp
        
                        @foreach ($unit->paymentPlans as $plan)
        
                            <li class="nav-item me-1" role="presentation">
                                <button class="nav-link rounded-pill @if($i==0) active @endif" id="pills-{{$plan->id}}-tab" data-bs-toggle="pill" data-bs-target="#pills-plan-{{$plan->id}}" type="button" role="tab">
                                    @if (app()->getLocale() == 'en')
                                        {{$plan->name_en}}
                                    @else
                                        {{$plan->name}}
                                    @endif
                                </button>
                            </li>
        
                            @php
                                $i++;
                            @endphp
                        @endforeach
                        
                    </ul>
        
                    <div class="tab-content position-relative" id="pills-tabContent">

                        @php $i = 0; @endphp
                        @foreach ($unit->paymentPlans as $plan)
        
                            @php
                                if($plan->discount > 0){
                                    $final_price = $unit->price * ( (100 - $plan->discount)/100 );
                                }else{
                                    $final_price = $unit->price;
                                }
                            @endphp 
        
                            <div class="tab-pane pb-3 fade @if($i==0) show active @endif" id="pills-plan-{{$plan->id}}" role="tabpanel" tabindex="0">
                                
                                <div class="py-4 bg-blue text-center">
                                    <div>{{__('Precio Final')}}</div>
                                    <div class="fs-2">${{ number_format($final_price) }} {{ $unit->currency }}</div>
                                </div>
        
                                @isset($plan->discount)
                                    <div class="d-flex justify-content-between my-3 px-2 px-lg-4 fw-light">
                                        <div class="fs-4">{{__('Precio de lista')}}</div>
                                        <div class="text-decoration-line-through fs-4">${{ number_format($unit->price) }} {{ $unit->currency }}</div>
                                    </div>
                                @endisset
        
                                @isset($plan->discount)
                                    <div class="d-flex justify-content-between mb-3 px-2 px-lg-4 fw-light">
                                        <div class="fs-4">{{__('Descuento')}} ({{$plan->discount}}%)</div>
                                        <div class="fs-4">${{ number_format( $unit->price * ($plan->discount/100) ) }} {{ $unit->currency }}</div>
                                    </div>

                                    <hr class="green-hr">
                                @endisset
        
                                @isset($plan->down_payment)
                                    <div class="d-flex justify-content-between mb-3 px-2 px-lg-4 fw-light">
                                        <div class="fs-4">
                                            {{__('Enganche')}} ({{$plan->down_payment}}%)
                                            <div class="fs-6 fw-light d-none d-lg-block">{{__('A la firma del contrato de promesa de compra-venta')}}.</div>
                                        </div>
                                        <div class="fs-4">${{ number_format( $final_price * ($plan->down_payment/100) ) }} {{ $unit->currency }}</div>
                                    </div>
                                @endisset
        
                                @isset($plan->second_payment)
                                    <div class="d-flex justify-content-between mb-3 px-2 px-lg-4 fw-light">
                                        <div class="fs-4">
                                            {{__('Segundo pago')}} ({{$plan->second_payment}}%)
                                            <div class="fs-6 fw-light d-none d-lg-block">{{__('Sesenta días después del enganche')}}.</div>
                                        </div>
                                        <div class="fs-4">${{ number_format( $final_price * ($plan->second_payment/100) ) }} {{ $unit->currency }}</div>
                                    </div>
                                @endisset
                                
                                @isset($plan->months_percent)
                                    <div class="d-flex justify-content-between mb-3 px-2 px-lg-4 fw-light">
                                        <div class="fs-4">
                                            {{$plan->months_amount}} {{__('Mensualidades')}} ({{$plan->months_percent}}%)
                                            @if ($plan->during_const)
                                                <div class="fs-6 fw-light d-none d-lg-block">{{$plan->months_amount}} {{__('Pagos mensuales durante la construcción')}}.</div>
                                            @endif
                                        </div>
                                        <div class="fs-4">${{ number_format( $final_price * ($plan->months_percent/100) ) }} {{ $unit->currency }}</div>
                                    </div>
                                @endisset
        
                                @isset($plan->closing_payment)
                                    <div class="d-flex justify-content-between px-2 px-lg-4 fw-light">
                                        <div class="fs-4">
                                            {{__('Pago Final')}} ({{$plan->closing_payment}}%)
                                            <div class="fs-6 fw-light d-none d-lg-block">{{__('A la entrega física de la propiedad')}}.</div>
                                        </div>
                                        <div class="fs-4">${{ number_format( $final_price * ($plan->closing_payment/100) ) }} {{ $unit->currency }}</div>
                                    </div>
                                @endisset
        
                            </div>
        
                            @php $i++; @endphp
                        @endforeach
                    </div>
                </div>
                
                <div class="mt-2">
                    <ul class="fs-6 fw-light">

                        @if ($unit->tower->private_presale == 0)
                            <li>
                                {{__('Se requiere un depósito de $200,000 MXN (doscientos mil pesos) para apartar la unidad, los cuales son 100% reembolsables en caso de no proceder con la compra de la unidad.')}}
                            </li>
                        @else
                            <li>
                                {{__('EL PLAN DE PAGO ESPECIAL es válido únicamente durante la preventa privada')}}
                            </li>
                        @endif

                        <li>
                            {{__('El contrato de promesa de compraventa tendrá que firmarse en un plazo máximo de diez días a partir de la firma de la solicitud de compra.')}}
                        </li>

                        <li>
                            {{__('Si no se procede con la compra de la unidad dentro del plazo establecido (firma de contrato y pago de enganche), la unidad quedará disponible.')}}
                        </li>

                        <li>{{__('Precios, descuentos y condiciones de pago sujetos a cambios sin previo aviso.')}}</li>
                    </ul>
                </div>

            </div>
        @endif


        {{-- Ubicación en edificio --}}
        <div class="col-12 col-lg-5 order-1 order-lg-2 mb-5 mb-lg-0">

            <h4>
                <i class="fa-solid fa-location-crosshairs"></i> {{__('Localización')}}
            </h4>

            <div class="position-relative">

                @if ($unit->tower->sections->count() > 0)

                    <img src="{{ asset('media/'.$unit->section->img_path) }}" alt="Localización de la unidad {{$unit->name}} Quadrant" class="w-100 rounded-5">

                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute h-100 start-0 top-0 px-0" viewBox="{{ $unit->section->viewbox }}">
                        <polygon class="poly-location" points="{{$unit->shape->points ?? '0,0'}}"></polygon>
                    </svg>

                @else
                    <img src="{{ asset('media/'.$unit->tower->tower_path) }}" alt="Localización de la unidad {{$unit->name}} Quadrant" class="w-100 rounded-5">
                    
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute h-100 w-100 start-0 top-0 px-0" viewBox="0 0 1068 613">
                        <polygon class="poly-location" points="{{$unit->shape->points ?? '0,0'}}"></polygon>
                    </svg>
                @endif
                
    
            </div>
        </div>
    </div>

    {{-- formulario de contacto --}}
    @if ($unit->tower->private_presale == 0)
        <livewire:contact-form />
    @endif

    @script
        <script>
            Fancybox.bind("[data-fancybox]", {
                // Your custom options
            });
        </script>
    @endscript

</div>