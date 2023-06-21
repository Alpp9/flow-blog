@php Theme::layout('homepage'); @endphp
<main>
    {!! Theme::partial('components.headers.layout-1', ['description' => $category->description]) !!}
    <div class="container">
        <div class="pt-65 pb-35">
            @include(Theme::getThemeNamespace() . '::views.templates.posts', compact('posts'))
        </div>
    </div>
</main>

