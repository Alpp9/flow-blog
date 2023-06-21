@php
$postFull = $posts[0];
Theme::set('subTitle', __(':count articles', ['count' => $posts->total()]));
@endphp
<div class="category categories-big pt-65 pb-65 position-relative">
    <div class="container">
        @if ($posts->count() > 0)
        <div class="row">
            <article class="col-md-12 first-article text-center mb-30">
                <div class="post-content">
                    <div class="post-meta-1 mb-20">
                        @foreach($postFull->categories as $category)
                        <a href="{{ $category->url }}"><span
                                class="tag-category {{ random_color() }} shadown-1 button-shadow hover-up-3 text-dark">{{ $category->name }}</span></a>
                        @endforeach
                        <span class="post-date text-muted font-md">{{ $postFull->created_at->format('d M, Y') }}</span>
                    </div>
                    <h1 class="post-title mb-30 fw-700">
                        <a href="{{ $postFull->url }}" tabindex="0">
                            {{ $postFull->name }}
                        </a>
                    </h1>
                    <div class="post-excerpt text-grey-400 mb-30">
                        {{ $postFull->description }}
                    </div>
                </div>
                <figure class="border-radius-10 hover-up-3">
                    <a href="{{ $postFull->url }}"><img
                            src="{{ RvMedia::getImageUrl($postFull->image, null, false, RvMedia::getDefaultImage()) }}"
                            alt="{{ $postFull->name }}" class="border-radius-10" loading="lazy"></a>
                </figure>
            </article>
            @foreach($posts->skip(1) as $post)

            <article class="col-lg-6 col-md-6 mb-30 wow fadeIn animated">
                {!! Theme::partial('components.post-card-large', compact('post')) !!}
            </article>
            @endforeach
        </div>
        <div class="pagination-area mb-30 wow fadeInUp animated justify-content-start">
            {!! $posts->withQueryString()->links() !!}
        </div>
        @endif
    </div>
</div>
