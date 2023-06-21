@php
$categories = get_categories();
@endphp
<div class="form-group mb-3">
    <label class="control-label">Categories include</label>
    <select name="categories[]" class="select2 form-control" multiple>
        @foreach($categories as $category)
            <option value="{{ $category->id }}"
                    @if (in_array($category->id, explode(',', Arr::get($attributes, 'categories')))) selected @endif>
                {{ $category->name }}
            </option>
        @endforeach
    </select>
</div>
<div class="form-group mb-3">
    <label class="control-label">Categories Exclude</label>
    <select name="categories_exclude[]" class="select2 form-control" multiple>
        @foreach($categories as $category)
            <option value="{{ $category->id }}"
                    @if (in_array($category->id, explode(',', Arr::get($attributes, 'categories_exclude')))) selected @endif>
                {{ $category->name }}
            </option>
        @endforeach
    </select>
</div>
<div class="form-group mb-3">
    <label class="control-label">Limit</label>
    <input name="limit" class="form-control" value="{{ Arr::get($attributes, 'limit', 12) }}">
</div>
<div class="form-group mb-3">
    <label class="control-label">Order by</label>
    <select name="order_by" class="form-control">
        <option value="updated_at" @if (Arr::get($attributes, 'order_by') == 'updated_at') selected @endif>Updated</option>
        <option value="views" @if (Arr::get($attributes, 'order_by') == 'views') selected @endif>Views</option>
      </select>
</div>
<div class="form-group mb-3">
    <label class="control-label">Order</label>
    <select name="order" class="form-control">
        <option value="desc" @if (Arr::get($attributes, 'order') == 'desc') selected @endif>Descending order</option>
        <option value="asc" @if (Arr::get($attributes, 'order') == 'asc') selected @endif>Ascending</option>
      </select>
</div>
