<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Models\Setting as SettingModel;
use Theme;

class ThemeOptionSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('general');

        $theme = Theme::getThemeName();

        SettingModel::where('key', 'LIKE', 'theme-' . $theme . '-%')->delete();

        SettingModel::insertOrIgnore([
            [
                'key' => 'show_admin_bar',
                'value' => '1',
            ],
            [
                'key' => 'theme',
                'value' => $theme,
            ],
            [
                'key' => 'admin_logo',
                'value' => 'general/logo-white.png',
            ],
            [
                'key' => 'admin_favicon',
                'value' => 'general/favicon.png',
            ],
        ]);

        $data = [
            'en_US' => [
                [
                    'key' => 'site_title',
                    'value' => 'Flow - Laravel Personal Blog Script',
                ],
                [
                    'key' => 'copyright',
                    'value' => '©' . now()->format('Y') . ' Designed by AliThemes | All rights reserved.',
                ],
                [
                    'key' => 'preloader_enabled',
                    'value' => '0',
                ],
                [
                    'key' => 'favicon',
                    'value' => 'general/favicon.png',
                ],
                [
                    'key' => 'website',
                    'value' => 'https://thesky9.com',
                ],
                [
                    'key' => 'contact_email',
                    'value' => 'support@thesky9.com',
                ],
                [
                    'key' => 'site_description',
                    'value' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.',
                ],
                [
                    'key' => 'phone',
                    'value' => '+(123) 345-6789',
                ],
                [
                    'key' => 'address',
                    'value' => '214 West Arnold St. New York, NY 10002',
                ],
                [
                    'key' => 'cookie_consent_message',
                    'value' => 'Your experience on this site will be improved by allowing cookies ',
                ],
                [
                    'key' => 'cookie_consent_learn_more_url',
                    'value' => url('cookie-policy'),
                ],
                [
                    'key' => 'cookie_consent_learn_more_text',
                    'value' => 'Cookie Policy',
                ],
                [
                    'key' => 'homepage_id',
                    'value' => '1',
                ],
                [
                    'key' => 'blog_page_id',
                    'value' => '4',
                ],
                [
                    'key' => 'single_layout',
                    'value' => 'right-sidebar',
                ],
                [
                    'key' => 'single_title_layout',
                    'value' => 'top-full',
                ],
                [
                    'key' => 'action_title',
                    'value' => 'All you need to build new site',
                ],
                [
                    'key' => 'action_button_text',
                    'value' => 'Buy Now',
                ],
                [
                    'key' => 'action_button_url',
                    'value' => 'https://codecanyon.net/user/thesky9',
                ],
                [
                    'key' => 'logo',
                    'value' => 'general/logo.png',
                ],
                [
                    'key' => 'logo_white',
                    'value' => 'general/logo-white.png',
                ],
                [
                    'key' => 'font_heading',
                    'value' => 'Poppins',
                ],
                [
                    'key' => 'font_body',
                    'value' => 'Source Sans Pro',
                ],
                [
                    'key' => 'color_brand_1',
                    'value' => '#ffcda3',
                ],
                [
                    'key' => 'color_brand_2',
                    'value' => '#fce2ce',
                ],
                [
                    'key' => 'color_brand_3',
                    'value' => '#ffede5',
                ],
                [
                    'key' => 'color_brand_4',
                    'value' => '#fff5ef',
                ],
                [
                    'key' => 'color_primary',
                    'value' => '#87c6e3',
                ],
                [
                    'key' => 'color_secondary',
                    'value' => '#455265',
                ],
                [
                    'key' => 'color_success',
                    'value' => '#76e1c6',
                ],
                [
                    'key' => 'color_danger',
                    'value' => '#f0a9a9',
                ],
                [
                    'key' => 'color_warning',
                    'value' => '#e6bf7e',
                ],
                [
                    'key' => 'color_info',
                    'value' => '#58c1c8',
                ],
                [
                    'key' => 'color_grey_900',
                    'value' => '#101010',
                ],
                [
                    'key' => 'color_grey_700',
                    'value' => '#484848',
                ],
                [
                    'key' => 'color_grey_400',
                    'value' => '#999999',
                ],
                [
                    'key' => 'color_grey_100',
                    'value' => '#9c9c9c',
                ],
                [
                    'key' => 'color_light',
                    'value' => '#F3F3F3',
                ],
                [
                    'key' => 'color_dark',
                    'value' => '#111111',
                ],
                [
                    'key' => 'color_link',
                    'value' => '#222831',
                ],
                [
                    'key' => 'color_muted',
                    'value' => '#9b9b9b',
                ],
                [
                    'key' => 'color_white',
                    'value' => '#FFFFFF',
                ],
                [
                    'key' => 'primary_border_color',
                    'value' => '#9b9b9b',
                ],
                [
                    'key' => 'secondary_border_color',
                    'value' => '#f0f8ff',
                ],
                [
                    'key' => 'mutted_border_color',
                    'value' => '#f0f8ff',
                ],
            ],

            'vi' => [
                [
                    'key' => 'site_title',
                    'value' => 'Flow - Laravel Personal Blog Script',
                ],
                [
                    'key' => 'copyright',
                    'value' => '©' . now()->format('Y') . ' Thiết kế bởi AliThemes | Tất cả quyền đã được bảo hộ.',
                ],
                [
                    'key' => 'preloader_enabled',
                    'value' => '0',
                ],
                [
                    'key' => 'favicon',
                    'value' => 'general/favicon.png',
                ],
                [
                    'key' => 'website',
                    'value' => 'https://thesky9.com',
                ],
                [
                    'key' => 'contact_email',
                    'value' => 'support@thesky9.com',
                ],
                [
                    'key' => 'site_description',
                    'value' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.',
                ],
                [
                    'key' => 'phone',
                    'value' => '+(123) 345-6789',
                ],
                [
                    'key' => 'address',
                    'value' => '214 West Arnold St. New York, NY 10002',
                ],
                [
                    'key' => 'cookie_consent_message',
                    'value' => 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',
                ],
                [
                    'key' => 'cookie_consent_learn_more_url',
                    'value' => url('cookie-policy'),
                ],
                [
                    'key' => 'cookie_consent_learn_more_text',
                    'value' => 'Cookie Policy',
                ],
                [
                    'key' => 'homepage_id',
                    'value' => '1',
                ],
                [
                    'key' => 'blog_page_id',
                    'value' => '4',
                ],
                [
                    'key' => 'single_layout',
                    'value' => 'default',
                ],
                [
                    'key' => 'single_title_layout',
                    'value' => 'top-full',
                ],
                [
                    'key' => 'logo',
                    'value' => 'general/logo.png',
                ],
                [
                    'key' => 'logo_white',
                    'value' => 'general/logo-white.png',
                ],
                [
                    'key' => 'action_title',
                    'value' => 'Bạn cần tạo mới website',
                ],
                [
                    'key' => 'action_button_text',
                    'value' => 'Mua Ngay',
                ],
                [
                    'key' => 'action_button_url',
                    'value' => 'https://codecanyon.net/user/thesky9',
                ],
                [
                    'key' => 'font_heading',
                    'value' => 'Poppins',
                ],
                [
                    'key' => 'font_body',
                    'value' => 'Source Sans Pro',
                ],
                [
                    'key' => 'color_brand_1',
                    'value' => '#ffcda3',
                ],
                [
                    'key' => 'color_brand_2',
                    'value' => '#fce2ce',
                ],
                [
                    'key' => 'color_brand_3',
                    'value' => '#ffede5',
                ],
                [
                    'key' => 'color_brand_4',
                    'value' => '#fff5ef',
                ],
                [
                    'key' => 'color_primary',
                    'value' => '#87c6e3',
                ],
                [
                    'key' => 'color_secondary',
                    'value' => '#455265',
                ],
                [
                    'key' => 'color_success',
                    'value' => '#76e1c6',
                ],
                [
                    'key' => 'color_danger',
                    'value' => '#f0a9a9',
                ],
                [
                    'key' => 'color_warning',
                    'value' => '#e6bf7e',
                ],
                [
                    'key' => 'color_info',
                    'value' => '#58c1c8',
                ],
                [
                    'key' => 'color_grey_900',
                    'value' => '#101010',
                ],
                [
                    'key' => 'color_grey_700',
                    'value' => '#484848',
                ],
                [
                    'key' => 'color_grey_400',
                    'value' => '#999999',
                ],
                [
                    'key' => 'color_grey_100',
                    'value' => '#9c9c9c',
                ],
                [
                    'key' => 'color_light',
                    'value' => '#F3F3F3',
                ],
                [
                    'key' => 'color_dark',
                    'value' => '#111111',
                ],
                [
                    'key' => 'color_link',
                    'value' => '#222831',
                ],
                [
                    'key' => 'color_muted',
                    'value' => '#9b9b9b',
                ],
                [
                    'key' => 'color_white',
                    'value' => '#FFFFFF',
                ],
                [
                    'key' => 'primary_border_color',
                    'value' => '#9b9b9b',
                ],
                [
                    'key' => 'secondary_border_color',
                    'value' => '#f0f8ff',
                ],
                [
                    'key' => 'mutted_border_color',
                    'value' => '#f0f8ff',
                ],
            ],
        ];

        foreach ($data as $locale => $options) {
            foreach ($options as $item) {
                $item['key'] = 'theme-' . $theme . '-' . ($locale != 'en_US' ? $locale . '-' : '') . $item['key'];

                SettingModel::create($item);
            }
        }

        $socialLinks = [
            [
                [
                    'key' => 'social-name',
                    'value' => 'Facebook',
                ],
                [
                    'key' => 'social-icon',
                    'value' => 'social_facebook',
                ],
                [
                    'key' => 'social-url',
                    'value' => 'https://www.facebook.com/',
                ],
            ],
            [
                [
                    'key' => 'social-name',
                    'value' => 'Twitter',
                ],
                [
                    'key' => 'social-icon',
                    'value' => 'social_twitter',
                ],
                [
                    'key' => 'social-url',
                    'value' => 'https://www.twitter.com/',
                ],
            ],
            [
                [
                    'key' => 'social-name',
                    'value' => 'Instagram',
                ],
                [
                    'key' => 'social-icon',
                    'value' => 'social_instagram',
                ],
                [
                    'key' => 'social-url',
                    'value' => 'https://www.instagram.com/',
                ],
            ],
            [
                [
                    'key' => 'social-name',
                    'value' => 'Linkedin',
                ],
                [
                    'key' => 'social-icon',
                    'value' => 'social_linkedin',
                ],
                [
                    'key' => 'social-url',
                    'value' => 'https://www.linkedin.com/',
                ],
            ],
            [
                [
                    'key' => 'social-name',
                    'value' => 'Pinterest',
                ],
                [
                    'key' => 'social-icon',
                    'value' => 'social_pinterest',
                ],
                [
                    'key' => 'social-url',
                    'value' => 'https://www.pinterest.com/',
                ],
            ],
        ];

        SettingModel::insertOrIgnore([
            'key' => 'theme-' . $theme . '-social_links',
            'value' => json_encode($socialLinks),
        ]);

        SettingModel::insertOrIgnore([
            'key' => 'theme-vi-' . $theme . '-social_links',
            'value' => json_encode($socialLinks),
        ]);

        $contacts = [
            'en_US' => [
                [
                    [
                        'key' => 'type',
                        'value' => 'Head Office',
                    ],
                    [
                        'key' => 'title',
                        'value' => 'Paris, France',
                    ],
                    [
                        'key' => 'subtitle',
                        'value' => 'Lorem 142 Str, 2352, Ipsum State, USA </br> Phone: (+01) 234 567',
                    ],
                    [
                        'key' => 'image',
                        'value' => 'news/office-1.png',
                    ],
                ],
                [
                    [
                        'key' => 'type',
                        'value' => 'Support',
                    ],
                    [
                        'key' => 'title',
                        'value' => 'Paris, France',
                    ],
                    [
                        'key' => 'subtitle',
                        'value' => 'Lorem 142 Str, 2352, Ipsum State, USA </br> Phone: (+01) 234 567',
                    ],
                    [
                        'key' => 'image',
                        'value' => 'news/office-2.png',
                    ],
                ],
                [
                    [
                        'key' => 'type',
                        'value' => 'Factory',
                    ],
                    [
                        'key' => 'title',
                        'value' => 'Paris, France',
                    ],
                    [
                        'key' => 'subtitle',
                        'value' => 'Lorem 142 Str, 2352, Ipsum State, USA </br> Phone: (+01) 234 567',
                    ],
                    [
                        'key' => 'image',
                        'value' => 'news/office-3.png',
                    ],
                ],
            ],
            'vi' => [
                [
                    [
                        'key' => 'type',
                        'value' => 'Đại diện',
                    ],
                    [
                        'key' => 'title',
                        'value' => 'Hà Nội',
                    ],
                    [
                        'key' => 'subtitle',
                        'value' => 'Lorem 142 Str, 2352, Ipsum State, USA </br> Phone: (+01) 234 567',
                    ],
                    [
                        'key' => 'image',
                        'value' => 'news/office-1.png',
                    ],
                ],
                [
                    [
                        'key' => 'type',
                        'value' => 'Hỗ trợ',
                    ],
                    [
                        'key' => 'title',
                        'value' => 'Hồ Chí Minh',
                    ],
                    [
                        'key' => 'subtitle',
                        'value' => 'Lorem 142 Str, 2352, Ipsum State, USA </br> Phone: (+01) 234 567',
                    ],
                    [
                        'key' => 'image',
                        'value' => 'news/office-2.png',
                    ],
                ],
                [
                    [
                        'key' => 'type',
                        'value' => 'Nhà máy',
                    ],
                    [
                        'key' => 'title',
                        'value' => 'Đà Nẵng',
                    ],
                    [
                        'key' => 'subtitle',
                        'value' => 'Lorem 142 Str, 2352, Ipsum State, USA </br> Phone: (+01) 234 567',
                    ],
                    [
                        'key' => 'image',
                        'value' => 'news/office-3.png',
                    ],
                ],
            ],
        ];

        foreach ($contacts as $locale => $contact) {
            $key = 'theme-' . $theme . '-' . ($locale != 'en_US' ? $locale . '-' : '') . 'contact_info_boxes';

            SettingModel::insertOrIgnore([
                'key' => $key,
                'value' => json_encode($contact),
            ]);
        }
    }
}
