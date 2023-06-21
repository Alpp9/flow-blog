<?php

namespace Botble\Member\Providers;

use Botble\Blog\Models\Post;
use Botble\LanguageAdvanced\Supports\LanguageAdvancedManager;
use EmailHandler;
use Illuminate\Routing\Events\RouteMatched;
use Botble\Base\Supports\Helper;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Member\Http\Middleware\RedirectIfMember;
use Botble\Member\Http\Middleware\RedirectIfNotMember;
use Botble\Member\Models\Member;
use Botble\Member\Models\MemberActivityLog;
use Botble\Member\Repositories\Caches\MemberActivityLogCacheDecorator;
use Botble\Member\Repositories\Caches\MemberCacheDecorator;
use Botble\Member\Repositories\Eloquent\MemberActivityLogRepository;
use Botble\Member\Repositories\Eloquent\MemberRepository;
use Botble\Member\Repositories\Interfaces\MemberActivityLogInterface;
use Botble\Member\Repositories\Interfaces\MemberInterface;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\ServiceProvider;
use MetaBox;
use Language;
use SocialService;

class MemberServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @throws \Illuminate\Contracts\Container\BindingResolutionException
     */
    public function register()
    {
        config([
            'auth.guards.member' => [
                'driver' => 'session',
                'provider' => 'members',
            ],
            'auth.providers.members' => [
                'driver' => 'eloquent',
                'model' => Member::class,
            ],
            'auth.passwords.members' => [
                'provider' => 'members',
                'table' => 'member_password_resets',
                'expire' => 60,
            ],
            'auth.guards.member-api' => [
                'driver' => 'passport',
                'provider' => 'members',
            ],
        ]);

        $router = $this->app->make('router');

        $router->aliasMiddleware('member', RedirectIfNotMember::class);
        $router->aliasMiddleware('member.guest', RedirectIfMember::class);

        $this->app->bind(MemberInterface::class, function () {
            return new MemberCacheDecorator(new MemberRepository(new Member()));
        });

        $this->app->bind(MemberActivityLogInterface::class, function () {
            return new MemberActivityLogCacheDecorator(new MemberActivityLogRepository(new MemberActivityLog()));
        });

        Helper::autoload(__DIR__ . '/../../helpers');

        add_filter(IS_IN_ADMIN_FILTER, [$this, 'setInAdmin'], 24);
    }

    public function boot()
    {
        $this->setNamespace('plugins/member')
            ->loadAndPublishConfigurations(['general', 'permissions', 'assets', 'email'])
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web', 'api'])
            ->loadMigrations()
            ->publishAssets();

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-core-member',
                'priority' => 22,
                'parent_id' => null,
                'name' => 'plugins/member::member.menu_name',
                'icon' => 'fa fa-users',
                'url' => route('member.index'),
                'permissions' => ['member.index'],
            ]);

            if (defined('SOCIAL_LOGIN_MODULE_SCREEN_NAME')) {
                SocialService::registerModule([
                    'guard' => 'member',
                    'model' => Member::class,
                    'login_url' => route('public.member.login'),
                    'redirect_url' => route('public.member.dashboard'),
                ]);
            }
        });

        $this->app->booted(function () {
            EmailHandler::addTemplateSettings(MEMBER_MODULE_SCREEN_NAME, config('plugins.member.email', []));
        });

        add_filter('social_login_before_saving_account', function ($data, $oAuth, $providerData) {
            if (Arr::get($providerData, 'model') == Member::class && Arr::get($providerData, 'guard') == 'member') {
                $firstName = implode(' ', explode(' ', $oAuth->getName(), -1));
                Arr::forget($data, 'name');
                $data = array_merge($data, [
                    'first_name' => $firstName,
                    'last_name' => trim(str_replace($firstName, '', $oAuth->getName())),
                ]);
            }

            return $data;
        }, 49, 3);

        $this->app->register(EventServiceProvider::class);

        add_action(BASE_ACTION_INIT, function () {
            if (defined('GALLERY_MODULE_SCREEN_NAME') && request()->segment(1) == 'account') {
                \Gallery::removeModule(Post::class);
            }
        }, 12, 2);

        add_filter(BASE_FILTER_AFTER_SETTING_CONTENT, [$this, 'addSettings'], 49);

        add_filter(BASE_FILTER_BEFORE_RENDER_FORM, function ($form, $data) {
            if (get_class($data) == Member::class) {
                $social = isset($data->id) ? json_encode(Metabox::getMetaData($data, 'social', true)) : null;
                $form
                    ->addAfter('description', 'social', 'repeater', [
                        'label' => __('Social'),
                        'value' => null,
                        'selected' => $social,
                        'fields' => [
                            [
                                'type' => 'text',
                                'label' => __('Name'),
                                'attributes' => [
                                    'name' => 'social-name',
                                    'value' => null,
                                    'options' => [
                                        'class' => 'form-control',
                                    ],
                                ],
                            ],
                            [
                                'type' => 'themeIcon',
                                'label' => __('Icon'),
                                'attributes' => [
                                    'name' => 'social-icon',
                                    'value' => null,
                                    'options' => [
                                        'class' => 'form-control',
                                    ],
                                ],
                            ],
                            [
                                'type' => 'text',
                                'label' => __('URL'),
                                'attributes' => [
                                    'name' => 'social-url',
                                    'value' => null,
                                    'options' => [
                                        'class' => 'form-control',
                                    ],
                                ],
                            ],
                        ],
                    ]);
            }

            return $form;
        }, 127, 2);

        add_action(BASE_ACTION_AFTER_CREATE_CONTENT, function ($type, $request, $object) {
            if (get_class($object) == Member::class) {
                MetaBox::saveMetaBoxData($object, 'social', $request->input('social'));
            }
        }, 230, 3);

        add_action(BASE_ACTION_AFTER_UPDATE_CONTENT, function ($type, $request, $object) {
            if (get_class($object) == Member::class) {
                MetaBox::saveMetaBoxData($object, 'social', $request->input('social'));
            }
        }, 231, 3);

        if (is_plugin_active('language') && is_plugin_active('language-advanced')) {
            add_filter(BASE_FILTER_BEFORE_RENDER_FORM, function ($form, $data) {
                if (is_in_admin() &&
                    request()->segment(1) === 'account' &&
                    Auth::guard('member')->check() &&
                    Language::getCurrentAdminLocaleCode() != Language::getDefaultLocaleCode() &&
                    $data &&
                    $data->id &&
                    LanguageAdvancedManager::isSupported($data)
                ) {
                    $refLang = null;

                    if (Language::getCurrentAdminLocaleCode() != Language::getDefaultLocaleCode()) {
                        $refLang = '?ref_lang=' . Language::getCurrentAdminLocaleCode();
                    }

                    $form->setFormOption(
                        'url',
                        route('public.member.language-advanced.save', $data->id) . $refLang
                    );
                }

                return $form;
            }, 9999, 2);
        }
    }

    /**
     * @return bool
     */
    public function setInAdmin($isInAdmin): bool
    {
        return request()->segment(1) === 'account' || $isInAdmin;
    }

    /**
     * @param null|string $data
     * @return string
     */
    public function addSettings($data = null)
    {
        return $data . view('plugins/member::settings')->render();
    }
}
