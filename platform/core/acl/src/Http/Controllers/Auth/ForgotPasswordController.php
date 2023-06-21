<?php

namespace Botble\ACL\Http\Controllers\Auth;

use Botble\Base\Facades\Assets;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\ACL\Traits\SendsPasswordResetEmails;
use Illuminate\Http\Request;

class ForgotPasswordController extends BaseController
{
    use SendsPasswordResetEmails;

    public function __construct(protected BaseHttpResponse $response)
    {
        $this->middleware('guest');
    }

    public function showLinkRequestForm()
    {
        PageTitle::setTitle(trans('core/acl::auth.forgot_password.title'));

        Assets::addScripts(['jquery-validation', 'form-validation'])
            ->addStylesDirectly('vendor/core/core/acl/css/animate.min.css')
            ->addStylesDirectly('vendor/core/core/acl/css/login.css')
            ->removeStyles([
                'select2',
                'fancybox',
                'spectrum',
                'simple-line-icons',
                'custom-scrollbar',
                'datepicker',
            ])
            ->removeScripts([
                'select2',
                'fancybox',
                'cookie',
            ]);

        return view('core/acl::auth.forgot-password');
    }

    protected function sendResetLinkResponse(Request $request, $response)
    {
        return $this->response->setMessage(trans($response))->toResponse($request);
    }
}
