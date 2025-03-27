<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}
    @section('titles')
        <title>Quadrant Luxury Ocean Living - {{ __('Condominios en venta en Bucerías, Nayarit') }}</title>
        <meta name="description" content="{{__('Descubre Quadrant Luxury Ocean Living en Bucerías, Nayarit. Condominios de entrega inmediata en un desarrollo exclusivo de 34,979.73 m², con edificios de lujo, elevadores y 19,043.06 m² dedicados a áreas comunes. Vive a unas cuadras de la playa y disfruta de un estilo de vida excepcional.')}}">
    @endsection 


    {{-- Inicio --}}
    <div class="position-relative mb-6">

        <div class="fondo-oscuro"></div>

        <div class="row position-absolute justify-content-center top-0 start-0 h-100 z-3">
            
            <div class="col-12 col-lg-6 col-xxl-5 text-center align-self-center text-white">

                <img class="mx-auto d-block col-10 col-lg-7 mb-2" src="{{asset('img/logo-quadrant-white.svg')}}" alt="Logo de Quadrant Luxury Ocean Living">
                <h1 class="fs-1 mb-4">{{__('Torre')}} Elara</h1>
                <div class="fs-1 mb-4">
                    <p class="mb-0">{{__('¡Nueva torre en preventa!')}}</p>
                    <p>{{__('Precios desde')}} ${{ number_format($lowest_unit->price) }} {{$lowest_unit->currency}}</p>
                </div>

                <a href="{{ route('pages.inventory', ['slug' => 'elara', 'contact'=>$contact] ) }}" class="btn btn-light rounded-pill px-5 fw-bold fs-5">
                    <i class="fa-solid fa-building"></i> {{__('Ver inventario')}}
                </a>
            </div>

        </div>

        <picture>
            {{-- Imagen para pantallas de escritorio --}}
            <source media="(min-width: 768px)" srcset="{{asset('/img/new-home-quadrant.webp')}}">

            {{-- Imagen para pantallas de teléfono --}}
            <source media="(max-width: 767px)" srcset="{{asset('/img/home-gallery/common-areas-1.webp')}}">
            

            <img src="{{asset('/img/new-home-quadrant.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover home-img">
        </picture>

        <div class="position-absolute bottom-0 start-0 mb-5 ms-5 d-none d-lg-block z-3">
            <a href="#info" class="btn btn-light rounded-pill px-4 fs-5 shadow">
                <i class="fa-regular fa-circle-down"></i> {{__('Ver más')}}
            </a>
        </div>

        {{-- <img class="position-absolute px-0 end-0 bottom-0" width="150px" src="{{asset('/img/whatsapp-bg-white.webp')}}" alt=""> --}}
    </div>

    <div class="text-center mb-6 d-block d-lg-none">
        <a href="{{route('pages.search', request()->query() )}}" wire:navigate class="btn btn-light rounded-pill px-4 px-lg-5 fs-5 shadow">
            <i class="fa-solid fa-building"></i> {{__('Ver Inventario')}}
        </a>
    </div>

    {{-- Info general --}}
    <div class="row justify-content-evenly mb-6" id="info">

        <div class="col-12 col-lg-6 col-xxl-4 align-self-center position-relative mb-4 mb-lg-0">
            <img src="{{asset('/img/bucerias-nayarit.webp')}}" alt="Bucerías, Nayarit" class="w-100" loading="lazy">
            <h2 class="position-absolute top-0 end-0 fs-5 pt-2 pt-lg-3 pe-4"><i class="fa-solid fa-location-dot"></i> Bucerías<span class="d-none d-lg-inline">, Nayarit</span></h2>
        </div>

        <div class="col-12 col-lg-5 align-self-center">
            <h2 class="mb-3">
                <div class="mb-3">{{__('Un mágico corredor a lo largo de la costa del océano Pacífico que baña el estado de Nayarit.')}}</div>
                <div class="fs-4">{{__('¿Conoces todo lo que Bucerías tiene para ofrecerte?')}}</div>
            </h2>

            <p class="fs-5 fw-light">{{__('El municipio de Bahía de Banderas - a sólo 25 minutos del Aeropuerto Internacional de Puerto Vallarta - es un lugar de privilegio para el gran turismo, con conglomerados de playa de fama mundial. Entre sus hermosas maravillas naturales y la cálida acogida de sus pobladores, que generosamente ofrecen sus alegres tradiciones a locales y a visitantes.')}}</p>
        </div>

    </div>

    {{-- Galeria Quadrant --}}
    <div class="row justify-content-center mb-6">

        <div class="col-12 col-lg-11 col-xxl-10 position-relative">
            <a href="#gallery-1" class="text-decoration-none">
                <picture>
                    <!-- Imagen para pantallas de escritorio -->
                    <source media="(min-width: 768px)" srcset="{{asset('/img/gallery-desktop-new.webp')}}">
                  
                    <!-- Imagen para pantallas de teléfono -->
                    <source media="(max-width: 767px)" srcset="{{asset('/img/gallery-mobile-new.webp')}}">
                  
                    <!-- Fallback para navegadores que no soportan <picture> -->
                    <img src="{{asset('/img/gallery-desktop-new.webp')}}" alt="Quadrant luxury ocean living" class="w-100" loading="lazy">
                </picture>
            </a>


            <a href="#gallery-1" class="btn btn-blue fs-4 position-absolute bottom-0 end-0 rounded-4 py-2 px-5 px-md-2 px-xxl-4 me-3"><i class="fa-solid fa-image"></i> {{__('Galería')}}</a>
        </div>
     
        @for ($i=1; $i<17; $i++)
            <img src="{{asset('/img/home-gallery/common-areas-'.$i.'.webp')}}" alt="{{__('Galería')}} Quadrant Luxury Ocean Living" class="d-none" data-fancybox="gallery" loading="lazy">
        @endfor

    </div>

    {{-- Recorrido virtual Unidad modelo --}}
    <div class="row justify-content-center mb-6 py-5 bg-blue-gradient">

        <div class="col-12 col-lg-5 pe-2 pe-lg-5 align-self-center text-center text-lg-start mb-4 mb-lg-0">
            <h3 class="fs-1 mb-1">{{__('Unidad modelo')}}</h3>
            <div class="fs-4 fw-light mb-2">{{__('Descubre la esencia de vivir en Quadrant')}}</div>
            <p class="fs-5 fw-light mb-4 text-start">
                {{__('Déjate sorprender por cada detalle de nuestra unidad modelo, diseñada para ofrecer confort, estilo y funcionalidad en perfecta armonía con el estilo de vida en la costa. Haz clic en la galería de imágenes o sumérgete en el tour virtual para recorrerla a tu ritmo como si ya estuvieras ahí.')}}
            </p>
        </div>

        <div class="col-12 col-lg-5">

            <ul class="nav nav-tabs border-bottom-0" id="quadrantTab" role="tablist">

                <li class="nav-item me-1" role="presentation">
                    <button class="nav-link active fs-5" id="gallery-tab" data-bs-toggle="tab" data-bs-target="#gallery-tab-pane" type="button" role="tab" aria-controls="gallery-tab-pane" aria-selected="true">
                        {{__('Galería')}}
                    </button>
                </li>
                
                <li class="nav-item" role="presentation">
                    <button class="nav-link fs-5" id="tour-tab" data-bs-toggle="tab" data-bs-target="#tour-tab-pane" type="button" role="tab" aria-controls="tour-tab-pane" aria-selected="false">
                        {{__('Tour Virtual')}}
                    </button>
                </li>

            </ul>

            <div class="tab-content" id="quadrantTabContent">

                <div class="tab-pane fade show active rounded-end-3 rounded-bottom-3 overflow-hidden shadow" id="gallery-tab-pane" role="tabpanel" aria-labelledby="gallery-tab" tabindex="0">
                    @php
                        $model_type_imgs = $model_unit->unitType->getMedia('gallery');
                        $model_imgs = $model_unit->getMedia('unitgallery');
                    @endphp

                    <div id="carouselExample" class="carousel slide">

                        <div class="carousel-inner">

                            @for ($j=0; $j<count($model_type_imgs); $j++)
                                <div class="carousel-item {{ $j==0 ? 'active' : '' }}">
                                    <img src="{{ $model_type_imgs[$j]->getUrl('medium') }}" class="d-block w-100 object-fit-cover" style="max-height:500px;" alt="{{__('Unidad modelo')}} de Quadrant Luxury Ocean Living Bucerías">
                                </div>
                            @endfor

                            @for ($i=0; $i<count($model_imgs); $i++)
                                <div class="carousel-item">
                                    <img src="{{ $model_imgs[$i]->getUrl('medium') }}" class="d-block w-100 object-fit-cover" style="max-height:500px;" alt="{{__('Unidad modelo')}} de Quadrant Luxury Ocean Living Bucerías">
                                </div>
                            @endfor
                            
                        </div>

                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>

                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>

                    </div>

                </div>

                <div class="tab-pane fade overflow-hidden" id="tour-tab-pane" role="tabpanel" aria-labelledby="tour-tab" tabindex="0">
                    <iframe src="https://my.matterport.com/show/?m=By7LsLtgD65" frameborder="0" width="100%" height="500px" class="rounded-end-3 rounded-bottom-3"></iframe>
                </div>

            </div>
            
        </div>

    </div>


    {{-- Amenidades --}}
    <div class="row justify-content-evenly mb-6">
        <div class="col-12 col-lg-4 align-self-center">
            <h3>
                <div class="fs-3 mb-3">{{__('¡Todo lo que necesitas a unos pasos de distancia!')}}</div>
                <div class="fs-4">{{__('Disfruta de las amenidades que tenemos para ofrecerte:')}}</div>
            </h3>

            <p class="fs-5 fw-light mt-3 mb-5">
                {{__('Con una vida interior completa, llena de ambientes para alimentar la vitalidad y disfrutar relajadamente de temporadas inolvidables.')}}
            </p>
        </div>
    
        <div class="col-12 col-lg-5">
            <div class="row justify-content-center text-center">

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <img width="50px" src="{{asset('img/amenities/palapa.svg')}}" alt="">
                    <div class="fs-4 fw-light">{{__('Restaurante tipo palapa')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <img width="50px" src="{{asset('img/amenities/spa.svg')}}" alt="">
                    <div class="fs-4 fw-light">{{__('Spa al aire libre')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <i class="fa-solid text-yellow fa-3x fa-martini-glass-citrus"></i>
                    <div class="fs-4 fw-light">{{__('Bar de piscina & snacks')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <i class="fa-solid text-yellow fa-3x fa-dumbbell"></i>
                    <div class="fs-4 fw-light">{{__('Gimnasio')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <i class="fa-solid text-yellow fa-3x fa-water-ladder"></i>
                    <div class="fs-4 fw-light">{{__('Alberca grande')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <i class="fa-solid text-yellow fa-3x fa-briefcase"></i>
                    <div class="fs-4 fw-light">{{__('Centro de Negocios')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <img width="50px" src="{{asset('img/amenities/pickleball.svg')}}" alt="">
                    <div class="fs-4 fw-light">{{__('Pickleball')}}</div>
                </div>

                <div class="col-6 col-lg-4 mb-4 mb-lg-5">
                    <img width="75px" src="{{asset('img/amenities/hamaca.svg')}}" alt="">
                    <div class="fs-4 fw-light">{{__('Hamacas')}}</div>
                </div>

            </div>
        </div>

    </div>


    {{-- Mapa amenidades --}}
    <div class="row justify-content-evenly mb-6 position-relative pb-5 pb-lg-0">

        <div class="bg-blue-gradient position-absolute z-1 bottom-0 start-0 w-100 h-100 d-none d-lg-block">
            <div class="position-absolute top-0 bg-white px-4 py-2 text-blue fs-5 rounded-bottom-4 d-none d-xxl-block" style="transform: translateX(-50%); left:75%;">
                <i class="fa-solid fa-building"></i> Master Plan
            </div>
        </div>

        <div class="col-12 col-lg-6 px-0 bg-blue-map">

            <div class="text-center pb-3 d-flex justify-content-center d-block d-lg-none">
                <div class="bg-white rounded-bottom-4 mx-auto px-4 py-2"><i class="fa-solid fa-building"></i> Master Plan</div>
            </div>

            <div class="position-relative z-2 pt-2 pt-lg-0 ps-1 ps-lg-0">
                <img src="{{asset('img/master-plan-new.webp')}}" alt="Master plan de Quadrant" class="w-100">
                {{-- pins --}}
                <img src="{{asset('img/amenities/pickle-pin.svg')}}" class="amenity-pin" style="top: 68%; left:30%;" alt="" data-bs-toggle="tooltip" data-bs-title="Pickleball">
                <img src="{{asset('img/amenities/bar-pin.svg')}}" class="amenity-pin" style="top: 33%; left:54%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Bar de piscina & snacks')}}">
                <img src="{{asset('img/amenities/palapa-pin.svg')}}" class="amenity-pin" style="top: 27%; left:50.5%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Restaurante tipo palapa')}}">
                <img src="{{asset('img/amenities/pool-pin.svg')}}" class="amenity-pin" style="top: 37%; left:45%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Alberca grande')}}">
                <img src="{{asset('img/amenities/spa-pin.svg')}}" class="amenity-pin" style="top: 52%; left:28.5%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Spa al aire libre')}}">
                <img src="{{asset('img/amenities/gym-pin.svg')}}" class="amenity-pin" style="top: 58%; left:37%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Gimnasio')}}">
                <img src="{{asset('img/amenities/hamaca-pin.svg')}}" class="amenity-pin" style="top: 69%; left:43%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Hamacas')}}">
                <img src="{{asset('img/amenities/business-pin.svg')}}" class="amenity-pin" style="top: 76%; left:73%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Centro de Negocios')}}">
            </div>
        </div>

        <div class="col-12 col-lg-6 col-xxl-4 position-relative z-2 align-self-center amenities-map-text mt-5 mt-lg-0">

            <h3 class="d-flex mb-0">
                <div class="me-2 lh-1 fw-bold" style="font-size: 120px;">45</div>
                <div class="fw-light">
                    <div class="fs-1">{{__('Condominios de lujo')}}</div>
                    {{__('Torre')}} Elara
                </div>
            </h3>

            <ul class="fw-light fs-5 mb-5">
                <li>{{__('Sobre una superficie de terreno con 34,979.73 m²')}}.</li>
                <li>{{__('Edificios de exclusivos departamentos con elevadores.')}}</li>
                <li>{{__('19,043.06 m² asignados a áreas comunes.')}}</li>
            </ul>

        </div>
    </div>

    {{-- Ubicación --}}
    <div class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-5 col-xxl-4 position-relative mb-5 mb-lg-0">

            <div class="position-absolute fs-5 top-0 end-0 mt-2 me-4 mt-lg-4 me-lg-5"><i class="fa-solid fa-location-dot"></i> {{__('Ubicación')}}</div>

            <img src="{{asset('/img/location-map.webp')}}" alt="Mapa de ubicación de Quadrant" class="w-100 mb-2" loading="lazy">
            <address class="text-center fs-5"><img src="{{asset('img/quadrant-logo-icon.svg')}}" width="15px" alt="" loading="lazy"> Av. Las Palmas 100, Col. Terralta, Bucerías, Nay.</address>
        </div>

        <div class="col-12 col-lg-5 align-self-center">
            <h4 class="text-center text-lg-start mb-4">
                <div class="fs-3">{{__('Oportunidades que no se repiten')}}.</div>
                <div>{{__('Todo lo que necesitas en un solo lugar')}}.</div>
            </h4>

            <p class="fs-5 fw-light mb-5 mb-md-4 px-3 px-lg-0">{{__('En Bucerías, todos encuentran cómo divertirse, entre fina arena que acaricia un tranquilo oleaje. Es lugar de deportes: velero, kayak o jet ski. Un sorprendente regalo es el arribo de las ballenas que con su imponente majestuosidad nos visitan por temporadas, también encantándonos con sus secretos. En las calles, sus coloridos inmuebles invitan a explorar el mercado local para descubrir tesoros en joyería, artesanía, textiles o dulces típicos. La amabilidad de su gente, siempre cálida y sonriente, es una agradable experiencia.')}}</p>

            <div class="row">
                <ul class="col-6 col-xxl-12 fs-5 fw-light list-unstyled mb-0">
                    <li class="mb-2">
                        <i class="fa-solid text-yellow fa-umbrella-beach"></i> {{__('Acceso a playa')}}
                    </li>
                    <li class="mb-2">
                        <i class="fa-solid text-yellow fa-utensils"></i> {{__('Restaurante')}}
                    </li>
                    <li class="mb-2">
                        <i class="fa-solid text-yellow fa-bag-shopping"></i> {{__('Tienda')}}
                    </li>
                </ul>
    
                <ul class="col-6 col-xxl-12 fs-5 fw-light list-unstyled">
                    <li class="mb-2">
                        <i class="fa-solid text-yellow fa-camera"></i> {{__('Lugar de interés')}}
                    </li>
                    <li class="mb-2">
                        <i class="fa-solid text-yellow fa-tree"></i> {{__('Parque')}}
                    </li>
                    <li class="mb-2">
                        <i class="fa-solid text-yellow fa-gas-pump"></i> {{__('Gasolinera')}}
                    </li>
                </ul>
            </div>

        </div>

    </div>

    {{-- Boton de inventario --}}
    <div class="py-5 mb-6 text-center position-relative">

        <a href="{{route('pages.search', request()->query() )}}" wire:navigate class="btn btn-light rounded-pill shadow px-4 fs-5 position-relative z-2"><i class="fa-solid fa-building"></i> {{__('Ver Inventario')}}</a>

        <hr class="blue-hr position-absolute top-50 start-0 z-1 w-100 my-0" style="transform: translateY(-50%);">
    </div>

    {{-- Formulario de contacto --}}
    <livewire:contact-form />

    @script
        <script>
            Fancybox.bind("[data-fancybox]", {
                // Your custom options
            });

            const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
            const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
        </script>
    @endscript

</div>