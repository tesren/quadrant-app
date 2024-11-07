<?php

namespace App\Nova;

use Laravel\Nova\Fields\ID;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Slug;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Http\Requests\NovaRequest;

class Tower extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var class-string<\App\Models\Tower>
     */
    public static $model = \App\Models\Tower::class;

    public function title(){
        return $this->name.' - '.$this->secondary_name;
    }

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'name', 'secondary_name'
    ];

    /**
     * Get the displayable singular label of the resource.
     *
     * @return string
     */
    public static function singularLabel()
    {
        return __('Torre');
    }

    public static function label()
    {
        return __('Torres');
    }


    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [
            ID::make()->sortable(),
            Text::make('Nombre', 'name')->sortable()->rules('required', 'max:50'),
            Text::make('Nombre secundario', 'secondary_name')->sortable()->rules('max:50'),

            Slug::make('Slug')->from('name')->rules('required', 'unique:towers,slug,{{resourceId}}', 'max:255')->sortable(),

            Text::make('View Box', 'viewbox')->hideFromIndex()->rules('required', 'max:150')->help('View Box del svg que debe ser igual a las dimensiones de la imagen usada'),
            Image::make('Fachada', 'tower_path')->help('Foto de la fachada donde se muestran las unidades marcadas')->disk('media'),

            HasMany::make('Unidades', 'units', Unit::class),

        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function cards(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function filters(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function lenses(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function actions(NovaRequest $request)
    {
        return [];
    }
}
