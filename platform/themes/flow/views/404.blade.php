@php
SeoHelper::setTitle(__('404 - Not found'));
Theme::fire('beforeRenderTheme', app(\Botble\Theme\Contracts\Theme::class));
@endphp

{!! Theme::partial('header') !!}

<!-- Start Main content -->
<main class="bg-brand-4">
    <section class="pt-150 pb-150">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <img class="mb-30" src="{{ Theme::asset()->url('images/404.png') }}" loading="lazy"
                        alt="{{ __('Not found') }}">
                    <h2 class="headline-1 font-heading">{{ __('Page Not Found') }}</h2>
                    <p class="font-lg text-grey-700">
                        {{ __('The link you clicked may be broken or the page may have been removed.') }}<br>
                        {{ __('visit the') }} <a href="{{ route('public.index') }}"> <strong> {{ __('Homepage') }}</strong></a> {{ __('or') }} <a
                            href="{{ route('public.single', 'contact') }}"><strong>{{ __('Contact us') }}</strong></a>
                        {{ __('about the problem') }}
                    </p>
                    <form action="{{ route('public.search') }}" class="mt-50 w-50 m-auto" id="commentForm">
                        <div class="form-group">
                            <input class="form-control bg-white" name="q" id="q" type="text"
                                placeholder="{{ __('Search...') }}">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- End Main content -->
{!! Theme::partial('footer') !!}
