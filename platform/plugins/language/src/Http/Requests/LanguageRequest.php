<?php

namespace Botble\Language\Http\Requests;

use Botble\Support\Http\Requests\Request;

class LanguageRequest extends Request
{
    public function rules(): array
    {
        return [
            'lang_name' => 'required|string|max:30|min:2',
            'lang_code' => 'required|string|max:10|min:2',
            'lang_locale' => 'required|string|max:10|min:2',
            'lang_flag' => 'required|string',
            'lang_is_rtl' => 'required|string',
            'lang_order' => 'required|numeric',
        ];
    }
}
