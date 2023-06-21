{!! Theme::partial('header') !!}
<main>
    <section class="pt-65 pb-35 bg-brand-4 section-header">
        <div class="container">
            <div class="archive-header">
                <div class="archive-header-title">
                    <h1 class="font-heading">{{ SeoHelper::getTitle() }}</h1>
                </div>
                {!! Theme::partial('breadcrumbs') !!}
            </div>
        </div>
    </section>
    <div class="container">
        <div class="pt-65 pb-35">
            {!! Theme::content() !!}
        </div>
    </div>
</main>
{!! Theme::partial('footer') !!}
