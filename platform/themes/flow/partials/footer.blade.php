@if (theme_option('footer_content_1_enabled', 'yes') == 'yes')
{!! dynamic_sidebar('footer_sidebar_1') !!}
@endif
<footer class="bg-dark">
    <div class="container">
        @if (theme_option('footer_content_2_enabled', 'yes')  == 'yes')
        <div class="row mb-65 pt-60">
            <div class="col-md-6">
                <div class="logo wow fadeIn animated">
                    @if (theme_option('logo_white'))
                        <a href="{{ route('public.index') }}"><img class="logo" loading="lazy"
                                src="{{ RvMedia::getImageUrl(theme_option('logo_white')) }}"
                                alt="{{ setting('site_title') }}"></a>
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                @if (theme_option('action_button_text') && theme_option('action_button_url'))
                    <div
                        class="d-flex text-right text-sm-left align-self-center justify-content-end wow fadeIn animated">
                        @if (theme_option('action_title'))
                            <h5 class="mr-15 text-white mb-0 align-self-center">{{ theme_option('action_title') }}
                            </h5>
                        @endif
                        <a href="{{ url(theme_option('action_button_url')) }}"
                            class="btn btn-lg bg-brand-1 text-dark">{{ theme_option('action_button_text') }}</a>
                    </div>
                @endif
            </div>
            <div class="col-12">
                <div class="bottom-line mt-40"></div>
            </div>
        </div>
        @endif
        @if (theme_option('footer_content_3_enabled', 'yes')  == 'yes')
        <div class="row bottom-area-2 mb-20">
            <div class="col-lg-4 col-md-6">
                <div class="sidebar-widget widget-about wow fadeIn animated mb-30">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30">{{ __('About') }}</h5>
                    </div>
                    <div class="textwidget">
                        @if (theme_option('site_description'))
                            <p>
                                {{ theme_option('site_description') }}
                            </p>
                        @endif
                        @if (theme_option('address'))
                            <p>
                                <strong class="color-black">{{ __('Address') }}</strong>
                                <br>
                                {{ theme_option('address') }}
                            </p>
                        @endif
                        @if (theme_option('phone'))
                            <p>
                                <strong class="color-black">{{ __('Phone') }}</strong>
                                <br>
                                {{ theme_option('phone') }}
                            </p>
                        @endif
                    </div>
                </div>
            </div>
            {!! dynamic_sidebar('footer_sidebar_2') !!}
        </div>
        @endif
        @if (theme_option('footer_content_4_enabled', 'yes')  == 'yes')
        <div class="footer-copy-right pt-30 wow fadeIn animated font-md">
            <p class="float-md-left font-small text-muted">
                {{ theme_option('copyright') }} @if (theme_option('designed_by')) - {{ theme_option('designed_by') }} @endif
            </p>
            @if (theme_option('social_links'))
                <ul class="social-network d-inline-block list-inline color-white mb-20 float-right">
                    @foreach (json_decode(theme_option('social_links'), true) as $socialLink)
                        @if (count($socialLink) == 3)
                            <li class="list-inline-item"><a href="{{ $socialLink[2]['value'] }}" target="_blank"
                                    title="{{ $socialLink[0]['value'] }}"><i
                                        class="elegant-icon {{ $socialLink[1]['value'] }}"></i></a></li>
                        @endif
                    @endforeach
                </ul>
            @endif
        </div>
        @endif
    </div>
</footer>
<!-- End Footer -->
<div class="dark-mark"></div>
<!-- Vendor JS-->
{!! Theme::footer() !!}
</body>

</html>
