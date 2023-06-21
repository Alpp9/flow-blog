<?php

namespace Botble\RequestLog\Tables;

use Botble\RequestLog\Models\RequestLog;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Botble\RequestLog\Repositories\Interfaces\RequestLogInterface;
use Botble\Table\Abstracts\TableAbstract;
use Collective\Html\HtmlFacade as Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;

class RequestLogTable extends TableAbstract
{
    protected $hasActions = true;

    protected $hasFilter = false;

    public function __construct(
        DataTables $table,
        UrlGenerator $urlGenerator,
        RequestLogInterface $requestLogRepository
    ) {
        parent::__construct($table, $urlGenerator);

        $this->repository = $requestLogRepository;

        if (! Auth::user()->hasPermission('request-log.destroy')) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
    }

    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('checkbox', function (RequestLog $item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('url', function (RequestLog $item) {
                return Html::link($item->url, $item->url, ['target' => '_blank'])->toHtml();
            })
            ->addColumn('operations', function (RequestLog $item) {
                return $this->getOperations(null, 'request-log.destroy', $item);
            });

        return $this->toJson($data);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->repository->getModel()->select([
            'id',
            'url',
            'status_code',
            'count',
        ]);

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            'id' => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'url' => [
                'title' => trans('core/base::tables.url'),
                'class' => 'text-start',
            ],
            'status_code' => [
                'title' => trans('plugins/request-log::request-log.status_code'),
            ],
            'count' => [
                'title' => trans('plugins/request-log::request-log.count'),
            ],
        ];
    }

    public function buttons(): array
    {
        return [
            'empty' => [
                'link' => route('request-log.empty'),
                'text' => Html::tag('i', '', ['class' => 'fa fa-trash'])->toHtml() .
                    ' ' . trans('plugins/request-log::request-log.delete_all'),
            ],
        ];
    }

    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('request-log.deletes'), 'request-log.destroy', parent::bulkActions());
    }
}
