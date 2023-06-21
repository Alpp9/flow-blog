<section class="bg-brand-4 pt-65 pb-65 slide-galleries">
    <div class="container pb-65">
        <div class="header-title-2 text-center">
            <h3 class="font-heading wow fadeIn animated">{!! BaseHelper::clean($title) !!}</h3>
        </div>
        <div class="position-relative wow fadeIn animated">
            <div class="carousel-3-columns">
                @foreach (get_galleries($limit) as $gallery)
                <div class="instagram-card border-radius-10 p-30">
                    <figure class="img-hover-scale overflow-hidden border-radius-10">
                        <a href="{{ $gallery->url }}"><img src="{{ RvMedia::getImageUrl($gallery->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{ $gallery->name }}"></a>
                    </figure>
                </div>
                @endforeach
            </div>
            <div class="carousel-3-columns-arrow-cover mt-30"></div>
        </div>
    </div>
</section>
