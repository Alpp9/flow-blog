<section class="posts-slider-style-3 featured-grid pt-65">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="position-relative mb-md-30">
                    <div class="carousel-post-1 overflow-hidden transition-normal position-relative">
                        <div class="slide-fade-2">
                            @foreach ($posts as $post)
                            <div class="position-relative post-slider-3 pb-120">
                                <div class="thumb-overlay position-relative border-radius-10"
                                    style="background-image: url({{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }})">
                                    <a class="img-link" href="{{ $post->url }}"></a>
                                </div>
                                <div class="post-content-overlay layout-2">
                                    <div class="post-meta-1 mb-20">
                                        @php $category = $post->categories->first(); @endphp
                                        @if ($category)
                                            <a href="{{ $category->url }}"><span
                                                class="tag-category {{ random_color() }} shadown-1 text-dark button-shadow hover-up-3">{{ $category->name }}</span></a>
                                        @endif
                                        <span class="post-date font-md text-grey-400">{{ $post->created_at->format('F d, Y') }}</span>
                                    </div>
                                    <h2 class="post-title">
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
                                            <img loading="lazy" src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->author->name }}">
                                            <span class="author-name">{{ $post->author->name }}</span>
                                        </a>
                                    </div>
                                    @endif
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="slide-fade-arrow-cover-2 layout-2"></div>
                </div>
            </div>
        </div>
    </div>
</section>
