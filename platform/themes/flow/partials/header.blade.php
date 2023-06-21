<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>

        <link href="https://fonts.googleapis.com/css2?family={{ urlencode(theme_option('font_heading', 'Poppins')) }}:wght@400;500;600;700;900&family={{ urlencode(theme_option('font_body', 'Source Sans Pro')) }}:ital,wght@0,400;0,600;0,700;0,900;1,400;1,600;1,700;1,900&display=swap" rel="stylesheet" type="text/css">

        <!-- Fonts-->
        <!-- CSS Library-->
        <style>
            :root {
                --color-brand-1: {{ theme_option('color_brand_1', '#ffcda3') }};
                --color-brand-2: {{ theme_option('color_brand_2', '#fce2ce') }};
                --color-brand-3: {{ theme_option('color_brand_3', '#ffede5') }};
                --color-brand-4: {{ theme_option('color_brand_4', '#fff5ef') }};
                --color-primary: {{ theme_option('color_primary', '#87c6e3') }};
                --color-secondary: {{ theme_option('color_secondary', '#455265') }};
                --color-success: {{ theme_option('color_success', '#76e1c6') }};
                --color-danger: {{ theme_option('color_danger', '#f0a9a9') }};
                --color-warning: {{ theme_option('color_warning', '#e6bf7e') }};
                --color-info: {{ theme_option('color_info', '#58c1c8') }};
                --color-grey-900: {{ theme_option('color_grey_900', '#101010') }};
                --color-grey-700: {{ theme_option('color_grey_700', '#484848') }};
                --color-grey-400: {{ theme_option('color_grey_400', '#999999') }};
                --color-grey-100: {{ theme_option('color_grey_100', '#9c9c9c') }};
                --color-light: {{ theme_option('color_light', '#F3F3F3') }};
                --color-dark: {{ theme_option('color_dark', '#111111') }};
                --color-link: {{ theme_option('color_link', '#222831') }};
                --color-muted: {{ theme_option('color_muted', '#9b9b9b') }};
                --color-white: {{ theme_option('color_white', '#FFFFFF') }};
                --primary-border-color: {{ theme_option('primary_border_color', '#9b9b9b') }};
                --secondary-border-color: {{ theme_option('secondary_border_color', '#f0f8ff') }};
                --mutted-border-color: {{ theme_option('mutted_border_color', '#f0f8ff') }};
                --font-body: {{ theme_option('font_body', 'Source Sans Pro') }}, sans-serif;
                --font-heading: {{ theme_option('font_heading', 'Poppins') }}, sans-serif;
            }
        </style>

        {!! Theme::header() !!}
    </head>
    <body class="home-page-1" @if (BaseHelper::siteLanguageDirection() == 'rtl') dir="rtl" @endif>
        <div id="alert-container"></div>
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
        <div class="scroll-progress bg-grey-900"></div>
        @if (theme_option('preloader_enabled', 'yes') == 'yes')
            <!-- Start Preloader -->
            <div class="preloader text-center">
                <div class="loader"></div>
            </div>
        @endif

        @if (theme_option('sidebar_canvas_enabled', 'yes') == 'yes')
        <!--Offcanvas sidebar-->
        {!! Theme::partial('components.sidebar-canvas') !!}
        @endif
        <!-- Start Header -->
        @if (is_plugin_active('language'))
            <div class="topbar bg-brand-3 pt-15 pb-15 font-md d-block d-sm-none">
                <div class="container">
                    <div class="language-wrapper d-flex d-sm-none align-content-center">
                        {!! $languages = apply_filters('language_switcher') !!}
                    </div>
                </div>
            </div>
        @endif
        <header class="main-header header-sticky">
            <div class="position-relative">
                <div class="container align-self-center">
                    <div class="header-style-1">
                        <div class="logo">
                            @if (theme_option('logo'))
                                <a href="{{ route('public.index') }}"><img class="img-logo" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ setting('site_title') }}"></a>
                            @endif
                        </div>
                        <div class="main-nav d-none d-lg-block">
                            <nav>
                                <!--Desktop menu-->
                                {!! Menu::renderMenuLocation('main-menu', [
                                    'view'    => 'menu',
                                    'options' => ['class' => 'main-menu d-none d-lg-inline font-small'],
                                ]) !!}
                                <!--Mobile menu-->
                                {!! Menu::renderMenuLocation('main-menu', [
                                    'view'    => 'menu',
                                    'options' => ['class' => 'd-block d-lg-none text-muted', 'id' => 'mobile-menu'],
                                ]) !!}
                                </ul>
                            </nav>
                        </div>
                        <!--end: main-nav-->
                        <div class="header-right d-flex">
                            <button class="search-icon d-md-inline">
                                <img src="{{ Theme::asset()->url('images/svg/search.svg') }}" loading="lazy" alt="">
                            </button>
                            @if (is_plugin_active('language'))
                                <div class="header-select-language d-none d-md-inline d-lg-inline ml-2">
                                    <div class="language-wrapper">
                                        {!! apply_filters('language_switcher') !!}
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="mobile_menu d-lg-none d-block"></div>
                </div>
                @if (theme_option('sidebar_canvas_enabled', 'yes') == 'yes')
                <div class="off-canvas-toggle-cover d-inline-block">
                    <div class="off-canvas-toggle hidden d-inline-block" id="off-canvas-toggle">
                        <img class="svg-icon-24" src="{{ Theme::asset()->url('images/svg/menu.svg') }}" loading="lazy" alt="menu">
                    </div>
                </div>
                @endif
            </div>
        </header>
        @if (Theme::has('afterHeader'))
            {!! Theme::get('afterHeader') !!}
        @endif
        <!--Start search form-->
        {!! Theme::partial('components.search-form') !!}
