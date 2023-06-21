@php
    Theme::set('afterHeader', '<div class="bg-square"></div>');
@endphp
<section class="featured-slider-1 pt-65 pb-65 posts-slider-style-1">
    <div class="position-relative">
        <div class="featured-slider-1-arrow color-white"></div>
        <div class="container">
            <div class="hero-1 featured-slider-1-items mb-65">
                @foreach ($posts as $post)
                <div class="slider-single">
                    <div class="row">
                        <div class="col-lg-6 align-self-center">
                            <div class="post-meta-1 mb-20">
                                @php $category = $post->categories->first(); @endphp
                                @if ($category)
                                    <a href="{{ $category->url }}"><span
                                        class="tag-category {{ random_color() }} shadown-1 text-dark button-shadow hover-up-3">{{ $category->name }}</span></a>
                                @endif
                                <span class="post-date text-muted font-md">{{ $post->created_at->format('F d, Y') }}</span>
                            </div>
                            <h2 class="post-title mb-30">
                                <a href="{{ $post->url }}">
                                    {{ $post->name }}
                                </a>
                            </h2>
                            <div class="post-excerpt text-grey-400 mb-30">
                                {{ $post->description }}
                            </div>
                            @if(class_exists($post->author_type) && $post->author)
                            <div class="post-meta-2 font-md d-flext align-self-center mb-md-30">
                                <a  href="{{ $post->author->url }}">
                                    <img src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->author->name }}">
                                    <span class="author-name">{{ $post->author->name }}</span>
                                </a>
                            </div>
                            @endif
                        </div>
                        <div class="col-lg-6">
                            <img class="border-radius-10" data-lazy="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <div class="container">
        <div class="featured-slider-1-nav row">
            @foreach ($posts as $post)
            <div class="col d-flex transition-normal latest-small-thumb">
                <div class="post-thumb d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                    <a class="color-white" href="{{ $post->url }}">
                        <img src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" loading="lazy" alt="">
                    </a>
                </div>
                <div class="post-content media-body align-self-center">
                    <h5 class="post-title mb-15 text-limit-2-row font-medium">
                        <a href="{{ $post->url }}">
                            {{ $post->name }}
                        </a>
                    </h5>
                    <div class="entry-meta meta-1 float-left font-sm">
                        <span class="post-on">{{ $post->created_at->format('F d, Y') }}</span>
                        <span class="post-by has-dot">{{ number_format($post->views) }} {{ __('views') }}</span>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
