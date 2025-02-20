<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class UnitPage extends Component
{

    public Unit $unit;

    public function mount($name)
    {
        $this->reset();
        $this->unit = Unit::where('name', $name)->firstOrFail();
        $this->dispatch('nombre-unidad', name:$name);
    }

    public function saveUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->attach( auth()->user()->id );
        $unit->save();

    }

    public function removeUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->detach( auth()->user()->id );
        $unit->save();

    }

    public function render()
    {

        if ( !auth()->check() and $this->unit->tower->private_presale == 1 ) {
            
            return abort(404);

        } else {
            
            return view('livewire.pages.unit-page')->layout('layouts.public-base');

        }
        

    }
}
