<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100..900&display=swap" rel="stylesheet">

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased">

        <x-guest-navbar />
        
        <div class="min-h-screen flex flex-col sm:justify-center lg:justify-start sm:items-center lg:items-start pt-6 sm:pt-0 bg-gray-100" style="background-image:url('{{asset('img/inventory-img.webp')}}'); background-repeat:no-repeat; background-size:cover;">

            <div class="w-full sm:max-w-md px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg sm:mt-0 sm:ml-0 lg:mt-14 lg:ml-14">
                {{ $slot }}
            </div>

        </div>
    </body>
</html>
