<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class SavedUnits extends Component
{

    public function removeUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->detach( auth()->user()->id );
        $unit->save();

    }

    public function render()
    {
        $units = auth()->user()->savedUnits;

        return view('livewire.pages.saved-units', compact('units'))->layout('layouts.public-base');
    }
}
