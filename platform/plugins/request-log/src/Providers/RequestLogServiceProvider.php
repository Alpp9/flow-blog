<?php

namespace Botble\RequestLog\Providers;

use Botble\AuditLog\Models\AuditHistory;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Routing\Events\RouteMatched;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\RequestLog\Repositories\Caches\RequestLogCacheDecorator;
use Botble\RequestLog\Repositories\Eloquent\RequestLogRepository;
use Botble\RequestLog\Repositories\Interfaces\RequestLogInterface;
use Illuminate\Support\ServiceProvider;
use Botble\RequestLog\Models\RequestLog as RequestLogModel;

/**
 * @since 02/07/2016 09:50 AM
 */
class RequestLogServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        $this->app->bind(RequestLogInterface::class, function () {
            return new RequestLogCacheDecorator(new RequestLogRepository(new RequestLogModel()));
        });
    }

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/request-log')
            ->loadHelpers()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->publishAssets();

        $this->app['events']->listen(RouteMatched::class, function () {
            dashboard_menu()
                ->registerItem([
                    'id' => 'cms-plugin-request-log',
                    'priority' => 8,
                    'parent_id' => 'cms-core-platform-administration',
                    'name' => 'plugins/request-log::request-log.name',
                    'icon' => null,
                    'url' => route('request-log.index'),
                    'permissions' => ['request-log.index'],
                ]);
        });

        $this->app->register(EventServiceProvider::class);
        $this->app->register(CommandServiceProvider::class);

        $this->app->booted(function () {
            $this->app->register(HookServiceProvider::class);

            $schedule = $this->app->make(Schedule::class);

            $schedule->command('model:prune', ['--model' => AuditHistory::class])->dailyAt('00:30');
        });
    }
}
