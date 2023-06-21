<div class="loop-list mb-md-30">
    <div class="recent-posts pb-65 position-relative">
        <div class="row">
            @foreach($posts as $post)
                <article class="col-lg-4 col-md-6 mb-40 wow fadeIn animated">
                    {!! Theme::partial('components.post-card-1', ['post' => $post]) !!}
                </article>
            @endforeach
        </div>
    </div>

    <div class="pagination-area mb-30 wow fadeInUp animated justify-content-start">
        {!! $posts->withQueryString()->links() !!}
    </div>
</div>
