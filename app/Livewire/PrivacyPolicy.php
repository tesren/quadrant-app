<?php

namespace App\Livewire;

use Livewire\Component;

class PrivacyPolicy extends Component
{
    public function render()
    {
        return view('livewire.pages.privacy-policy')->layout('layouts.public-base');
    }
}
