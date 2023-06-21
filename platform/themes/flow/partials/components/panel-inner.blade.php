<!--Categories-->
<div class="sidebar-widget widget-creative-menu">
    <ul>
        @foreach(get_featured_categories(5) as $category)
            <li><a href="{{ $category->url }}">{{ $category->name }}</a> <sup>{{ $category->posts_count }}</sup></li>
        @endforeach
    </ul>
</div>

<div class="offcanvas-copyright mt-65">
    <h6 class="text-muted text-uppercase mb-20 font-heading text-white">{{ theme_option('site_title') }}</h6>
    @if (theme_option('site_description'))
        <p>
            {{ theme_option('site_description') }}
        </p>
    @endif
    @if (theme_option('address'))
        <p><strong class="color-black">{{ __('Address') }}</strong><br>
            {{ theme_option('address') }}
        </p>
    @endif
    @if (theme_option('phone'))
        <p><strong class="color-black">{{ __('Phone') }}</strong><br>
            {{ theme_option('phone') }}
        </p>
    @endif
</div>
