<div class="main-search-form bg-brand-4">
    <div class="container">
        <div class=" pt-50 pb-50 ">
            <div class="row mb-20">
                <div class="col-12 align-self-center main-search-form-cover m-auto">
                    <p class="text-center"><span class="display-1">{{ __('Search') }}</span></p>
                    <form action="{{ is_plugin_active('blog') ? route('public.search') : '#' }}" class="search-header">
                        <div class="input-group w-100">
                            <input type="text" name="q" class="form-control" placeholder="{{ __('Search stories, places and people') }}">
                            <div class="input-group-append">
                                <button class="btn btn-search bg-white" type="submit">
                                    <img class="svg-icon-24" src="{{ Theme::asset()->url('images/svg/search.svg') }}" loading="lazy" alt="Search">
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            @if (is_plugin_active('blog'))
                <div class="row mt-80 text-center">
                    <div class="col-12 font-small suggested-area">
                        <h5 class="suggested font-heading mb-20 text-grey-400"> <strong>{{ __('Suggested keywords:') }}</strong></h5>
                        <ul class="list-inline d-inline-block">
                            @foreach(get_popular_categories(5) as $category)
                                <li class="list-inline-item"><a href="{{ $category->url }}">{{ $category->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>
