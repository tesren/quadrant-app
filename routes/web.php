<?php

use App\Livewire\HomePage;
use App\Livewire\UnitPage;
use App\Livewire\SavedUnits;
use App\Livewire\SearchPage;
use App\Livewire\ContactPage;
use App\Livewire\ProfilePage;
use App\Livewire\LifestylePage;
use App\Livewire\PrivacyPolicy;
use App\Livewire\ConstructionPage;
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
    Route::get( Lang::uri('/aviso-de-privacidad'), PrivacyPolicy::class)->name('pages.privacy');
    Route::get( Lang::uri('/unidades-guardadas'), SavedUnits::class)->name('pages.saved');
    Route::get( Lang::uri('/mi-perfil'), ProfilePage::class)->name('pages.profile');
    Route::get( Lang::uri('/avances-de-obra'), ConstructionPage::class)->name('pages.construction');

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
