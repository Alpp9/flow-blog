<div class="post-card-1 border-radius-10 hover-up">
    <div class="post-thumb thumb-overlay img-hover-slide position-relative" style="background-image: url({{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }})">
        <a class="img-link" href="{{ $post->url }}"></a>
        <div class="post-meta-1 mb-20">
            @php $category = $post->categories->first(); @endphp
            @if ($category)
                <a href="{{ $category->url }}">
                    <span class="tag-category {{ random_color() }} shadown-1 button-shadow hover-up-3 text-dark">{{ $category->name }}</span></a>
            @endif
        </div>
    </div>
    <div class="post-content p-30">
        <div class="post-card-content">
            <div class="entry-meta meta-1 float-left font-md mb-10">
                <span class="post-on has-dot">{{ $post->created_at->format('d F') }}</span>
            </div>
            <h5 class="post-title font-md">
                <a href="{{ $post->url }}">{{ $post->name }}</a>
            </h5>
        </div>
    </div>
</div>
