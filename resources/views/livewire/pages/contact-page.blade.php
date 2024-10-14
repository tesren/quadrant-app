<div>
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
    @section('titles')
        <title>{{__('Contacto')}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="{{__('Contacta a un agente inmobiliario en Quadrant Luxury Ocean Living. Completa el formulario de contacto y recibe información personalizada sobre los condominios disponibles en Bucerías.')}}">
    @endsection

    <div class="position-relative d-none d-lg-block">
        <img src="{{asset('/img/home-gallery/common-areas-3.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 45vh;">


        <div class="position-absolute bottom-0 start-0 row justify-content-center justify-content-lg-start">

            <div class="col-12 col-lg-8 col-xxl-5 px-0 position-relative">
                <img class="px-0 w-100" src="{{asset('img/bg-white-home.webp')}}" alt="" style="min-height: 160px; transform: scaleY(-1);">

                <div class="position-absolute start-0 top-0 pt-3 ps-3 pt-lg-5 ps-lg-5 w-100">
                    <h1 class="fs-4 mb-2 lh-1 col-9 col-lg-11 fw-light">{{__('Contacto')}}</h1>
                    <p class="fs-2 col-9 col-lg-10">{{__('Contáctanos para obtener')}} <br> {{__('más información sobre el proyecto')}} </p>
                </div>
            </div>

        </div>


    </div>

    <div class="mt-6"><livewire:contact-form /></div>

</div>
