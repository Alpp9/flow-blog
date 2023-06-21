<?php

namespace Botble\Base\Forms\Fields;

use Botble\Base\Facades\Assets;
use Kris\LaravelFormBuilder\Fields\FormField;

class MediaImagesField extends FormField
{
    protected function getTemplate(): string
    {
        Assets::addScripts(['jquery-ui']);

        return 'core/base::forms.fields.media-images';
    }
}