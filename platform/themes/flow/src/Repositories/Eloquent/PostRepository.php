<?php

namespace Theme\Flow\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Blog\Repositories\Eloquent\PostRepository as BasePostRepository;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;

class PostRepository extends BasePostRepository implements PostInterface
{
    public function getFilters(array $filters): Collection|LengthAwarePaginator
    {
        $this->model = $this->originalModel;

        if (! empty($filters['categories'])) {
            $categories = array_filter((array)$filters['categories']);

            $this->model = $this->model->whereHas('categories', function ($query) use ($categories) {
                $query->whereIn('categories.id', $categories);
            });
        }

        if (! empty($filters['categories_exclude'])) {
            $excludeCategories = array_filter((array)$filters['categories_exclude']);

            $this->model = $this->model->whereHas('categories', function ($query) use ($excludeCategories) {
                $query->whereNotIn('categories.id', $excludeCategories);
            });
        }

        if (! empty($filters['exclude'])) {
            $this->model = $this->model->whereNotIn('posts.id', array_filter((array)$filters['exclude']));
        }

        if (! empty($filters['include'])) {
            $this->model = $this->model->whereIn('posts.id', array_filter((array)$filters['include']));
        }

        if (! empty($filters['author'])) {
            $this->model = $this->model->whereIn('posts.author_id', array_filter((array)$filters['author']));
        }

        if (! empty($filters['author_exclude'])) {
            $this->model = $this->model->whereNotIn('posts.author_id', array_filter((array)$filters['author_exclude']));
        }

        if (! empty($filters['featured'])) {
            $this->model = $this->model->where('posts.is_featured', $filters['featured']);
        }

        if (! empty($filters['format_type'])) {
            $this->model = $this->model->where('posts.format_type', $filters['format_type']);
        }

        if (! empty($filters['search'])) {
            $this->model = $this->model->where('posts.name', 'like', '%' . $filters['search'] . '%')
                ->orWhere('posts.content', 'like', '%' . $filters['search'] . '%');
        }

        $orderBy = $filters['order_by'] ?? 'updated_at';
        $order = $filters['order'] ?? 'desc';

        $this->model = $this->model->where('posts.status', BaseStatusEnum::PUBLISHED)->orderBy($orderBy, $order);

        if (! empty($filters['per_page'])) {
            return $this->applyBeforeExecuteQuery($this->model)->paginate($filters['per_page']);
        }

        return $this->applyBeforeExecuteQuery($this->model)->limit($filters['limit'])->get();
    }
}
