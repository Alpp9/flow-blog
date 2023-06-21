<?php

namespace Botble\Setting\Http\Requests;

use Botble\Base\Facades\Assets;
use Botble\Support\Http\Requests\Request;
use DateTimeZone;
use Illuminate\Validation\Rule;

class SettingRequest extends Request
{
    public function rules(): array
    {
        return apply_filters('cms_settings_validation_rules', [
            'admin_email' => 'nullable|array',
            'default_admin_theme' => Rule::in(array_keys(Assets::getThemes())),
            'time_zone' => Rule::in(DateTimeZone::listIdentifiers()),
        ]);
    }
}
