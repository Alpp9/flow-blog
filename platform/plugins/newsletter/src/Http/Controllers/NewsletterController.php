<?php

namespace Botble\Newsletter\Http\Controllers;

use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Traits\HasDeleteManyItemsTrait;
use Botble\Newsletter\Models\Newsletter;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;
use Botble\Newsletter\Tables\NewsletterTable;
use Exception;
use Illuminate\Http\Request;

class NewsletterController extends BaseController
{
    use HasDeleteManyItemsTrait;

    public function __construct(protected NewsletterInterface $newsletterRepository)
    {
    }

    public function index(NewsletterTable $dataTable)
    {
        PageTitle::setTitle(trans('plugins/newsletter::newsletter.name'));

        return $dataTable->renderTable();
    }

    public function destroy(Newsletter $newsletter, Request $request, BaseHttpResponse $response)
    {
        try {
            $this->newsletterRepository->delete($newsletter);

            event(new DeletedContentEvent(NEWSLETTER_MODULE_SCREEN_NAME, $request, $newsletter));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    public function deletes(Request $request, BaseHttpResponse $response)
    {
        return $this->executeDeleteItems(
            $request,
            $response,
            $this->newsletterRepository,
            NEWSLETTER_MODULE_SCREEN_NAME
        );
    }
}
