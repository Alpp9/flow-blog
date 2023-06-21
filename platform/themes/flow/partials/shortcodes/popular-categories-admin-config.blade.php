<div class="form-group mb-3">
    <label class="control-label">Title</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" />
</div>

<div class="form-group mb-3">
    <label class="control-label">Limit</label>
    <input type="number" name="limit" value="{{ Arr::get($attributes, 'limit') }}" class="form-control" />
</div>
