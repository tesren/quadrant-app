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
                    <h1 class="fs-4 mb-2 lh-1 col-11 fw-light">{{__('Descubre las ventajas de vivir en Bucerías')}}</h1>
                    <p class="fs-1 col-9 col-lg-11">{{__('Un Paraíso para Vivir y Disfrutar')}}</p>
                </div>
            </div>

        </div>

        <img src="{{asset('/img/lifestyle-img.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 66vh;">

    </div>

</div>
