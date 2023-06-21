<?php

use Botble\Widget\AbstractWidget;

class PopularPostsWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => 'Popular Posts',
            'description' => __('Widget to display popular posts'),
            'number_display' => 5,
        ]);
    }
}
