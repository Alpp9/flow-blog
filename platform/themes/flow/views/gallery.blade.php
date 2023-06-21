@php Theme::layout('homepage'); @endphp
<main>
    {!! Theme::partial('components.headers.layout-1') !!}
    <div class="container">
        <div class="pt-65 pb-35">
            <p>{{ $gallery->description }}</p>
            <div id="list-photo">
                @foreach (gallery_meta_data($gallery) as $image)
                    @if ($image)
                        <div class="item" data-src="{{ RvMedia::getImageUrl(Arr::get($image, 'img')) }}" data-sub-html="{{BaseHelper::clean(Arr::get($image, 'description')) }}">
                            <div class="photo-item">
                                <div class="thumb img-hover-scale overflow-hidden border-radius-10">
                                    <a href="{{ RvMedia::getImageUrl(Arr::get($image, 'img')) }}">
                                        <img src="{{ RvMedia::getImageUrl(Arr::get($image, 'img')) }}"  alt="{{BaseHelper::clean(Arr::get($image, 'description')) }}">
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
            <br>
            {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, Theme::partial('comments')) !!}
        </div>
    </div>
</main>
