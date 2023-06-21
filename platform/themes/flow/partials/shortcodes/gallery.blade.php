@php
    Theme::asset()
            ->usePath(false)
            ->add('lightgallery-css', asset('vendor/core/plugins/gallery/css/lightgallery.min.css'), [], [], '1.0.0')
            ->add('gallery-css', asset('vendor/core/plugins/gallery/css/gallery.css'), [], [], '1.0.0');

        Theme::asset()
            ->container('footer')
            ->usePath(false)
            ->add('lightgallery-js', asset('vendor/core/plugins/gallery/js/lightgallery.min.js'), ['jquery'], [],
                '1.0.0')
            ->add('imagesloaded', asset('vendor/core/plugins/gallery/js/imagesloaded.pkgd.min.js'), ['jquery'], [],
                '1.0.0')
            ->add('masonry', asset('vendor/core/plugins/gallery/js/masonry.pkgd.min.js'), ['jquery'], [], '1.0.0')
            ->add('gallery-js', asset('vendor/core/plugins/gallery/js/gallery.js'), ['jquery'], [], '1.0.0');
@endphp
@if(!empty($title))
<div class="gallery__title">
    <h3>{{ $title }}</h3>
</div>
@endif
<div class="gallery gallery-shortcode">
    @foreach (gallery_meta_data($gallery) as $image)
        @if ($image)
            <div class="item" data-src="{{ RvMedia::getImageUrl(Arr::get($image, 'img')) }}" data-sub-html="{{BaseHelper::clean(Arr::get($image, 'description')) }}">
                <div class="photo-item">
                    <div class="thumb">
                        <a href="{{BaseHelper::clean(Arr::get($image, 'description')) }}">
                            <img class="border-radius-5" src="{{ RvMedia::getImageUrl(Arr::get($image, 'img')) }}" alt="{{BaseHelper::clean(Arr::get($image, 'description')) }}">
                        </a>
                    </div>
                </div>
            </div>
        @endif
    @endforeach
</div>
