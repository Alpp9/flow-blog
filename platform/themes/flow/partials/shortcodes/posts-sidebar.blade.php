<section class="recent-posts pb-65 posts-sidebar">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="header-title mb-25">
                    <h3 class="font-heading mb-0 wow fadeIn  animated">{!! BaseHelper::clean($title) !!}</h3>
                </div>
                <div class="loop-list loop-list-style-1  mb-md-30">
                    @foreach($posts as $post)
                    <article class="hover-up-3 border-radius-10 overflow-hidden wow fadeIn animated">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="post-thumb position-relative"
                                    style="background-image: url({{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }})">
                                    <a class="img-link" href="{{ $post->url }}"></a>
                                </div>
                            </div>
                            <div class="col-md-7 align-self-center">
                                <div class="post-content pr-30">
                                    <div class="post-meta-1 mb-20">
                                        @if ($post->categories->count())
                                            <a href="{{ $post->categories->first()->url }}"><span
                                                class="tag-category {{ random_color() }} shadown-1 text-dark button-shadow hover-up-3">{{ $post->categories->first()->name }}</span></a>
                                        @endif
                                    </div>
                                    <h4 class="post-title mb-40">
                                        <a href="{{ $post->url }}">{{ $post->name }}</a>
                                    </h4>
                                    <div class="d-flex">
                                        @if(class_exists($post->author_type) && $post->author)
                                        <div class="post-meta-2 font-md d-flex w-70">
                                            <a class="align-self-center" href="{{ $post->author->url }}">
                                                <img loading="lazy" src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->author->name }}">
                                            </a>
                                            <div class="mb-0">
                                                <a href="{{ $post->author->url }}">
                                                    <strong class="author-namge">{{ $post->author->name }}</strong>
                                                </a>
                                                <p class="post-on font-sm text-grey-400 mb-0">
                                                    {{ $post->created_at->diffForHumans() }}</p>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                    @endforeach
                </div>
            </div>
            <div class="col-lg-4 primary-sidebar sticky-sidebar">

                <div class="theiaStickySidebar">
                    <div class="widget-area">
                        {!! display_ad('top-sidebar-ads', ['class' => 'mb-30']) !!}
                        {!! dynamic_sidebar('primary_sidebar') !!}
                        {!! display_ad('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
