<aside id="sidebar-wrapper" class="custom-scrollbar offcanvas-sidebar" data-load-url="{{ route('theme.ajax-get-panel-inner') }}">
    <button class="off-canvas-close"><img class="svg-icon-24" src="{{ Theme::asset()->url('images/svg/close.svg') }}" loading="lazy" alt=""></button>
    <div class="sidebar-inner">
        <div class="sidebar-inner-loading">
            <div class="half-circle-spinner">
                <div class="circle circle-1"></div>
                <div class="circle circle-2"></div>
            </div>
        </div>
    </div>
</aside>
