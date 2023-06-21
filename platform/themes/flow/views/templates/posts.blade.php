<div class="row">
    @if('left-sidebar' === theme_option('category_layout'))
        <div class="col-lg-4 primary-sidebar sticky-sidebar">
            {!! display_ad('top-sidebar-ads', ['class' => 'mb-30']) !!}
            {!! dynamic_sidebar('primary_sidebar') !!}
            {!! display_ad('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
        </div>
    @endif
    @if ('default' === theme_option('category_layout') || ('right-sidebar' !== theme_option('category_layout') && 'left-sidebar' !== theme_option('category_layout')))
        <div class="col-lg-12">
    @else
        <div class="col-lg-8">
    @endif
            {!! Theme::partial('loop-list', compact('posts')) !!}
        </div>

    @if('right-sidebar' === theme_option('category_layout'))
        <div class="col-lg-4 primary-sidebar sticky-sidebar">
            {!! display_ad('top-sidebar-ads', ['class' => 'mb-30']) !!}
            {!! dynamic_sidebar('primary_sidebar') !!}
            {!! display_ad('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
        </div>
    @endif

</div>
