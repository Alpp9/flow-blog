@props([
    'name',
    'label' => null,
    'options' => [],
    'value' => null,
    'class' => null,
])

<x-core-setting::form-group>
    @if($label)
        <label for="{{ $name }}" class="text-title-field">{{ $label }}</label>
    @endif
    {!! Form::customSelect($name, $options, $value, ['class' => $class, 'id' => $name]) !!}
</x-core-setting::form-group>
