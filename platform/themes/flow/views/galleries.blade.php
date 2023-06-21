@php Theme::layout('homepage'); @endphp
<main>
    {!! Theme::partial('components.headers.layout-1') !!}
    <div class="container">
        <div class="pt-65 pb-35">
            @if (isset($galleries) && !$galleries->isEmpty())
                <div class="row">
                    @foreach ($galleries as $gallery)
                        <div class="col-6 col-md-4 mb-40 wow fadeIn  animated">
                            <div class="post-card-1 border-radius-10 hover-up">
                                <div class="post-thumb thumb-overlay img-hover-slide position-relative" style="background-image: url({{ RvMedia::getImageUrl($gallery->image, 'small', false, RvMedia::getDefaultImage()) }})">
                                    <a class="img-link" href="{{ $gallery->url }}"></a>
                                </div>
                                <div class="post-content p-30">
                                    <div class="post-card-content">
                                        <div class="entry-meta meta-1 float-left font-md mb-10">
                                            <span class="post-on has-dot">{{ $gallery->created_at->format('d F') }}</span>
                                        </div>
                                        <h5 class="post-title font-md">
                                            <a href="{{ $gallery->url }}">{{ $gallery->name }}</a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div>
</main>
