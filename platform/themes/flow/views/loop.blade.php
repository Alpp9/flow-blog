@php Theme::layout('homepage'); @endphp
<main>
    {!! Theme::partial('components.headers.' . theme_option('category_title_layout', 'layout-1')) !!}
    <div class="container">
        <div class="pt-65 pb-35">
            @include(Theme::getThemeNamespace() . '::views.templates.posts', compact('posts'))
        </div>
    </div>
</main>
