<div class="sidebar-widget widget-about mb-50 pt-30 pr-30 pb-30 pl-30 bg-white border-radius-5 has-border  wow fadeInUp animated">
    @if ($config['image'])
        <img class="about-author-img mb-25" src="{{ RvMedia::getImageUrl($config['image']) }}" alt="{{ __('Author') }}">
    @endif
    <h5 class="mb-20">{{ $config['name'] }}</h5>
    <p class="font-medium text-muted">{{ $config['description'] }}</p>
    @if (theme_option('social_links'))
        <strong>{{ __('Follow me') }}: </strong>
        <ul class="header-social-network d-inline-block list-inline color-white mb-20">
            @foreach(json_decode(theme_option('social_links'), true) as $socialLink)
                @if (count($socialLink) == 3)
                    <li class="list-inline-item"><a href="{{ $socialLink[2]['value'] }}" target="_blank" title="{{ $socialLink[0]['value'] }}"><i class="elegant-icon {{ $socialLink[1]['value'] }}"></i></a></li>
                @endif
            @endforeach
        </ul>
    @endif
</div>
