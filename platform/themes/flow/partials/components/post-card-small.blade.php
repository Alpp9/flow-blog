<div class="row">
    <div class="col-md-5">
        <div class="post-thumb position-relative"
            style="background-image: url({{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }})">
            <a class="img-link" href="{{$post->url}}"></a>
        </div>
    </div>
    <div class="col-md-7 align-self-center">
        <div class="post-content pr-30">
            <div class="post-meta-1 mb-20">
                @php $category = $post->categories->first(); @endphp
                @if ($category)
                <a href="{{ $category->url }}"><span
                        class="tag-category {{ random_color() }} shadown-1 button-shadow hover-up-3 text-dark">{{ $category->name }}</span></a>
                @endif
            </div>
            <h4 class="post-title mb-40">
                <a href="{{ $post->url }}">{{ $post->name }}</a>
            </h4>
            @if(class_exists($post->author_type) && $post->author)
            <div class="post-meta-2 font-md d-flex">
                <a class="align-self-center" href="{{ $post->author->url }}">
                    <img src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" loading="lazy" alt="{{ $post->author->name }}">
                </a>
                <div class="mb-0">
                    <a  href="{{ $post->author->url }}"> <strong
                            class="author-name">{{ $post->author->name }}</strong></a>
                    <p class="post-on font-sm text-grey-400 mb-0">
                        {{ $post->created_at->diffForHumans() }}</p>
                </div>
            </div>
            @endif
        </div>
    </div>
</div>
