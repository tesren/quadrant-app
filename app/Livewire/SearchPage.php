<?php

namespace App\Livewire;

use App\Models\Unit;
use App\Models\Tower;
use Livewire\Component;
use App\Models\UnitType;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Auth;

class SearchPage extends Component
{

    use WithPagination;

    public $search_status = 0;
    public $floor = 0;
    public $bedrooms = 0;
    public $tower_id = 0;
    //public $unit_type = 0;
    public $min_price = 1;
    public $max_price = 9999999999;

    public function search(){
        $this->resetPage();
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
        // Construimos la consulta sin ejecutarla aún
        $units = Unit::where('price', '>', $this->min_price)
            ->where('price', '<', $this->max_price)
            ->where('status', '!=', 'Vendida');
    
        // Si el usuario no está autenticado, excluimos unidades de torres con private_presale == 1
        if (!Auth::check()) {
            $units = $units->whereHas('tower', function ($query) {
                $query->where('private_presale', '!=', 1);
            });
        }
    
        // Filtros adicionales
        if ($this->floor != 0) {
            $units = $units->where('floor', $this->floor);
        }
    
        if ($this->tower_id != 0) {
            $units = $units->where('tower_id', $this->tower_id);
        }
    
        if ($this->bedrooms != 0) {
            $types = UnitType::where('bedrooms', $this->bedrooms)->pluck('id')->toArray();
            $units = $units->whereIn('unit_type_id', $types);
        }
    
        // **Aquí mantenemos la paginación de Livewire**
        $units = $units->orderBy('status', 'desc')->paginate(12);
    
        // Cargamos datos adicionales
        $unit_types = UnitType::all();
        $towers = Tower::all();
    
        return view('livewire.pages.search-page', compact('units', 'unit_types', 'towers'))
            ->layout('layouts.public-base');
    }
}
