<div>

    @section('titles')
        <title>{{__('Inventario')}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="{{__('Explora el inventario de Quadrant Luxury Ocean Living en Bucerías. Visualiza condominios disponibles de forma gráfica y filtra por precio, recámaras y más para encontrar tu hogar ideal en Bucerías Nayarit.')}}">
    @endsection 

    {{-- Inicio --}}
    <div class="position-relative mb-5">

        <div class="position-absolute bottom-0 start-0 row justify-content-center justify-content-lg-start">

            <div class="col-12 col-lg-8 col-xxl-6 px-0 position-relative">
                <img class="px-0 w-100" src="{{asset('img/bg-white-home.webp')}}" alt="" style="min-height: 160px; transform: scaleY(-1);">

                <div class="position-absolute start-0 top-0 pt-3 ps-3 pt-lg-5 ps-lg-5 w-100">
                    <h1>
                        <span class="fs-5">{{__('Torre')}}</span>
                        {{$tower->name}} <i class="fa-solid fa-building"></i>
                    </h1>


                    @guest
                        <div class="fs-3 mb-2 lh-1 col-11 d-none d-lg-block">{{__('Todas las comodidades en un solo lugar')}}</div>
                        <p class="fs-5 fw-light col-9 col-lg-11">{{__('Selecciona las características de la unidad que deseas y comprueba disponibilidad')}}</p>
                    @endguest

                    @auth
                        <div class="fs-3 mb-2 lh-1 col-11 d-none d-lg-block">{{__('Bienvenido a la preventa privada')}}</div>
                        <p class="fs-5 fw-light col-9 col-lg-11">{{__('Selecciona una de las unidades para ver más información sobre ella')}}</p>
                    @endauth

                    <div class="d-flex mb-5 fs-3 fw-light">
                        <div class="me-3 me-lg-4">
                            <i class="fa-solid text-success fa-square"></i> {{__('Disponible')}}
                        </div>
        
                        <div class="me-3 me-lg-4">
                            <i class="fa-solid text-warning fa-square"></i> {{__('Apartado')}}
                        </div>
        
                        <div>
                            <i class="fa-solid text-danger fa-square"></i> {{__('Vendido')}}
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <img src="{{asset('/img/inventory-protrait.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 40vh;">

    </div>

    {{-- Inventario --}}
    <div class="container px-0 mb-6">

        
        {{-- Navegación entre tipos --}}
        @include('components.nav-inventory-type')

        {{-- Formulario de búsqueda --}}
        <div class="col-12 px-2 px-lg-0 mt-4">
            <form wire:submit="search">

                <div class="rounded-2 input-group shadow-4" id="search_input_group">
                            
                    <div class="form-floating mb-3 mb-lg-0">
    
                        <select class="form-select" id="floor" wire:model="floor" aria-label="{{__('Piso')}}">
                        <option value="0">{{__('Cualquier piso')}}</option>
    
                        @for ($i=1; $i<=5; $i++)
                            <option value="{{$i}}">{{$i}}</option>
                        @endfor
                        <option value="10">PH</option>
    
                        </select>
    
                        <label for="floor">{{__('Piso')}}</label>
                    </div>
    
                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="bedrooms" wire:model="bedrooms" aria-label="{{__('Recámaras')}}">
                        <option value="0">{{__('Cualquier cantidad')}}</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        </select>
                        <label for="bedrooms">{{__('Recámaras')}}</label>
                    </div>

                    {{-- <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="unit_type" wire:model="unit_type" aria-label="{{__('Tipo')}}">
                            <option value="0">{{__('Cualquier tipo')}}</option>

                            @foreach ($unit_types as $type)
                            
                                @php
                                    $units_by_type = App\Models\Unit::where('unit_type_id', $type->id)->where('status', '!=', 'Vendida')->get();
                                @endphp

                                @if ( count($units_by_type) > 0)
                                    <option value="{{$type->id}}">{{ $type->name }}</option>
                                @endif

                            @endforeach
                            
                        </select>
                        <label for="unit_type">{{__('Tipo')}}</label>
                    </div> --}}
    
                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="min_price" wire:model="min_price" aria-label="{{__('Precio min.')}}">
                            <option value="1">{{__('Sin mínimo')}}</option>
                            @php
                                $minPriceStart = 6000000;
                                $maxPrice = 11000000;
                            @endphp
                            @for($price = $minPriceStart; $price <= $maxPrice; $price += 1000000)
                                <option value="{{ $price }}">${{ number_format($price / 1000000) }}m</option>
                            @endfor
                        </select>
                        <label for="min_price">{{__('Precio min.')}}</label>
                    </div>
                    
                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="max_price" wire:model="max_price" aria-label="{{__('Precio max.')}}">
                            <option value="9999999999">{{__('Sin máximo')}}</option>
                            @php
                                $maxPriceStart = 7000000;
                                $maxPrice = 13000000;
                            @endphp
                            @for($price = $maxPriceStart; $price <= $maxPrice; $price += 1000000)
                                <option  value="{{ $price }}">${{ number_format($price / 1000000) }}m</option>
                            @endfor
                        </select>
                        <label for="max_price">{{__('Precio max.')}}</label>
                    </div>
                    
    
                    <button type="submit" class="btn btn-blue rounded-end-2 col-12 col-lg-1" aria-label="{{__('Buscar')}}">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>

                </div>
            </form>
        </div>

        {{-- Secciones en caso de haber --}}
        @if ( $tower->sections->count() > 0 )
        
            <div class="fs-4 mt-5 mb-2 text-center">{{__('Secciones de la Torre')}} {{$tower->name}}</div>

            <ul class="nav nav-pills mb-5 justify-content-center" id="pills-tab" role="tablist">
                @foreach ($tower->sections as $section)
                    <li class="nav-item" role="presentation">
                        <button 
                            class="nav-link @if($activeSection == $section->id) active @endif me-2" 
                            id="pills-{{$section->id}}-tab" 
                            data-bs-toggle="pill" 
                            data-bs-target="#pills-{{$section->id}}" 
                            type="button" 
                            role="tab" 
                            aria-controls="pills-{{$section->id}}"
                            wire:click="setActiveSection({{$section->id}})"
                        >
                            {{$section->name}}
                        </button>
                    </li>
                @endforeach
            </ul>

        @endif

        @if ( $tower->sections->count() > 0 )

            <div class="tab-content" id="pills-tabContent">
                

                @foreach ($tower->sections as $section)
                    
                    <div class="tab-pane fade @if($activeSection == $section->id) show active @endif" id="pills-{{$section->id}}" role="tabpanel" aria-labelledby="pills-{{$section->id}}-tab" tabindex="0">
                        <div class="rounded-4 overflow-hidden position-relative">
                            <img src="{{asset('media/'.$section->img_path )}}" alt="{{__('Inventario')}} {{__('Torre')}} {{$tower->name}}" class="w-100">
                    
                            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute start-0 top-0 px-0" viewBox="{{$section->viewbox}}">
                                
                                @php
                                    $section_units = $section->units;
                                    $searched_units = $units;

                                    $intersected_units = $section_units->intersect($searched_units);
                                @endphp
                    
                                @foreach ($intersected_units as $unit)
                    
                                    <a wire:navigate class="text-decoration-none link-light {{ strtolower($unit->status) }}-class @if($unit->status=='Bloqueada') disabled @endif" @if($unit->status != 'Bloqueada') href="{{route('pages.unit', array_merge(['name' => $unit->name], request()->query()) ) }}" @endif @if($unit->status=='Bloqueada') role="button" aria-disabled="true" @endif>
                                        <polygon class="" points="{{$unit->shape->points ?? '0,0'}}">    
                                        </polygon>
                                        
                                        <text x="{{$unit->shape->text_x ?? '0'}}" y="{{$unit->shape->text_y ?? '0' }}"
                                            font-size="36" fill="#fff" class="fw-light">
                    
                                            <tspan class="fw-normal">{{$unit->name}}</tspan>
                                            
                                        </text>
                                    </a>   
                                    
                                @endforeach
            
                            </svg>
                        </div>
                    </div>

                @endforeach

            </div>
            
        @else
            <div class="rounded-4 overflow-hidden position-relative">
                <img src="{{asset('media/'.$tower->tower_path )}}" alt="{{__('Inventario')}} {{__('Torre')}} {{$tower->name}}" class="w-100">
        
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute start-0 top-0 px-0" viewBox="{{$tower->viewbox}}">
        
                    @foreach ($units as $unit)
        
                        <a wire:navigate class="text-decoration-none link-light {{ strtolower($unit->status) }}-class @if($unit->status=='Bloqueada') disabled @endif" @if($unit->status != 'Bloqueada') href="{{route('pages.unit', array_merge(['name' => $unit->name], request()->query()) ) }}" @endif @if($unit->status=='Bloqueada') role="button" aria-disabled="true" @endif>
                            <polygon class="" points="{{$unit->shape->points ?? '0,0'}}">    
                            </polygon>
                            
                            <text x="{{$unit->shape->text_x ?? '0'}}" y="{{$unit->shape->text_y ?? '0' }}"
                                font-size="26" fill="#fff" class="fw-light">
        
                                <tspan class="fw-normal">{{$unit->name}}</tspan>
                                
                            </text>
                        </a>   
                        
                    @endforeach

                    @if($tower->id == 1 and $showingUnits == false)
                        <polygon class="vendida-himalia" points="208.73 155.1 572.71 137.54 572.71 201.05 741 198.45 741 128.57 837.33 123.78 837.33 128.57 1008.5 120.44 1008.5 331.84 912.93 328.84 912.93 463.54 836.67 467.2 741 470.37 741 327.84 572.71 328.84 572.71 466.7 408.94 466.21 408.94 380.61 487.03 380.61 487.03 210.21 331.56 210.27 332.51 270.51 408.94 268.51 408.94 380.61 266.05 379.42 266.05 273.4 208.73 275.24 208.73 155.1"/>
                    @endif

                </svg>
            </div>
        @endif

        @auth
            <div class="text-center text-lg-start">
                <button type="button" wire:click='showSavedUnits' class="btn btn-blue rounded-pill my-4 fs-5 fw-light px-5">
                    <i class="fa-solid fa-circle-notch me-1 fa-spin" wire:loading></i>
                    {{__($buttonText)}}
                </button>
            </div>
        @endauth

    </div>

    {{-- Formulario --}}
    @if ($tower->private_presale == 0)
        <livewire:contact-form>
    @endif

    @script
        <script>
            const form_inputs = document.getElementById('search_input_group');

            if(form_inputs){

                if (window.innerWidth <= 768) {
                    // Código a ejecutar solo en dispositivos móviles (ancho menor o igual a 768px)
                    form_inputs.classList.remove('input-group');
                    form_inputs.classList.remove('shadow');
                }else{
                    form_inputs.classList.add('input-group');
                    form_inputs.classList.add('shadow');
                }

            }
        </script>
    @endscript

</div>
