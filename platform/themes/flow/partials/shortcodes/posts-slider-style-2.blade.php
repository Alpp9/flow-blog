<section class="post-slider-style-2 pt-65 pb-65 post-slide-style-2">
    <div class="container">
        <h3 class="mb-65 font-heading wow fadeIn animated">{{ $title }}</h3>
        <div class="position-relative wow fadeIn animated">
            <div class="slide-fade slide-fade-inner bg-brand-4 border-radius-10 p-65 p-sm-25">
                @foreach ($posts->skip(3) as $post)
                <div class="slide-fade-item">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="post-meta-1 mb-20 mt-50">
                                @php $category = $post->categories->first(); @endphp
                                @if ($category)
                                    <a href="{{ $category->url }}"><span
                                        class="tag-category {{ random_color() }} shadown-1 text-dark button-shadow hover-up-3">{{ $category->name }}</span></a>
                                @endif
                                <span class="post-date text-muted font-md">{{ $post->created_at->format('F d, Y') }}</span>
                            </div>
                            <h2 class="post-title mb-30 fw-700">
                                <a href="{{ $post->url }}">
                                    {{ $post->name }}
                                </a>
                            </h2>
                            <div class="post-excerpt text-grey-400 mb-30">
                                {{ $post->description }}
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <figure class="position-relative">
                                <img loading="lazy" class="border-radius-10 post-thumb" src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">
                            </figure>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="slide-fade-arrow-cover"></div>
        </div>
        <div class="row wow fadeIn animated mt-65">
            @foreach ($posts->take(3) as $post)
                <div class="col-lg-4 mb-md-30">
                    <div class="d-flex latest-small-thumb">
                        <div class="post-thumb d-flex mr-15 border-radius-10 img-hover-scale overflow-hidden">
                            <a class="color-white" href="{{ $post->url }}" tabindex="0">
                                <img loading="lazy" src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">
                            </a>
                        </div>
                        <div class="post-content media-body align-self-center">
                            <h5 class="post-title mb-15 text-limit-3-row font-medium">
                                <a href="{{ $post->url }}">{{ $post->name }}</a>
                            </h5>
                            <div class="entry-meta meta-1 float-left font-sm">
                                <span class="post-on has-dot">{{ $post->created_at->format('F d, Y') }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
