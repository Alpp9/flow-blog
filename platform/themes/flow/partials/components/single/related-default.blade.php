<div class="related-posts">
    <div class="post-module-3">
        <div class="widget-header-2 position-relative mb-30">
            <h5 class="mt-5 mb-30">{{ __('Related posts') }}</h5>
        </div>
        <div class="row">
            @foreach ($relatedPosts->take(2) as $post)
                <div class="col-md-6 mb-40 wow fadeIn  animated" >
                    {!! Theme::partial('components.post-card-1', compact('post')) !!}
                </div>
            @endforeach
        </div>
    </div>
</div>
