@props([
    'name',
    'label' => null,
    'value' => null,
    'helperText' => null,
])

<x-core-setting::form-group>
    <input type="hidden" name="{{ $name }}" value="0">
    <label>
        <input type="checkbox" value="1" @checked($value) name="{{ $name }}" id="{{ $name }}" {{ $attributes }}>
        {{ $label }}
    </label>

    @if($helperText)
        {{ Form::helper($helperText) }}
    @endif
</x-core-setting::form-group>
