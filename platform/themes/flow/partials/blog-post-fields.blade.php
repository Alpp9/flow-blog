<div class="form-group mb-3">
    <label for="time_to_read" class="control-label">{{ __('Time to read (minute)') }}</label>
    {!! Form::number('time_to_read', $timeToRead, ['class' => 'form-control', 'id' => 'time_to_read']) !!}
</div>

<div class="form-group mb-3">
    <label for="title_layout" class="control-label">{{ __('Title layout') }}</label>
    {!! Form::customSelect('title_layout', get_single_title_layout(), $titleLayout, ['class' => 'form-control', 'id' => 'title_layout']) !!}
</div>
