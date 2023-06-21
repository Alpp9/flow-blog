@php
    Theme::layout('full');
    $singleTitleLayout = MetaBox::getMetaData($post, 'title_layout', true);
    $singleTitleLayout = $singleTitleLayout ?: theme_option('single_title_layout');
@endphp

<main>
    @if('top-full' === $singleTitleLayout)
        {!! Theme::partial('components.single.headers.top-full', compact('post')) !!}
    @endif
    <div class="container single-content">
        @if('default' === $singleTitleLayout)
        {!! Theme::partial('components.single.headers.default', compact('post')) !!}
        @endif
        <div class="row">
            @if('left-sidebar' === theme_option('single_layout'))
            <div class="col-lg-4 primary-sidebar sticky-sidebar">
                {!! display_ad('top-sidebar-ads', ['class' => 'mb-30']) !!}
                {!! dynamic_sidebar('primary_sidebar') !!}
                {!! display_ad('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
            </div>
            @endif
            @if('default' === theme_option('single_layout'))
            <div class="col-lg-12">
            @else
            <div class="col-lg-8">
            @endif
                @if('inline' === $singleTitleLayout)
                    {!! Theme::partial('components.single.headers.default', compact('post')) !!}
                @endif
                <!--figure-->
                @include(Theme::getThemeNamespace() . '::views.templates.post', compact('post'))
            </div>
            @if('right-sidebar' === theme_option('single_layout'))
            <div class="col-lg-4 primary-sidebar sticky-sidebar mb-5">
                {!! display_ad('top-sidebar-ads', ['class' => 'mb-30']) !!}
                {!! dynamic_sidebar('primary_sidebar') !!}
                {!! display_ad('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
            </div>
            @endif
        </div>
        <!--container-->
</main>
