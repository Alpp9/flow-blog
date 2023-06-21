<?php

namespace Botble\Member\Http\Requests;

use Botble\Support\Http\Requests\Request;
use RvMedia;

class MemberChangeAvatarRequest extends Request
{
    public function rules(): array
    {
        return [
            'avatar' => RvMedia::imageValidationRule(),
        ];
    }
}
