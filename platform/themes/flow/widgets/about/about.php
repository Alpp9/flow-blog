<?php

use Botble\Widget\AbstractWidget;

class AboutWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => __('About me'),
            'description' => __('Introduction about the author of this blog'),
            'image' => null,
        ]);
    }
}
