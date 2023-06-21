<section class="our-office pb-65">
    <div class="hr mb-65"></div>
    <div class="container">
        <h6 class="text-uppercase font-heading text-muted mb-15">{{ __('Address') }}</h6>
        <h2 class="font-heading mb-30">
            {!! BaseHelper::clean($title) !!}
        </h2>
        <p class="w-50 mb-50">
            {!! BaseHelper::clean($subtitle) !!}
        </p>
        @if (theme_option('contact_info_boxes'))
            <div class="row">
                @foreach(json_decode(theme_option('contact_info_boxes'), true) as $item)
                    @if (count($item) == 4)
                        <div class="col-lg-4 col-md-6 mb-40 wow fadeIn  animated">
                            <div class="post-card-1 border-radius-10 hover-up">
                                <div class="post-thumb thumb-overlay img-hover-slide position-relative" style="background-image: url({{ RvMedia::getImageUrl($item[3]['value'], null, false, RvMedia::getDefaultImage()) }})">
                                    <div class="post-meta-1 mb-20">
                                        <span class="tag-category bg-success shadown-1 text-dark button-shadow hover-up-3">{!! BaseHelper::clean($item[0]['value']) !!}</span>
                                    </div>
                                </div>
                                <div class="post-content p-30">
                                    <div class="post-card-content">
                                        <h5 class="post-title mb-15">
                                            <a href="#">{!! BaseHelper::clean($item[1]['value']) !!}</a>
                                        </h5>
                                        <p class="font-md">{!! BaseHelper::clean($item[2]['value']) !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        @endif
    </div>
</section>
