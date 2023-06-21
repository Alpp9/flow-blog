@props([
    'name',
    'label' => null,
    'value' => null,
    'options' => [],
])

<x-core-setting::form-group>
    <label class="text-title-field" for="{{ $name }}">{{ $label }}</label>
    @foreach($options as $key => $option)
        <label @class(['me-2' => ! $loop->last])>
            <input type="radio" name="{{ $name }}" value="{{ $key }}" @checked($value == $key) {{ $attributes }}>{{ $option }}
        </label>
    @endforeach

    @if($attributes->has('helper-text'))
        {{ Form::helper($attributes->get('helper-text')) }}
    @endif
</x-core-setting::form-group>
