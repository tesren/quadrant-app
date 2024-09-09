<?php

namespace App\Livewire;

use Livewire\Component;

class HomePage extends Component
{
    public function render()
    {
        return view('livewire.pages.home-page')->layout('layouts.public-base');
    }
}
