@php Theme::layout('homepage'); @endphp
<main>
    {!! Theme::partial('components.headers.layout-1', ['description' =>BaseHelper::clean(__('We found :total articles for <strong>":title"</strong>', ['total' => $posts->total(), 'title' => $tag->name]))]) !!}
    <div class="container">
        <div class="pt-65 pb-35">
            {!! Theme::partial('loop-list', compact('posts')) !!}
        </div>
    </div>
</main>
