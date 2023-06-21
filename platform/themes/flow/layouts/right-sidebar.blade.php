{!! Theme::partial('header') !!}

<div class="container">
    <div class="archive-header pt-50">
        <div class="archive-header-title">
            <h1 class="font-heading mb-30">{{ SeoHelper::getTitle() }} @if (Theme::has('subTitle')) <sub>{!! BaseHelper::clean(Theme::get('subTitle')) !!}</sub> @endif</h1>
        </div>
        {!! Theme::partial('breadcrumbs') !!}
    </div>

    <div class="bt-1 border-color-1 mt-30 mb-50"></div>

    <div class="row">
        <div class="col-lg-8">
            {!! Theme::content() !!}
        </div>
        <div class="col-lg-4 primary-sidebar sticky-sidebar">
            {!! display_ad('top-sidebar-ads', ['class' => 'mb-30']) !!}
            {!! dynamic_sidebar('primary_sidebar') !!}
            {!! display_ad('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
            <br>
            <br>
        </div>
    </div>
</div>

{!! Theme::partial('footer') !!}
