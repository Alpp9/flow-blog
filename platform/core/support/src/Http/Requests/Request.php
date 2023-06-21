<?php

namespace Botble\Support\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

abstract class Request extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }
}
