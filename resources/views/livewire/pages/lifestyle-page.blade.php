<div>
    {{-- Success is as dangerous as failure. --}}
    @section('titles')
        <title>{{__('Estilo de vida')}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="">
    @endsection 


    {{-- Inicio --}}
    <div class="position-relative mb-6">

        <div class="position-absolute bottom-0 start-0 row justify-content-center justify-content-lg-start">

            <div class="col-12 col-lg-8 col-xxl-5 px-0 position-relative">
                <img class="px-0 w-100" src="{{asset('img/bg-white-home.webp')}}" alt="" style="min-height: 160px; transform: scaleY(-1);">

                <div class="position-absolute start-0 top-0 pt-3 ps-3 pt-lg-5 ps-lg-5 w-100">
                    <h1 class="fs-4 mb-2 lh-1 col-9 col-lg-11 fw-light">{{__('Descubre las ventajas de vivir en Bucerías')}}</h1>
                    <p class="fs-1 col-9 col-lg-11">{{__('Un Paraíso para Vivir y Disfrutar')}}</p>
                </div>
            </div>

        </div>

        <img width="50px" src="{{asset('/img/quadrant-logo-icon-white.svg')}}" alt="" class="position-absolute top-0 end-0 m-4 m-lg-5">

        <img src="{{asset('/img/lifestyle-img.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 66vh;">

        <div class="position-absolute bottom-0 end-0 mb-5 me-5 d-none d-lg-block">
            <a href="{{route('pages.search')}}" wire:navigate class="btn btn-light rounded-pill px-4 px-lg-5 fs-5 shadow">
                <i class="fa-solid fa-building"></i> {{__('Inventario')}}
            </a>
        </div>

    </div>

    {{-- Letras bucerías --}}
    <div class="row justify-content-evenly mb-4 mb-lg-5 pb-0 pb-lg-5">

        <div class="col-12 col-lg-6 px-3 px-lg-5 fs-5 fw-light align-self-center mb-5 mb-lg-0">
            <p>
                {{__('Bucerías, Nayarit, es un encantador pueblo costero ubicado en la Riviera Nayarit, conocido por su ambiente tranquilo y acogedor. Vivir en Bucerías ofrece una combinación única de belleza natural, comunidad amigable y una amplia gama de actividades para disfrutar.')}}
            </p>
            <p>{{__('La Riviera Nayarit se enriquece día a día con una cosmopolita comunidad que atrae residentes del mundo entero por la belleza de su geografía, por la enigmática magia de sus costumbres y la amabilidad a flor de piel de sus pobladores, que sazona exóticos sabores mientras perfumes y colores danzan frente a un océano dotado de vida y variedad.')}}</p>

            <p class="d-none d-lg-block"><strong>{{__('Bucerías como Destino Turístico y de Inversión:')}}</strong> {{__('Bucerías no solo es un excelente lugar para vivir, sino también un destino turístico popular y una oportunidad de inversión prometedora. Su ubicación estratégica en la Riviera Nayarit, cerca de Puerto Vallarta, lo convierte en un punto de acceso fácil para turistas nacionales e internacionales. La creciente infraestructura y los servicios de alta calidad, junto con la belleza natural y la oferta cultural, hacen de Bucerías un lugar atractivo para invertir en bienes raíces. Ya sea que busques una casa de vacaciones, una propiedad de alquiler o una residencia permanente, Bucerías ofrece una excelente relación calidad-precio y un entorno envidiable para disfrutar de la vida.')}}</p>
        </div>

        <div class="col-12 col-lg-5 position-relative">
            <img src="{{asset('img/letras-bucerias.webp')}}" alt="Letras de Bucerías Nayarit" class="w-100">
            <div class="position-absolute top-0 start-0 fs-5 pt-2 pt-lg-3 ps-4"><i class="fa-solid fa-location-dot"></i> Bucerías<span class="d-none d-lg-inline">, Nayarit</span></div>

        </div>

    </div>

    {{-- Ventajas de Vivir en Bucerías --}}
    <div class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-5 position-relative mb-5 mb-lg-0">
            <img src="{{asset('/img/bucerias-lifestyle.webp')}}" alt="Estilo de vida Bucerías Nayarit" class="w-100">
        </div>

        <div class="col-12 col-lg-6 px-3 px-lg-5 fs-5 fw-light align-self-center">
            <h2 class="fs-3 mb-4">{{__('Ventajas de Vivir en Bucerías:')}}</h2>
            <ol>
                
                <li class="mb-3">
                    <strong>{{__('Playas Hermosas:')}}</strong> {{__('Bucerías cuenta con algunas de las playas más impresionantes de la región, con arenas suaves y aguas cristalinas ideales para relajarse y disfrutar del sol.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Comunidad Amigable:')}}</strong> {{__('Los residentes de Bucerías son conocidos por su hospitalidad y calidez, creando un ambiente acogedor para todos.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Naturaleza y Montañas:')}}</strong> {{__('Rodeado de montañas y naturaleza exuberante, Bucerías ofrece un entorno perfecto para los amantes del aire libre y las actividades al aire libre.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Gastronomía y Restaurantes:')}}</strong> {{__('La oferta culinaria en Bucerías es diversa y deliciosa, con una gran variedad de restaurantes que ofrecen desde mariscos frescos hasta cocina internacional.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Artesanías Coloridas:')}}</strong> {{__('El mercado de artesanías de Bucerías es un lugar vibrante donde se pueden encontrar productos locales únicos y coloridos.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Paz y Seguridad:')}}</strong> {{__('Bucerías es conocido por ser un lugar seguro y tranquilo, ideal para aquellos que buscan un estilo de vida relajado.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Deportes Acuáticos:')}}</strong> {{__('Las aguas de Bucerías son perfectas para practicar deportes acuáticos como el surf, el paddleboard, el snorkel y la pesca.')}}
                </li>
            </ol>
        </div>

    </div>

    {{-- Actividades disponibles en Bucerías --}}
    <div class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-6 px-3 px-lg-5 fs-5 fw-light align-self-center order-2 order-lg-1">
            <h2 class="fs-3 mb-4">{{__('Actividades disponibles en Bucerías:')}}</h2>

            <ol>
                
                <li class="mb-3">
                    <strong>{{__('Exploración de Playas:')}}</strong> {{__('Disfruta de días soleados en las playas de Bucerías, perfectas para nadar, tomar el sol y construir castillos de arena.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Deportes Acuáticos:')}}</strong> {{__('Participa en actividades emocionantes como el surf, el paddleboard, el snorkel y la pesca.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Senderismo y Naturaleza:')}}</strong> {{__('Explora los senderos naturales y las montañas que rodean Bucerías, ideales para caminatas y observación de aves.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Gastronomía Local:')}}</strong> {{__('Degusta la deliciosa comida local en los numerosos restaurantes y puestos de comida que ofrecen mariscos frescos y platillos tradicionales.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Compras de Artesanías:')}}</strong> {{__('Visita el mercado de artesanías para encontrar productos únicos y apoyar a los artesanos locales.')}}
                </li>

                <li class="mb-3">
                    <strong>{{__('Eventos Culturales:')}}</strong> {{__('Participa en festivales y eventos culturales que se celebran a lo largo del año, ofreciendo una visión de la rica cultura y tradiciones de la región.')}}
                </li>

            </ol>
        </div>

        <div class="col-12 col-lg-5 position-relative align-self-center order-1 order-lg-2 mb-5 mb-lg-0">
            <img src="{{asset('/img/actividades-bucerias.webp')}}" alt="Estilo de vida Bucerías Nayarit" class="w-100">
        </div>

    </div>


    {{-- Formulario de contacto --}}
    <livewire:contact-form />

</div>