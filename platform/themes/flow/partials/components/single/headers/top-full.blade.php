<div class="entry-header entry-header-style-2 pb-80 pt-80 mb-50 text-white" style="background-image: url({{ RvMedia::getImageUrl($post->image) }})">
    <div class="entry-header-content">
        <div class="post-meta-1 mb-20">
            @php $category = $post->categories->first(); @endphp
            @if ($category)
                <a href="{{ $category->url }}">
                    <span class="tag-category {{ random_color() }} shadown-1 button-shadow hover-up-3 text-dark">{{ $category->name }}</span></a>
            @endif
            <span class="post-date  text-white font-md">{{ $post->created_at->format('d M, Y') }}</span>
        </div>
        <h1 class="entry-title mb-50 fw-700">
            {{ $post->name }}
        </h1>
        <div class="post-meta-2 font-md d-flext align-self-center mb-md-30">
            @if(class_exists($post->author_type) && $post->author)
            <a href="{{ $post->author->url }}">
                <img src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->author->name }}" loading="lazy">
                <span class="author-name text-light">{{ $post->author->name }}</span>
            </a>
            @endif
            <span class="time-to-read has-dot text-light"> {{ get_time_to_read($post) }} {{ __('mins read') }}</span>
        </div>
    </div>
</div>
