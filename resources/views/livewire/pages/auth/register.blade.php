<?php

use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use Livewire\Attributes\Layout;
use Livewire\Volt\Component;
use Spatie\Honeypot\Http\Livewire\Concerns\HoneypotData;
use Spatie\Honeypot\Http\Livewire\Concerns\UsesSpamProtection;

new #[Layout('layouts.guest')] class extends Component
{
    use UsesSpamProtection;

    public string $name = '';
    public string $email = '';
    public string $password = '';
    public string $phone = '';
    public string $role = 'client';
    public string $lang = '';
    public string $password_confirmation = '';

    public HoneypotData $extraFields;
    
    public function mount()
    {
        $this->extraFields = new HoneypotData();
    }

    /**
     * Handle an incoming registration request.
     */
    public function register(): void
    {
        $validated = $this->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:'.User::class],
            'phone' => ['nullable', 'string', 'max:10'],
            'password' => ['required', 'string', 'confirmed', Rules\Password::defaults()],
            'role' => ['required', 'string', 'max:15'],
            'lang' => ['required', 'string', 'max:10'],
        ]);

        $this->protectAgainstSpam();

        $validated['password'] = Hash::make($validated['password']);

        $user = new User();
        $user->name = $validated['name'];
        $user->email = $validated['email'];
        $user->phone = $validated['phone'];
        $user->password = $validated['password'];
        $user->role = $validated['role'];
        $user->lang = $validated['lang'];
        $user->save();

        event(new Registered( $user ));

        Auth::login($user);

        $this->redirect(RouteServiceProvider::HOME, navigate: true);
    }
}; 
?>

<div>
    <form wire:submit="register" class="px-6 py-4">

        <div class="mb-4">
            <h1 class="text-3xl font-bold">{{__('Crea tu cuenta')}}</h1>
            <p>{{__('Obten acceso a más características y funciones')}}</p>    
        </div>

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Nombre')" />
            <x-text-input wire:model="name" id="name" class="block mt-1 w-full" type="text" name="name" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input wire:model="email" id="email" class="block mt-1 w-full" type="email" name="email" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Phone -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Teléfono')" />
            <x-text-input wire:model="phone" id="phone" class="block mt-1 w-full" type="number" name="phone" required autocomplete="phone" />
            <x-input-error :messages="$errors->get('phone')" class="mt-2" />
        </div>

        {{-- Lang --}}
        <div class="mt-4">
            <x-input-label for="lang" :value="__('Idioma de su preferencia')" />
            <select wire:model="lang" class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm" name="lang" id="lang" required>
                <option value="">{{__('Seleccione')}}</option>
                <option value="es">Español</option>
                <option value="en">English</option>
            </select>
            <x-input-error :messages="$errors->get('lang')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Contraseña')" />

            <x-text-input wire:model="password" id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirmar Contraseña')" />

            <x-text-input wire:model="password_confirmation" id="password_confirmation" class="block mt-1 w-full"
                            type="password"
                            name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('login') }}" wire:navigate>
                {{ __('¿Ya tienes una cuenta?') }}
            </a>

            <x-primary-button class="ms-4">
                {{ __('Registrar') }}
            </x-primary-button>
        </div>
    </form>
</div>
