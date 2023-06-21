<div class="category categories-grid pb-65 position-relative">
    <div class="container">
        @if ($posts->count() > 0)
        <div class="row">
            @foreach($posts as $post)
            <article class="col-lg-4 col-md-6 mb-40 wow fadeIn animated">
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

