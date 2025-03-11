<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class HomePage extends Component
{
    public $contact;
    public $lowest_unit = 0;

    public function mount()
    {
        $this->contact = request()->query('contact'); 
        $this->lowest_unit = Unit::where('status', 'Disponible')->orderBy('price', 'asc')->first(); 
    }

    public function render()
    {
        return view('livewire.pages.home-page')->layout('layouts.public-base');
    }
}
