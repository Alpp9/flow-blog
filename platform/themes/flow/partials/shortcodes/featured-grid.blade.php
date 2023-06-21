@php
    $featuredPosts = get_featured_posts(6, ['slugable', 'categories', 'categories.slugable']);
@endphp

<section class="featured-grid pt-65 pb-65">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="position-relative mb-md-30">
                    <div class="carousel-post-1 hover-up border-radius-10 overflow-hidden transition-normal position-relative wow .img-fadeIn animated">
                        <div class="slide-fade-2">
                            @foreach ($featuredPosts->skip(4) as $post)
                            <div class="position-relative post-thumb">
                                <div class="thumb-overlay position-relative" style="background-image: url({{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }})">
                                    <a class="img-link" href="{{ $post->url }}"></a>
                                    <div class="post-content-overlay text-white ml-30 mr-30 pb-30">
                                        <div class="post-meta-1 mb-20">
                                            @if ($post->categories->count())
                                                <a href="{{ $post->categories->first()->url }}"><span class="tag-category {{ random_color() }} shadown-1 text-dark button-shadow hover-up-3">{{ $post->categories->first()->name }}</span></a>
                                            @endif
                                            <span class="post-date text-white font-md">{{ $post->created_at->format('d F Y') }}</span>
                                        </div>
                                        <h3 class="post-title">
                                            <a class="text-white" href="{{ $post->url }}"> {{ $post->name }}</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="slide-fade-arrow-cover-2"></div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    @foreach ($featuredPosts->take(4) as $post)
                        <article class="col-lg-6 mb-30  mb-md-30">
                            <div class="position-relative post-thumb border-radius-10 overflow-hidden hover-up-3">
                                <div class="thumb-overlay position-relative" style="background-image: url({{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }})">
                                    <a class="img-link" href="{{ $post->url }}"></a>
                                    <div class="post-content-overlay text-white ml-30 mr-30 pb-30">
                                        <div class="post-meta-1 mb-20">
                                            @if ($post->categories->count())
                                                <a href="{{ $post->categories->first()->url }}"><span
                                                    class="tag-category {{ random_color() }} shadown-1 text-dark button-shadow hover-up-3">{{ $post->categories->first()->name }}</span></a>
                                            @endif
                                        </div>
                                        <h5 class="post-title">
                                            <a class="text-white" href="{{ $post->url }}">{{ $post->name }}</a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </article>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
