@php
    Theme::set('subTitle', __(':count articles', ['count' => $posts->total()]));
@endphp
@if ($posts->count() > 0)
<div class="category categories-list pb-65">
    <div class="container">
        <div class="row">
            <div class="loop-list loop-list-style-1 mb-30">
                @foreach($posts as $post)
                <article class="hover-up-3 border-radius-10 overflow-hidden wow fadeIn animated">
                    {!! Theme::partial('components.post-card-small', compact('post')) !!}
                </article>
                @endforeach
            </div>
            <div class="pagination-area mb-30 wow fadeInUp animated justify-content-start">
                {!! $posts->withQueryString()->links() !!}
            </div>
        </div>
    </div>
</div>
@endif
