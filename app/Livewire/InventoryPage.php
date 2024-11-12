<?php

namespace App\Livewire;

use App\Models\Unit;
use App\Models\Tower;
use Livewire\Component;
use App\Models\UnitType;

class InventoryPage extends Component
{
    public Tower $tower;
    public $units = [];
    public $buttonText = 'Unidades Guardadas'; // Texto inicial del botón
    public $showingUnits = false; // Estado de si las unidades están siendo mostradas o no
    public $floor = 0;
    public $bedrooms = 0;
    public $unit_type = 0;
    public $min_price = 1;
    public $max_price = 9999999999;

    public function mount($slug)
    {
        //$this->reset();
        $this->tower = Tower::where('slug', $slug)->firstOrFail();
        $this->units = $this->tower->units;
        $this->dispatch('slug-torre', slug:$slug);
    }


    public function showSavedUnits()
    {
        //$this->reset();
        // Alterna entre mostrar o no las unidades guardadas
        if ($this->showingUnits) {
            $this->units = $this->tower->units; // Ocultar las unidades guardadas
            $this->buttonText = 'Ver unidades guardadas'; // Volver al texto original
        } else {
            $saved_units = auth()->user()->savedUnits;
            $this->units = $saved_units;
            $this->buttonText = 'Ver todas las unidades'; // Cambiar el texto
        }

        // Alternar el estado
        $this->showingUnits = !$this->showingUnits;
    }

    public function search(){
        //$this->reset();

        $units = Unit::where('price', '>' ,$this->min_price)->where('price','<', $this->max_price)->where('status', '!=', 'Vendida');

        if( $this->floor != 0 ){
            $units = $units->where('floor', $this->floor);
        }


        if($this->unit_type != 0){
            $units = $units->where('unit_type_id', $this->unit_type );
        }

        if( $this->bedrooms != 0 ){

            $bedrooms = $this->bedrooms;

            switch($bedrooms){

                case 1:
                    $types = UnitType::where('bedrooms', 1)->pluck('id')->toArray();

                    $units = $units->whereIn('unit_type_id', $types);
                break;

                case 2:
                    $types = UnitType::where('bedrooms', 2)->pluck('id')->toArray();

                    $units = $units->whereIn('unit_type_id', $types);
                break;

                case 3:
                    $types = UnitType::where('bedrooms', 3)->pluck('id')->toArray();

                    $units = $units->whereIn('unit_type_id', $types);
                break;

                case 10:
                    $types = UnitType::where('bedrooms', 0)->pluck('id')->toArray();

                    $units = $units->whereIn('unit_type_id', $types);
                break;

            }
            
        }

        $this->units = $units->get();

    }


    public function render()
    {
        $unit_types = UnitType::all();

        return view('livewire.pages.inventory-page', compact('unit_types') )->layout('layouts.public-base');
    }
}
