<?php

use App\Livewire\HomePage;
use App\Livewire\UnitPage;
use App\Livewire\SearchPage;
use App\Livewire\ContactPage;
use App\Livewire\LifestylePage;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::localized(function () {

    Route::get('/', HomePage::class)->name('pages.home');
    Route::get( Lang::uri('/buscar-condominios'), SearchPage::class)->name('pages.search');
    Route::get( Lang::uri('/condominio-en-venta').'/{name}', UnitPage::class)->name('pages.unit');
    Route::get( Lang::uri('/estilo-de-vida'), LifestylePage::class)->name('pages.lifestyle');
    Route::get( Lang::uri('/contacto'), ContactPage::class)->name('pages.contact');

    Livewire::setUpdateRoute(function ($handle) {
        return Route::post('/livewire/update', $handle);
    });

});

Route::get('/quadrant-optimize', function() {

    Artisan::call('cache:clear');
    Artisan::call('route:cache');
    Artisan::call('config:cache');
    Artisan::call('view:cache');

    return ('Optimizado');
});

Route::view('dashboard', 'dashboard')
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::view('profile', 'profile')
    ->middleware(['auth'])
    ->name('profile');

require __DIR__.'/auth.php';
