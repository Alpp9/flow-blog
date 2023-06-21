@php

    $columnsBootstrap = 12 / $style;
@endphp
<section class="trending pt-65 pb-65 position-relative posts-grid">
    <div class="bg-square-2"></div>
    <div class="container">
        <div class="header-title mb-65">
            <h3 class="font-heading mb-0 wow fadeIn animated" >
                {!! BaseHelper::clean($title) !!}
            </h3>
            @if (!empty($subtitle))
            <span class="sub-header-title text-grey-400 wow fadeIn animated" >
                {!! BaseHelper::clean($subtitle) !!}
            </span>
            @endempty
        </div>
        <div class="row">
            @foreach ($posts as $post)
                <article class="col-md-{{ $columnsBootstrap }} mb-40 wow fadeIn  animated" >
                    @if($style == 2)
                    {!! Theme::partial('components.post-card-large', compact('post')) !!}
                    @else
                    {!! Theme::partial('components.post-card-1', compact('post')) !!}
                    @endif
                </article>
            @endforeach
        </div>
    </div>
</section>
