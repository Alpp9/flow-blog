<?php

use Botble\Widget\AbstractWidget;

class NewsletterWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => 'Newsletter widget',
            'subname' => '',
            'description' => __('Widget to display newsletter form'),
        ]);
    }
}
