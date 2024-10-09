<div>
    
    @section('titles')
        <title>{{__('Avances de Obra')}} - Quadrant Luxury Ocean Living</title>
        <meta name="description" content="{{__('Avances de obra mensuales de Quadrant Luxury Ocean Living. Nuestra página de avances de obra te ofrece una visión detallada de la evolución de este espectacular proyecto de condominios ubicado en Bucerías Nayarit')}}">
    @endsection

    {{-- Do your work, then step back. --}}
    <div class="position-relative mb-6">
        <img src="{{asset('img/contact-bg.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 33vh;">

        <div class="position-absolute bottom-0 start-0 row justify-content-center justify-content-lg-start">

            <div class="col-12 col-lg-8 col-xxl-4 px-0 position-relative">
                <img class="px-0 w-100" src="{{asset('img/bg-white-home.webp')}}" alt="" style="min-height: 160px; transform: scaleY(-1);">

                <div class="position-absolute start-0 top-0 pt-3 ps-3 pt-lg-5 ps-lg-5 w-100">
                    <h1 class="fs-4 mb-2 lh-1 col-9 col-lg-11 fw-light">{{__('Avances de Obra')}}</h1>
                    <p class="fs-2 col-9 col-lg-10">{{__('Avances de construcción')}} <br> {{__('generales del proyecto.')}} </p>
                </div>
            </div>

        </div>

    </div>


    @if ( $const_updates->isNotEmpty() )
    
        <div class="row justify-content-center mb-6 position-relative">

            @foreach ($const_updates as $update)
                <div class="card rounded-5 overflow-hidden col-11 col-lg-8 col-xxl-7 mb-5 p-0 shadow">
                    
                    @php
                        $portrait = asset('media/'.$update->portrait_path);
                        $date = __(date_format($update->date, 'F')).' '.date_format($update->date, 'Y');
                        $images = $update->getMedia('gallery_construction');
                    @endphp

                    <div class="position-relative">
                        <img src="{{$portrait}}" class="w-100" alt="Avance de Obra Quadrant Luxury Ocean Living - {{$date}}" style="max-height: 470px; object-fit:cover;">
                        <div class="row position-absolute top-0 start-0 justify-content-center h-100">
                            <div class="col-12 text-center align-self-center">
                                
                                @if ($update->video_link)
                                    <a href="#construction-{{$update->id}}-1" class="link-light" aria-label="Ver avance de obra de {{$date}}"><i class="fa-solid fa-4x fa-play"></i></a>
                                @else
                                    <a href="#construction-{{$update->id}}-1" class="link-light text-decoration-none fs-1" aria-label="Ver avance de obra de {{$date}}"><i class="fa-regular fa-images"></i> {{count($images)}}</a>
                                @endif

                            </div>
                        </div>
                    </div>

                    <div class="card-body bg-blue d-flex position-relative overflow-hidden">

                        <img class="me-5 align-self-center d-none d-lg-block" src="{{asset('img/full-logo-quadrant-white.svg')}}" alt="Logo de Quadrant Luxury Ocean Living" width="250px">            
                        <h2 class="mb-0 lh-1 fw-light">{{$date}} <br> <span class="fs-5">{{__('Avance de Obra')}}</span> </h2>
                        
                    </div>

                    @if ($update->video_link)
                        <a href="{{$update->video_link}}" data-fancybox="construction-{{$update->id}}" class="d-none">{{__('Video de avance de obra')}} Quadrant Luxury Ocean Living - {{$date}}</a>
                    @endif

                    @foreach ($images as $image)
                        <img src="{{$image->getUrl('large')}}" alt="Avance de Obra Quadrant Luxury Ocean Living - {{$date}}" class="w-100 d-none" data-fancybox="construction-{{$update->id}}">
                    @endforeach
                      
                </div>
            @endforeach
        </div>

        {{-- $const_updates->links() --}}
        
    @endif

    {{-- Formulario de contacto --}}
    @livewire('contact-form')

    @script
        <script>
            // This Javascript will get executed every time this component is loaded onto the page...
            Fancybox.bind("[data-fancybox]", {
                Hash: true,
            });
        </script>
    @endscript

</div>
