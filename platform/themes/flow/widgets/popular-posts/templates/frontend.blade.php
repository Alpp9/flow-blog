<div class="sidebar-widget widget-popular-posts mb-50 wow fadeInUp animated">
    <div class="widget-header-1 position-relative mb-30">
        <h5 class="mt-5 mb-30">{{ $config['name'] }}</h5>
    </div>
    <div class="post-block-list post-module-1">
        <ul class="list-post">
            @foreach(get_popular_posts($config['number_display']) as $post)
                <li class="wow fadeIn">
                    <div class="d-flex latest-small-thumb">
                        <div
                            class="post-thumb d-flex mr-15 border-radius-10 img-hover-scale overflow-hidden">
                            <a class="color-white" href="{{ $post->url }}" tabindex="0">
                                <img src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">
                            </a>
                        </div>
                        <div class="post-content media-body align-self-center">
                            <h5 class="post-title mb-15 text-limit-3-row font-medium">
                                <a href="{{ $post->url }}">{{ $post->name }}</a>
                            </h5>
                            <div class="entry-meta meta-1 float-left font-sm">
                                <span class="post-on has-dot">{{ $post->created_at->format('d M, Y') }}</span>
                            </div>
                        </div>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>
