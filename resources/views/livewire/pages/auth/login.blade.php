<?php

use App\Livewire\Forms\LoginForm;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;

use function Livewire\Volt\form;
use function Livewire\Volt\layout;

layout('layouts.guest');

form(LoginForm::class);

$login = function () {
    $this->validate();

    $this->form->authenticate();

    Session::regenerate();

    $this->redirectIntended(default: RouteServiceProvider::HOME, navigate: true);
};

?>

<div>

    <div class="grid grid-cols-1 lg:grid-cols-2">

        <img class="w-full h-full inline-block object-cover" src="{{asset('/img/login-img.webp')}}" alt="{{__('Inicia sesión en Quadrant Luxury Ocean Living')}}">
    
        <div class="w-full inline-block px-6 py-4">
            <h1 class="mb-0 text-3xl font-bold">{{__('Inicia sesión')}}</h1>
            <p class="mb-4">{{__('Entra a tu cuenta')}}</p>
        
            <!-- Session Status -->
            <x-auth-session-status class="mb-4" :status="session('status')" />
        
            <form wire:submit="login">
                <!-- Email Address -->
                <div>
                    <x-input-label for="email" :value="__('Email')" />
                    <x-text-input wire:model="form.email" id="email" class="block mt-1 w-full" type="email" name="email" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('form.email')" class="mt-2" />
                </div>
        
                <!-- Password -->
                <div class="mt-4">
                    <x-input-label for="password" :value="__('Password')" />
        
                    <x-text-input wire:model="form.password" id="password" class="block mt-1 w-full"
                                    type="password"
                                    name="password"
                                    required autocomplete="current-password" />
        
                    <x-input-error :messages="$errors->get('form.password')" class="mt-2" />
                </div>
        
                <!-- Remember Me -->
                <div class="block mt-4">
                    <label for="remember" class="inline-flex items-center">
                        <input wire:model="form.remember" id="remember" type="checkbox" class="rounded border-gray-300 text-sky-700 shadow-sm focus:ring-sky-700" name="remember">
                        <span class="ms-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                    </label>
                </div>
        
                <x-primary-button class="w-full mt-4">
                    {{ __('Entrar') }}
                </x-primary-button>
        
                <div class="flex items-center justify-end mt-4">
                    @if (Route::has('password.request'))
                        <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('password.request') }}" wire:navigate>
                            {{ __('Forgot your password?') }}
                        </a>
                    @endif
                </div>
            </form>
        </div>
    </div>

</div>
