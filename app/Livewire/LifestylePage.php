<?php

namespace App\Livewire;

use Livewire\Component;

class LifestylePage extends Component
{
    public function render()
    {
        return view('livewire.pages.lifestyle-page')->layout('layouts.public-base');
    }
}
