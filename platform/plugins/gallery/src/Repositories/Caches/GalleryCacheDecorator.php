<?php

namespace Botble\Gallery\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;
use Illuminate\Support\Collection;

class GalleryCacheDecorator extends CacheAbstractDecorator implements GalleryInterface
{
    public function getAll(array $with = ['slugable', 'user']): Collection
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    public function getDataSiteMap(): Collection
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    public function getFeaturedGalleries(int $limit, array $with = ['slugable', 'user']): Collection
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
