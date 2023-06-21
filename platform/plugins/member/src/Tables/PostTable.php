<?php

namespace Botble\Member\Tables;

use BaseHelper;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Member\Models\Member;
use Botble\Table\Abstracts\TableAbstract;
use Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
use Yajra\DataTables\DataTables;

class PostTable extends TableAbstract
{
    public $hasActions = false;

    public $hasCheckbox = false;

    public function __construct(
        DataTables $table,
        UrlGenerator $urlGenerator,
        PostInterface $postRepository
    ) {
        parent::__construct($table, $urlGenerator);

        $this->repository = $postRepository;
    }

    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function ($item) {
                return Html::link(route('public.member.posts.edit', $item->id), $item->name);
            })
            ->editColumn('image', function ($item) {
                return $this->displayThumbnail($item->image);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('updated_at', function ($item) {
                return implode(', ', $item->categories->pluck('name')->all());
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            })
            ->addColumn('operations', function ($item) {
                return view('plugins/member::table.actions', [
                    'edit' => 'public.member.posts.edit',
                    'delete' => 'public.member.posts.destroy',
                    'item' => $item,
                ])->render();
            });

        return $this->toJson($data);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->repository->getModel()
            ->with(['categories'])
            ->select([
                'id',
                'name',
                'image',
                'created_at',
                'status',
                'updated_at',
            ])
            ->where([
                'author_id' => auth('member')->id(),
                'author_type' => Member::class,
            ]);

        return $this->applyScopes($query);
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('public.member.posts.create'));
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
                'class' => 'text-right',
            ],
            'updated_at' => [
                'title' => trans('plugins/blog::posts.categories'),
                'width' => '150px',
                'class' => 'no-sort text-center',
                'orderable' => false,
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
                'class' => 'text-center',
            ],
            'status' => [
                'title' => trans('core/base::tables.status'),
                'width' => '100px',
                'class' => 'text-center',
            ],
        ];
    }
}
