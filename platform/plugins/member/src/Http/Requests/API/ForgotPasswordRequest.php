<?php

namespace Botble\Member\Http\Requests\API;

use Botble\Support\Http\Requests\Request;

class ForgotPasswordRequest extends Request
{
    public function rules(): array
    {
        return [
            'email' => 'required|email|string',
        ];
    }
}
