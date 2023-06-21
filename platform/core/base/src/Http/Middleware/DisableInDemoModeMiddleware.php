<?php

namespace Botble\Base\Http\Middleware;

use Botble\Base\Exceptions\DisabledInDemoModeException;
use Closure;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Http\Request;

class DisableInDemoModeMiddleware
{
    protected Application $app;

    public function __construct(Application $application)
    {
        $this->app = $application;
    }

    public function handle(Request $request, Closure $next)
    {
        if ($this->app->environment('demo')) {
            throw new DisabledInDemoModeException();
        }

        return $next($request);
    }
}
