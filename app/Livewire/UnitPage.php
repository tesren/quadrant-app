<?php

namespace App\Livewire;

use Livewire\Component;

class UnitPage extends Component
{
    public function render()
    {
        return view('livewire.pages.unit-page')->layout('layouts.public-base');
    }
}
