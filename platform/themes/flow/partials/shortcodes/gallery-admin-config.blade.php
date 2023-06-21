<div class="form-group mb-3">
    <label class="control-label">Title</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}"  class="form-control" />
</div>
<div class="form-group mb-3">
    <label class="control-label">Gallery</label>
    <select class="form-control" name="gallery" id="gallery">
        @foreach (get_list_galleries([]) as $gallery)
            <option value="{{ $gallery->id }}"> {{ $gallery->name }} <option>
        @endforeach
    </select>
</div>
