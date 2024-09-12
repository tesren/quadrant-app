<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;
use App\Models\UnitType;
use Livewire\WithPagination;

class SearchPage extends Component
{

    use WithPagination;

    public $search_status = 0;
    public $floor = 0;
    public $bedrooms = 0;
    public $tower = 0;
    public $unit_type = 0;
    public $min_price = 1;
    public $max_price = 9999999999;

    public function search(){
        $this->resetPage();
    }

    public function render()
    {
        $units = Unit::where('price', '>' ,$this->min_price)->where('price','<', $this->max_price)->where('status', '!=', 'Vendida');

        $unit_types = UnitType::all();

        if( $this->floor != 0 ){
            $units = $units->where('floor', $this->floor);
        }

        /* if($this->tower != 0){
            if ($this->tower == 'A') {
                $units = $units->whereIn('section_id', [1,2] );
            } else {
                $units = $units->whereIn('section_id', [3,4] );
            }            
        } */

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

        $units = $units->orderBy('status', 'desc')->paginate(12);

        return view('livewire.pages.search-page', compact('units', 'unit_types'))->layout('layouts.public-base');
    }
}
