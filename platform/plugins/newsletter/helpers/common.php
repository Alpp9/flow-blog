<?php

if (! function_exists('render_newsletter_subscribe_form')) {
    /**
     * @deprecated
     */
    function render_newsletter_subscribe_form(array $hiddenFields = []): string
    {
        return view('plugins/newsletter::partials.form', compact('hiddenFields'))->render();
    }
}
