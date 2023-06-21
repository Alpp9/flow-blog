<section class="pt-65 pb-35 bg-brand-4 section-header">
    <div class="container">
        <div class="archive-header">
            <div class="archive-header-title">
                <h1 class="font-heading">{!! isset($title) ?BaseHelper::clean($title) : SeoHelper::getTitle() !!}</h1>
            </div>
            {!! Theme::partial('breadcrumbs') !!}
        </div>
        <div class="archive-description">
            <p class="mb-0 font-lg">{!! isset($description) ?BaseHelper::clean($description) : '' !!}</p>
        </div>
    </div>
</section>
