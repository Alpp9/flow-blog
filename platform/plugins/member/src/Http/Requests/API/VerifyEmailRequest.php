<?php

namespace Botble\Member\Http\Requests\API;

use Botble\Support\Http\Requests\Request;

class VerifyEmailRequest extends Request
{
    public function rules(): array
    {
        return [
            'email' => 'required|email|string',
            'token' => 'required',
        ];
    }
}
