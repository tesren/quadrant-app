<?php

use App\Livewire\HomePage;
use App\Livewire\UnitPage;
use App\Livewire\SearchPage;
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

Route::get('/', HomePage::class)->name('pages.home');
Route::get('/buscar-condominios', SearchPage::class)->name('pages.search');
Route::get('/condominio-en-venta'.'/{name}', UnitPage::class)->name('pages.unit');
Route::get('estilo-de-vida', LifestylePage::class)->name('pages.lifestyle');

Route::view('dashboard', 'dashboard')
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::view('profile', 'profile')
    ->middleware(['auth'])
    ->name('profile');

require __DIR__.'/auth.php';
