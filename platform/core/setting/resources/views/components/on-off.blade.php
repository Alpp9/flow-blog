<x-core-setting::radio
    :$name
    :$label
    :$value
    :options="[
        1 => trans('core/setting::setting.general.yes'),
        0 => trans('core/setting::setting.general.no'),
    ]"
    {{ $attributes }}
/>
