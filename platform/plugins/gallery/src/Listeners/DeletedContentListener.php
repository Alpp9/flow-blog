<?php

namespace Botble\Gallery\Listeners;

use Botble\Base\Events\DeletedContentEvent;
use Exception;
use Botble\Gallery\Facades\Gallery;

class DeletedContentListener
{
    public function handle(DeletedContentEvent $event): void
    {
        try {
            Gallery::deleteGallery($event->data);
        } catch (Exception $exception) {
            info($exception->getMessage());
        }
    }
}
