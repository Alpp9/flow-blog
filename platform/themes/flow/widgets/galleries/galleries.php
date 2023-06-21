<?php

use Botble\Widget\AbstractWidget;

class GalleriesWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => __('Galleries'),
            'description' => __('Widget to display galleries'),
            'number_display' => 6,
        ]);
    }
}
