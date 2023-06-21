<?php

namespace Botble\PluginManagement\Http\Controllers;

use Botble\Base\Facades\Assets;
use Botble\Base\Facades\PageTitle;
use Botble\PluginManagement\Services\MarketplaceService;
use Botble\PluginManagement\Services\PluginService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Str;
use Throwable;

class MarketplaceController extends Controller
{
    public function __construct(
        protected MarketplaceService $marketplaceService,
        protected PluginService $pluginService,
    ) {
    }

    public function index()
    {
        PageTitle::setTitle(trans('packages/plugin-management::plugin.plugins_add_new'));

        Assets::addScriptsDirectly('vendor/core/packages/plugin-management/js/marketplace.js');

        Assets::usingVueJS();

        return view('packages/plugin-management::marketplace.index');
    }

    public function list(Request $request)
    {
        $request->merge([
            'type' => 'plugin',
            'per_page' => 12,
        ]);

        $response = $this->marketplaceService->callApi('get', '/products', $request->input());

        $data = $response->json();

        if ($response instanceof JsonResponse) {
            $data = $response;
        }

        $coreVersion = get_core_version();

        foreach ($data['data'] as $key => $item) {
            $data['data'][$key]['version_check'] = version_compare($coreVersion, $item['minimum_core_version'], '>=');
        }

        return $data;
    }

    public function detail(string $id)
    {
        $response = $this->marketplaceService->callApi('get', '/products/' . $id);

        if ($response instanceof JsonResponse) {
            return $response;
        }

        return $response->json();
    }

    public function iframe(string $id)
    {
        $response = $this->marketplaceService->callApi('get', '/products/' . $id . '/iframe');

        if ($response instanceof JsonResponse) {
            return $response;
        }

        return $response->body();
    }

    public function install(string $id): JsonResponse
    {
        $detail = $this->detail($id);

        $version = $detail['data']['minimum_core_version'];
        if (version_compare($version, get_core_version(), '>')) {
            return response()->json([
                'error' => true,
                'message' => trans('packages/plugin-management::marketplace.minimum_core_version_error', compact('version')),
            ]);
        }

        $name = Str::afterLast($detail['data']['package_name'], '/');

        try {
            $this->marketplaceService->beginInstall($id, 'plugin', $name);
        } catch (Throwable $exception) {
            return response()->json([
                'error' => true,
                'message' => $exception->getMessage(),
            ]);
        }

        return response()->json([
            'error' => false,
            'message' => trans('packages/plugin-management::marketplace.install_success'),
            'data' => [
                'name' => $name,
                'id' => $id,
            ],
        ]);
    }

    public function update(string $id): JsonResponse
    {
        $detail = $this->detail($id);

        $name = Str::afterLast($detail['data']['package_name'], '/');

        try {
            $this->marketplaceService->beginInstall($id, 'plugin', $name);
        } catch (Throwable $exception) {
            return response()->json([
                'error' => true,
                'message' => $exception->getMessage(),
            ]);
        }

        $this->pluginService->runMigrations($name);

        $published = $this->pluginService->publishAssets($name);

        if ($published['error']) {
            return response()->json([
                'error' => true,
                'message' => $published['message'],
            ]);
        }

        $this->pluginService->publishTranslations($name);

        return response()->json([
            'error' => false,
            'message' => trans('packages/plugin-management::marketplace.update_success'),
            'data' => [
                'name' => $name,
                'id' => $id,
            ],
        ]);
    }

    public function checkUpdate()
    {
        $installedPlugins = $this->pluginService->getInstalledPluginIds();

        if (! $installedPlugins) {
            return response()->json();
        }

        $response = $this->marketplaceService->callApi('post', '/products/check-update', [
            'products' => $installedPlugins,
        ]);

        if ($response instanceof JsonResponse) {
            return $response;
        }

        return $response->json();
    }
}
