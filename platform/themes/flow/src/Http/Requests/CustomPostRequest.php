<?php

namespace Theme\Flow\Http\Requests;

use Botble\Blog\Http\Requests\PostRequest;

class CustomPostRequest extends PostRequest
{
    public function rules(): array
    {
        return parent::rules() + ['author_id' => 'required'];
    }
}
