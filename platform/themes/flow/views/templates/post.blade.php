@if ($post->image && $singleTitleLayout != 'top-full')
    <figure class="image mb-30 m-auto text-center border-radius-10 hover-up-3">
        <img class="border-radius-10" src="{{ RvMedia::getImageUrl($post->image) }}" loading="lazy" alt="post-title">
    </figure>
@endif
<article class="entry-wraper mb-50">
    <div class="excerpt mb-30">
        <p>
            {!! BaseHelper::clean($post->description) !!}
        </p>
    </div>

    <div class="entry-main-content wow fadeIn animated">
        @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($post)))
            {!! render_object_gallery($galleries, ($post->categories()->first() ?
            $post->categories()->first()->name
            : __('Uncategorized'))) !!}
        @endif
        {!! $post->content !!}
    </div>
    <div class="entry-bottom mt-50 mb-30 wow fadeIn animated">
        @if (!$post->tags->isEmpty())
            <div class="tags w-50 w-sm-100">
                <h5 class="mb-15">{{ __('Tags') }}: </h5>
                @foreach ($post->tags as $tag)
                    <a class="mt-3" href="{{ $tag->url }}" rel="tag">{{ $tag->name }}</a>
                @endforeach
            </div>
        @endif
        <div class="single-social-share clearfix wow fadeIn animated mb-15 w-50 w-sm-100">
            <ul class="header-social-network d-inline-block list-inline float-md-right mt-md-0 mt-4">
                <li class="list-inline-item text-muted"><span>{{ __('Share this :') }} </span></li>
                <li class="list-inline-item"><a class="social-icon fb text-xs-center" target="_blank"
                                                href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode($post->url) }}&title={{ $post->description }}"><i
                            class="elegant-icon social_facebook"></i></a></li>
                <li class="list-inline-item"><a class="social-icon tw text-xs-center" target="_blank"
                                                href="https://twitter.com/intent/tweet?url={{ urlencode($post->url) }}&text={{ $post->description }}"><i
                            class="elegant-icon social_twitter"></i></a></li>
                <li class="list-inline-item"><a class="social-icon pt text-xs-center" target="_blank"
                                                href="https://www.linkedin.com/shareArticle?mini=true&url={{ urlencode($post->url) }}&summary={{ rawurldecode($post->description) }}"><i
                            class="elegant-icon social_linkedin"></i></a></li>
            </ul>
        </div>
    </div>
    @if(class_exists($post->author_type) && $post->author)
        <div class="author-bio mt-50 border-radius-10 bg-white wow fadeIn animated">
            <div class="author-image mb-md-30">
                <a href="{{ $post->author->url }}">
                    <img class="avatar" src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" loading="lazy" alt="{{ $post->author->getFullName() }}">
                </a>
            </div>
            <div class="author-info">
                <a href="{{ $post->author->url }}">
                    <h4 class="font-weight-bold mb-20">
                        <span class="vcard author"><span class="fn">{{ $post->author->getFullName() }}</span></span>
                    </h4>
                </a>
                <p>{{ $post->author->description }}</p>
            </div>
        </div>
    @endif

    @if (theme_option('facebook_comment_enabled_in_post', 'yes') == 'yes')
        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, Theme::partial('comments')) !!}
    @endif

    @if (is_plugin_active('comment') && comment_object_enable($post))
        [comment type="{{ addslashes(get_class($post)) }}" type_id="{{ $post->id }}"][/comment]
    @endif

    @php $relatedPosts = get_related_posts($post->id, 2); @endphp

    @if ($relatedPosts->count() > 0)
        {!! Theme::partial('components.single.related-'. theme_option('related_style', 'default'), compact('relatedPosts')) !!}
    @endif
</article>
