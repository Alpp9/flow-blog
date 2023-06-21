<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be override by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function ($theme) {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme) {
            $themeInfo = json_decode(file_get_contents(dirname(__FILE__) . '/theme.json'), true);
            $version = $themeInfo['version'];

            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('bootstrap-css', 'css/vendor/bootstrap.min.css', [], [], $version);
            $theme->asset()->usePath()->add('owl-carousel-css', 'css/vendor/owl.carousel.min.css', [], [], $version);
            $theme->asset()->usePath()->add('ticker-style', 'css/vendor/ticker-style.css', [], [], $version);
            $theme->asset()->usePath()->add('elegant-icons', 'css/vendor/elegant-icons.css', [], [], $version);
            $theme->asset()->usePath()->add('slick-css', 'css/vendor/slick.css', [], [], $version);
            $theme->asset()->usePath()->add('slicknav-css', 'css/vendor/slicknav.css', [], [], $version);
            $theme->asset()->usePath()->add('animate-css', 'css/vendor/animate.min.css', [], [], $version);
            $theme->asset()->usePath()->add('nice-select-css', 'css/vendor/nice-select.css', [], [], $version);
            $theme->asset()->usePath()
                ->add('perfect-scrollbar-css', 'css/vendor/perfect-scrollbar.css', [], [], $version);

            $theme->asset()->usePath()->add('style', 'css/style.css', [], [], $version);
            if (BaseHelper::siteLanguageDirection() == 'rtl') {
                $theme->asset()->usePath()->add('rtl', 'css/rtl.css', [], [], $version);
            }

            $theme->asset()->container('footer')->usePath()->add('modernizr', 'js/vendor/modernizr-3.5.0.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery', 'js/vendor/jquery-3.6.0.min.js');
            $theme->asset()->container('footer')->usePath()->add('popper', 'js/vendor/popper.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('bootstrap', 'js/vendor/bootstrap.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()
                ->add('slicknav', 'js/vendor/jquery.slicknav.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('slick', 'js/vendor/slick.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('wow', 'js/vendor/wow.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()
                ->add('scrollUp', 'js/vendor/jquery.scrollUp.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()
                ->add('theia', 'js/vendor/jquery.theia.sticky.js', ['jquery']);

            $theme->asset()->container('footer')->usePath()->add('script', 'js/script.js', ['jquery'], [], $version);

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme) {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            },
        ],
    ],
];
