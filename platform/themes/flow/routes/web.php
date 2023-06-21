<?php
use Botble\Member\Models\Member;

// Custom routes
Route::group(['namespace' => 'Theme\Flow\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
        // Add your custom route here
        Route::get('ajax/get-panel-inner', 'FlowController@ajaxGetPanelInner')
            ->name('theme.ajax-get-panel-inner');
        Route::get(SlugHelper::getPrefix(Member::class, 'author') . '/{slug}')
            ->uses('FlowController@getAuthor')
            ->name('author.show');
    });
});

Theme::routes();
