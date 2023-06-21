<?php

namespace Botble\Setting\Facades;

use Botble\Setting\Supports\SettingStore;
use Illuminate\Support\Facades\Facade;

/**
 * @method static mixed get(array|string $key, mixed $default = null)
 * @method static bool has(string $key)
 * @method static \Botble\Setting\Supports\SettingStore set(string|array $key, mixed $value = null)
 * @method static \Botble\Setting\Supports\SettingStore forget(string $key)
 * @method static \Botble\Setting\Supports\SettingStore forgetAll()
 * @method static array all()
 * @method static bool save()
 * @method static void load(bool $force = false)
 *
 * @see \Botble\Setting\Supports\SettingStore
 */
class Setting extends Facade
{
    protected static function getFacadeAccessor(): string
    {
        return SettingStore::class;
    }
}
