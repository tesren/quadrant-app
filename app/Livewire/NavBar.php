<?php

namespace App\Livewire;

use App\Models\Tower;
use Livewire\Component;
use Livewire\Attributes\On;
use App\Models\ConstructionUpdate;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

class NavBar extends Component
{
    public $unit_name = '4101';
    public $tower_slug = 'himalia';
    public $route = '';

    public function mount()
    {
        $this->route = Route::currentRouteName();
    }

    #[On('nombre-unidad')] 
    public function updateUnit($name)
    {
        $this->unit_name = $name;
    }

    #[On('slug-torre')] 
    public function updateTower($slug)
    {
        $this->tower_slug = $slug;
    }

    public function logout(){
        Auth::guard('web')->logout();

        Session::invalidate();
        Session::regenerateToken();

        $this->redirect('/', navigate: true);
    }

    public function render()
    {
        $const_updates = ConstructionUpdate::all();
        $towers = Tower::all();

        return view('livewire.components.nav-bar', compact('const_updates', 'towers'));
    }
}
