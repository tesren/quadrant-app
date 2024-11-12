<footer class="row justify-content-evenly pt-5 pb-3 bg-blue-gradient">
    
    <div class="col-10 col-lg-3 mb-5 mb-lg-0">
        <img src="{{asset('img/logo-quadrant-white.svg')}}" alt="Logo de Quadrant Luxury Living" class="w-100">
    </div>

    <div class="col-12 col-lg-4 col-xxl-3 mb-5 mb-lg-0 text-center text-lg-start px-4 px-lg-3">
        <div class="fs-3 mb-3">{{__('Domicilio')}}</div>

        <address class="fs-5 fw-light mb-3">
            <i class="fa-solid fa-location-dot"></i> Condominio Quadrant, Av. Las Palmas 100, Col. Terralta, Bucerías, Nay.
        </address>

        <a href="https://domusvallarta.com" class="text-decoration-none link-light d-block my-4 my-lg-0">
            <div class="fs-6 mb-2">{{__('Comercializador Exclusivo')}}</div>
            <img width="250px" src="{{asset('img/domus-logo-white.svg')}}" alt="Logo de Domus Vallarta Inmobiliaria">
        </a>

    </div>

    @php
        $contact = request()->query('contact');
    @endphp

    <div class="col-12 col-lg-3 mb-5 mb-lg-0 text-center text-lg-start">
        @if ($contact != 'no')
            <div class="fs-3 mb-3">{{__('Contacto')}}</div>

            <a href="mailto:info@domusvallarta.com" class="link-light fs-5 text-decoration-none d-block mb-2 fw-light">
                <i class="fa-solid fa-envelope"></i> info@domusvallarta.com
            </a>

            <a href="tel:+523322005523" class="link-light fs-5 text-decoration-none d-block mb-2 fw-light">
                <i class="fa-solid fa-phone"></i> +52 332 200 5523
            </a>

            <a href="https://www.facebook.com/DomusVallartaInmobiliaria" target="_blank" rel="noopener noreferrer" aria-label="Facebook page" class="link-light text-decoration-none fs-4 me-3">
                <i class="fa-brands fa-facebook-f"></i>
            </a>

            <a href="https://www.instagram.com/domus_vallarta" target="_blank" rel="noopener noreferrer" aria-label="Instagram page" class="link-light text-decoration-none fs-4">
                <i class="fa-brands fa-instagram"></i>
            </a>
        @endif
    </div>

    <div class="col-12 pt-2 px-3 text-center mt-4">
        <i class="fa-regular fa-copyright"></i> Copyright 2024 {{__('Todos los derechos reservados')}} | <a href="{{ route('pages.privacy', request()->query() ) }}" wire:navigate class="link-light fw-light">{{__('Aviso de Privacidad')}}</a>
        | 
       <a href="https://punto401.com" class="link-light fw-light text-decoration-none">
           {{__('Sitio web hecho por')}} <img width="70px" src="{{asset('img/logo-p401.svg')}}" alt="Logo de Punto401 Marketing">
       </a>
    </div>

</footer>