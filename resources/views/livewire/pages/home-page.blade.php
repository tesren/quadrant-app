<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}
    @section('titles')
        <title>Quadrant Luxury Ocean Living - {{ __('Condominios en venta en Bucerías, Nayarit') }}</title>
        <meta name="description" content="{{__('Descubre Quadrant Luxury Ocean Living en Bucerías, Nayarit. Condominios de entrega inmediata en un desarrollo exclusivo de 34,979.73 m², con edificios de lujo, elevadores y 19,043.06 m² dedicados a áreas comunes. Vive a unas cuadras de la playa y disfruta de un estilo de vida excepcional.')}}">
    @endsection 


    {{-- Inicio --}}
    <div class="position-relative mb-6">

        <div class="row position-absolute justify-content-center top-0 start-0 h-100">
            
            <div class="col-11 col-lg-5 col-xxl-4 mt-6 text-center align-self-start" style="background-image: url('{{asset('/img/home-vector.webp')}}'); background-repeat:no-repeat; background-size: 100% 100%;">
                <h1 class="fs-2 mb-2 pt-3">{{__('Una vida maravillosa entre la brisa del mar, diversión y confort.')}}</h1>
                <p class="fs-5 fw-light">{{__('Rodeado de vitalidad y relajación')}}</p>
            </div>

        </div>

        <img src="{{asset('img/home-gallery/common-areas-1.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover home-img">

        <div class="position-absolute bottom-0 start-0 mb-5 ms-5 d-none d-lg-block">
            <a href="{{route('pages.search', request()->query())}}" wire:navigate class="btn btn-light rounded-pill px-4 px-lg-5 fs-5 shadow">
                <i class="fa-solid fa-building"></i> {{__('Inventario')}}
            </a>
        </div>

        <div class="position-absolute bottom-0 start-50 mb-5 d-none d-lg-block">
            <a href="#info" class="btn btn-light rounded-pill px-4 fs-5 shadow">
                <i class="fa-regular fa-circle-down"></i> {{__('Ver más')}}
            </a>
        </div>

        <img class="position-absolute px-0 end-0 bottom-0" width="150px" src="{{asset('/img/whatsapp-bg-white.webp')}}" alt="">
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
                <img src="{{asset('img/master-plan.webp')}}" alt="Master plan de Quadrant" class="w-100">
                {{-- pins --}}
                <img src="{{asset('img/amenities/pickle-pin.svg')}}" class="amenity-pin" style="top: 65%; left:35%;" alt="" data-bs-toggle="tooltip" data-bs-title="Pickleball">
                <img src="{{asset('img/amenities/bar-pin.svg')}}" class="amenity-pin" style="top: 25%; left:55%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Bar de piscina & snacks')}}">
                <img src="{{asset('img/amenities/palapa-pin.svg')}}" class="amenity-pin" style="top: 17%; left:50%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Restaurante tipo palapa')}}">
                <img src="{{asset('img/amenities/pool-pin.svg')}}" class="amenity-pin" style="top: 26%; left:44.5%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Alberca grande')}}">
                <img src="{{asset('img/amenities/spa-pin.svg')}}" class="amenity-pin" style="top: 47%; left:33.5%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Spa al aire libre')}}">
                <img src="{{asset('img/amenities/gym-pin.svg')}}" class="amenity-pin" style="top: 49%; left:42%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Gimnasio')}}">
                <img src="{{asset('img/amenities/hamaca-pin.svg')}}" class="amenity-pin" style="top: 62%; left:51%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Hamacas')}}">
                <img src="{{asset('img/amenities/business-pin.svg')}}" class="amenity-pin" style="top: 62%; left:83%;" alt="" data-bs-toggle="tooltip" data-bs-title="{{__('Centro de Negocios')}}">
            </div>
        </div>

        <div class="col-12 col-lg-6 col-xxl-4 position-relative z-2 align-self-center amenities-map-text mt-5 mt-lg-0">

            <h3 class="d-flex mb-0">
                <div class="me-2 lh-1 fw-bold" style="font-size: 120px;">36</div>
                <div class="fw-light">
                    <div class="fs-1">{{__('Condominios de lujo')}}</div>
                    {{__('Torre Himalia')}}
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