@php Theme::layout('no-breadcrumbs'); @endphp
<div class="container">
    <section class="pt-65 pb-65">
        <div class="row">
            <div class="col-lg-6 align-self-center mb-md-30">
                <h2 class="display-2 mb-15 font-heading">{{ $author->name }}</h2>
                <p class="font-lg text-grey-400 mb-30">
                    {!! BaseHelper::clean($author->description) !!}
                </p>
            </div>
            <div class="col-lg-6">
                <img src="{{ RvMedia::getImageUrl($author->avatar, null, false, RvMedia::getDefaultImage()) }}" loading="lazy" alt="">
            </div>
        </div>
    </section>

    @if ($posts->count() > 0)
        <div class="row">
            @foreach ($posts as $post)
                <article class="col-lg-4 col-md-6 mb-40 wow fadeIn animated">
                    {!! Theme::partial('components.post-card-1', compact('post')) !!}
                </article>
            @endforeach
            <div>
                {!! $posts->withQueryString()->links() !!}
            </div>
        </div>
    @else
        <p>{{ __('No posts found!') }}</p>
    @endif

</div>
