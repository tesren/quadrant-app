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
        $model_unit = Unit::find(65);

        return view('livewire.pages.home-page', compact('model_unit' ))->layout('layouts.public-base');
    }
}
