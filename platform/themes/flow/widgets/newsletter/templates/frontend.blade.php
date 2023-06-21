<section class="newsletter bg-brand-3 pt-100 pb-100">
    <div class="container">
        <div class="position-relative">
            <div class="row">
                <div class="col-lg-8">
                    <div class="header-title-2 mb-65">
                        <h4 class="mb-0 text-grey-400 wow fadeIn  animated">
                            <img src="{{ Theme::asset()->url('images/svg/send.svg') }}" alt="icon">
                            <span>{{ $config['name'] }}</span>
                        </h4>
                        @if (!empty($config['subname']))
                            <h3 class="font-heading wow fadeIn  animated">{{ $config['subname'] }}</h3>
                        @endif
                    </div>
                    <form class="form-subcriber newsletter-form mt-30 wow fadeIn animated" action="{{ route('public.newsletter.subscribe') }}" method="post">
                        @csrf
                        <div class="form-group d-flex">
                            <input type="email" name="email" class="form-control bg-white font-small" placeholder="{{ __('Enter your email') }}">
                            <button class="btn bg-dark text-white" type="submit">{{ __('Subscribe') }}</button>
                        </div>
                        @if (setting('enable_captcha') && is_plugin_active('captcha'))
                            <div class="form-group">
                                {!! Captcha::display() !!}
                            </div>
                        @endif
                    </form>
                </div>
            </div>
            <img src="{{ Theme::asset()->url('images/sketch-1.png') }}" alt="" class="sketch-1 wow fadeIn  animated">
        </div>
    </div>
</section>
