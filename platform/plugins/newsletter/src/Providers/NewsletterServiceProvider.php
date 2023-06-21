<?php

namespace Botble\Newsletter\Providers;

use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Newsletter\Contracts\Factory;
use Botble\Newsletter\Facades\Newsletter as NewsletterFacade;
use Botble\Newsletter\Models\Newsletter;
use Botble\Newsletter\NewsletterManager;
use Botble\Newsletter\Repositories\Caches\NewsletterCacheDecorator;
use Botble\Newsletter\Repositories\Eloquent\NewsletterRepository;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;
use Botble\Base\Facades\EmailHandler;
use Exception;
use Illuminate\Contracts\Support\DeferrableProvider;
use Illuminate\Support\Arr;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\ServiceProvider;

class NewsletterServiceProvider extends ServiceProvider implements DeferrableProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        $this->app->singleton(NewsletterInterface::class, function () {
            return new NewsletterCacheDecorator(
                new NewsletterRepository(new Newsletter())
            );
        });

        $this->app->singleton(Factory::class, function ($app) {
            return new NewsletterManager($app);
        });
    }

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/newsletter')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions', 'email'])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadMigrations();

        $this->app->register(EventServiceProvider::class);

        $this->app['events']->listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-newsletter',
                'priority' => 6,
                'parent_id' => null,
                'name' => 'plugins/newsletter::newsletter.name',
                'icon' => 'far fa-newspaper',
                'url' => route('newsletter.index'),
                'permissions' => ['newsletter.index'],
            ]);

            EmailHandler::addTemplateSettings(NEWSLETTER_MODULE_SCREEN_NAME, config('plugins.newsletter.email', []));
        });

        add_filter(BASE_FILTER_AFTER_SETTING_CONTENT, function (?string $data) {
            $mailchimpContactList = [];

            if (setting('newsletter_mailchimp_api_key')) {
                try {
                    $contacts = collect(NewsletterFacade::driver('mailchimp')->contacts());

                    if (! setting('newsletter_mailchimp_list_id')) {
                        setting()->set(['newsletter_mailchimp_list_id' => Arr::get($contacts, 'id')])->save();
                    }

                    $mailchimpContactList = $contacts->pluck('name', 'id');
                } catch (Exception $exception) {
                    info('Caught exception: ' . $exception->getMessage());
                }
            }

            $sendGridContactList = [];

            if (setting('newsletter_sendgrid_api_key')) {
                try {
                    $contacts = collect(NewsletterFacade::driver('sendgrid')->contacts());

                    if (! setting('newsletter_sendgrid_list_id')) {
                        setting()->set(['newsletter_sendgrid_list_id' => Arr::get($contacts->first(), 'id')])->save();
                    }

                    $sendGridContactList = $contacts->pluck('name', 'id');
                } catch (Exception $exception) {
                    info('Caught exception: ' . $exception->getMessage());
                }
            }

            return $data . view('plugins/newsletter::setting', compact('mailchimpContactList', 'sendGridContactList'))->render();
        }, 249);
    }

    public function provides(): array
    {
        return [Factory::class];
    }
}
