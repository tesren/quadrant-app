<div>
    {{-- Do your work, then step back. --}}
    @section('titles')
        <title>{{__('Mi Perfil')}} - Quadrant Luxury Ocean Living</title>
    @endsection

    @php
        $user = auth()->user();
        $url = Gravatar::fallback('https://www.gravatar.com/avatar/de7554e3560de602155ce77b2eef85cb?s=300')->get($user->email, ['size'=>500]);
    @endphp

    {{-- Inicio --}}
    <div class="position-relative mb-6">

        <div class="position-absolute bottom-0 start-0 row justify-content-center justify-content-lg-start">

            <div class="col-12 col-lg-7 col-xxl-4 px-0 position-relative">
                <img class="px-0 w-100" src="{{asset('img/bg-white-home.webp')}}" alt="" style="min-height: 160px; transform: scaleY(-1);">

                <div class="position-absolute start-0 top-0 pt-3 ps-3 pt-lg-5 ps-lg-5 w-100">
                    
                    <div class="d-flex mt-4 mt-lg-0">
                        <i class="fa-solid fa-user align-self-center me-4 fa-4x"></i>

                        <div class="align-self-center me-4">
                            <div class="fs-1 lh-1 mb-2">{{__('Perfil')}}</div>
                            <div class="fs-4 lh-1">{{__('Comprueba tu información')}}</div>
                        </div>

                    </div>

                </div>
            </div>

        </div>

        <img src="{{asset('/img/profile-bg.webp')}}" alt="Quadrant Luxury Ocean Living" class="w-100 object-fit-cover" style="height: 33vh; object-position:bottom;">

    </div>

    <div class="row justify-content-center my-6" style="min-height: 53vh;">

        <div class="col-12 col-lg-9 col-xxl-7">
            <div class="row justify-content-center">

                <div class="col-8 col-lg-4 align-self-center mb-4 mb-lg-0">
                    <img src="{{$url}}" alt="Profile picture" class="w-100 rounded-circle">
                </div>
        
                <div class="col-12 col-lg-8 px-3 px-lg-4">
        
                    <h1 class="mb-1 lh-1">{{__('Mis datos')}}</h1>
                    <div class="text-secondary fs-5">{{$user->email}}</div>
                    <p class="mb-4">{{__('Aquí puedes ver y modificar tus datos personales')}}</p>
        
                    <form wire:submit="updateProfile" autocomplete="off">
        
                        <label for="user_name">{{__('Nombre')}}</label>
                        <input type="text" class="form-control mb-3 @if(session('message')) is-valid @endif" wire:model="user_name" required maxlength="255">
        
                        <label for="user_phone">{{__('Teléfono')}}</label>
                        <input type="tel" class="form-control mb-3 @if(session('message')) is-valid @endif" wire:model="user_phone" required maxlength="10">

                        <label for="user_lang">{{__('Idioma preferido')}}</label>
                        <select wire:model="user_lang" class="form-select mb-3 @if(session('message')) is-valid @endif" required>
                            <option value="">{{__('Seleccione')}}</option>
                            <option value="es">Español</option>
                            <option value="en">English</option>
                        </select>

                        <label for="user_pass">{{__('Nueva Contraseña')}}</label>
                        <div class="input-group mb-4" x-data="{ show: false }">
                            <input :type="show ? 'text' : 'password'" class="form-control" wire:model="user_pass" autocomplete="off">

                            <button class="btn rounded-0" type="button" x-on:click="show = ! show" style="border-bottom: 1px solid #163756;">
                                <span x-show="! show"><i class="fa-solid fa-eye"></i></span>
                                <span x-show="show"><i class="fa-solid fa-eye-slash"></i></span>

                                <span x-text="show ? '{{__('Ocultar')}}' : '{{__('Mostrar')}}'"></span>
                            </button>

                        </div>
        
                        <button type="submit" class="btn btn-blue rounded-pill py-2 fs-5 fw-light w-100">
                            <i class="fa-solid fa-spin fa-circle-notch" wire:loading></i>
                            {{__('Guardar Cambios')}}
                        </button>

                        @if (session('message'))
                            <div class="d-block text-success fw-bold border border-success text-center p-2 mt-3">
                                <i class="fa-solid fa-check"></i> {{__( session('message') )}}
                            </div>
                        @endif
                        
                        

                    </form>
        
                </div>
            </div>
        </div>

    </div>

</div>
