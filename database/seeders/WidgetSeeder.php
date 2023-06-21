<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Widget\Models\Widget as WidgetModel;
use Theme;

class WidgetSeeder extends BaseSeeder
{
    public function run(): void
    {
        WidgetModel::truncate();

        $data = [
            'en_US' => [
                [
                    'widget_id' => 'PopularPostsWidget',
                    'sidebar_id' => 'primary_sidebar',
                    'position' => 0,
                    'data' => [
                        'id' => 'PopularPostsWidget',
                        'name' => 'Most popular',
                        'number_display' => 5,
                    ],
                ],
                [
                    'widget_id' => 'GalleriesWidget',
                    'sidebar_id' => 'primary_sidebar',
                    'position' => 1,
                    'data' => [
                        'id' => 'GalleriesWidget',
                        'name' => 'Gallery',
                        'number_display' => 6,
                    ],
                ],
                [
                    'widget_id' => 'NewsletterWidget',
                    'sidebar_id' => 'footer_sidebar_1',
                    'position' => 1,
                    'data' => [
                        'id' => 'NewsletterWidget',
                        'name' => 'Subscribe',
                        'subname' => 'to Our Newsletter',
                    ],
                ],
                [
                    'widget_id' => 'CustomMenuWidget',
                    'sidebar_id' => 'footer_sidebar_2',
                    'position' => 1,
                    'data' => [
                        'id' => 'CustomMenuWidget',
                        'name' => 'Quick links',
                        'menu_id' => 'quick-links',
                    ],
                ],
                [
                    'widget_id' => 'TagsWidget',
                    'sidebar_id' => 'footer_sidebar_2',
                    'position' => 1,
                    'data' => [
                        'id' => 'TagsWidget',
                        'name' => 'Tags',
                    ],
                ],
            ],
            'vi' => [
                [
                    'widget_id' => 'PopularPostsWidget',
                    'sidebar_id' => 'primary_sidebar',
                    'position' => 0,
                    'data' => [
                        'id' => 'PopularPostsWidget',
                        'name' => 'Bài viết nổi bật',
                        'number_display' => 5,
                    ],
                ],
                [
                    'widget_id' => 'GalleriesWidget',
                    'sidebar_id' => 'primary_sidebar',
                    'position' => 1,
                    'data' => [
                        'id' => 'GalleriesWidget',
                        'name' => 'Thư viện',
                        'number_display' => 6,
                    ],
                ],
                [
                    'widget_id' => 'NewsletterWidget',
                    'sidebar_id' => 'footer_sidebar_1',
                    'position' => 1,
                    'data' => [
                        'id' => 'NewsletterWidget',
                        'name' => 'Nhận bản tin',
                        'subname' => 'Mới nhất từ chúng tôi',
                    ],
                ],
                [
                    'widget_id' => 'CustomMenuWidget',
                    'sidebar_id' => 'footer_sidebar_2',
                    'position' => 1,
                    'data' => [
                        'id' => 'CustomMenuWidget',
                        'name' => 'Liên kết nhanh',
                        'menu_id' => 'lien-ket',
                    ],
                ],
                [
                    'widget_id' => 'TagsWidget',
                    'sidebar_id' => 'footer_sidebar_2',
                    'position' => 1,
                    'data' => [
                        'id' => 'TagsWidget',
                        'name' => 'Tags',
                    ],
                ],
            ],
        ];

        $theme = Theme::getThemeName();

        foreach ($data as $locale => $widgets) {
            foreach ($widgets as $item) {
                $item['theme'] = $locale == 'en_US' ? $theme : ($theme . '-' . $locale);
                WidgetModel::create($item);
            }
        }
    }
}
