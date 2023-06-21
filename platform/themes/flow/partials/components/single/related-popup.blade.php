<div class="single-more-articles border-radius-10">
    <div class="widget-header-2 position-relative mb-30">
        <h5 class="mb-30 font-heading">{{ __('You might be interested in') }}</h5>
        <button class="single-more-articles-close"><i class="elegant-icon icon_close"></i></button>
    </div>
    <div class="post-block-list post-module-1">
        <ul class="list-post">
            @foreach ($relatedPosts->skip(2) as $relatedItem)
                <li>
                    <div class="d-flex latest-small-thumb">
                        <div class="post-thumb d-flex mr-15 border-radius-10 img-hover-scale overflow-hidden">
                            <a class="color-white" href="{{ $relatedItem->url }}">
                                <img src="{{ RvMedia::getImageUrl($relatedItem->image, 'thumb') }}" loading="lazy" alt="{{ $relatedItem->name }}">
                            </a>
                        </div>
                        <div class="post-content media-body align-self-center">
                            <h5 class="post-title mb-15 text-limit-3-row font-medium">
                                <a href="{{ $relatedItem->url }}">{{ $relatedItem->name }}</a>
                            </h5>
                            <div class="entry-meta meta-1 float-left font-sm">
                                <span class="post-on has-dot">{{ $relatedItem->created_at->format('d M, Y') }}</span>
                            </div>
                        </div>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>