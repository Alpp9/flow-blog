<?php

namespace Botble\Gallery\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Gallery\Models\Gallery;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;
use Botble\Table\Abstracts\TableAbstract;
use Collective\Html\HtmlFacade as Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use Yajra\DataTables\DataTables;

class GalleryTable extends TableAbstract
{
    protected $hasActions = true;

    protected $hasFilter = true;

    public function __construct(DataTables $table, UrlGenerator $urlGenerator, GalleryInterface $galleryRepository)
    {
        parent::__construct($table, $urlGenerator);

        $this->repository = $galleryRepository;

        if (! Auth::user()->hasAnyPermission(['galleries.edit', 'galleries.destroy'])) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
    }

    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function (Gallery $item) {
                if (! Auth::user()->hasPermission('galleries.edit')) {
                    return BaseHelper::clean($item->name);
                }

                return Html::link(route('galleries.edit', $item->id), BaseHelper::clean($item->name));
            })
            ->editColumn('image', function (Gallery $item) {
                return $this->displayThumbnail($item->image, ['width' => 70]);
            })
            ->editColumn('checkbox', function (Gallery $item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function (Gallery $item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function (Gallery $item) {
                return $item->status->toHtml();
            })
            ->addColumn('operations', function (Gallery $item) {
                return $this->getOperations('galleries.edit', 'galleries.destroy', $item);
            });

        return $this->toJson($data);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->repository->getModel()->select([
            'id',
            'name',
            'order',
            'created_at',
            'status',
            'image',
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
            'image' => [
                'title' => trans('core/base::tables.image'),
                'width' => '70px',
            ],
            'name' => [
                'title' => trans('core/base::tables.name'),
                'class' => 'text-start',
            ],
            'order' => [
                'title' => trans('core/base::tables.order'),
                'width' => '100px',
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'title' => trans('core/base::tables.status'),
                'width' => '100px',
            ],
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('galleries.create'), 'galleries.create');
    }

    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('galleries.deletes'), 'galleries.destroy', parent::bulkActions());
    }

    public function getBulkChanges(): array
    {
        return [
            'name' => [
                'title' => trans('core/base::tables.name'),
                'type' => 'text',
                'validate' => 'required|max:120',
            ],
            'status' => [
                'title' => trans('core/base::tables.status'),
                'type' => 'customSelect',
                'choices' => BaseStatusEnum::labels(),
                'validate' => 'required|' . Rule::in(BaseStatusEnum::values()),
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'type' => 'datePicker',
            ],
        ];
    }
}
