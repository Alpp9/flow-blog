<?php

app()->booted(function () {
    theme_option()
        ->setField([
            'id' => 'logo_white',
            'section_id' => 'opt-text-subsection-logo',
            'type' => 'mediaImage',
            'label' => 'Logo white',
            'attributes' => [
                'name' => 'logo_white',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'category_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'select',
            'label' => __('Category Layout'),
            'attributes' => [
                'name' => 'category_layout',
                'list' => ['' => trans('plugins/blog::base.select')] + get_sidebar_layout(),
                'value' => '',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'category_title_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'select',
            'label' => __('Category Title Layout'),
            'attributes' => [
                'name' => 'category_title_layout',
                'list' => ['' => trans('plugins/blog::base.select')] + get_category_title_layout(),
                'value' => '',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'single_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'select',
            'label' => __('Single Layout'),
            'attributes' => [
                'name' => 'single_layout',
                'list' => ['' => trans('plugins/blog::base.select')] + get_sidebar_layout(),
                'value' => '',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'single_title_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'select',
            'label' => __('Single Title Layout'),
            'attributes' => [
                'name' => 'single_title_layout',
                'list' => ['' => trans('plugins/blog::base.select')] + get_single_title_layout(),
                'value' => '',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'related_style',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'select',
            'label' => __('Related Style'),
            'attributes' => [
                'name' => 'related_style',
                'list' => get_related_style(),
                'value' => 'default',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Copyright'),
            'attributes' => [
                'name' => 'copyright',
                'value' => '©2021 Flow - Laravel Personal Blog Script.',
                'options' => [
                    'class' => 'form-control',
                    'placeholder' => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper' => __('Copyright on footer of site'),
        ])
        ->setField([
            'id' => 'designed_by',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Designed by'),
            'attributes' => [
                'name' => 'designed_by',
                'value' => 'Designed by AliThemes | All rights reserved.',
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 250,
                ],
            ],
        ])
        ->setField([
            'id' => 'preloader_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'select',
            'label' => __('Enable Preloader?'),
            'attributes' => [
                'name' => 'preloader_enabled',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'site_description',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'textarea',
            'label' => __('Site description'),
            'attributes' => [
                'name' => 'site_description',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id' => 'address',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Address'),
            'attributes' => [
                'name' => 'address',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id' => 'phone',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Phone'),
            'attributes' => [
                'name' => 'phone',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setSection([
            'title' => __('Style'),
            'desc' => __('Style of page'),
            'id' => 'opt-text-subsection-style',
            'subsection' => true,
            'icon' => 'fa fa-bars',
        ])
        ->setField([
            'id' => 'font_heading',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'googleFonts',
            'label' => __('Font heading'),
            'attributes' => [
                'name' => 'font_heading',
                'value' => 'Poppins',
            ],
        ])
        ->setField([
            'id' => 'font_body',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'googleFonts',
            'label' => __('Font body'),
            'attributes' => [
                'name' => 'font_body',
                'value' => 'Source Sans Pro',
            ],
        ])
        ->setField([
            'id' => 'color_brand_1',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Brand 1 color'),
            'attributes' => [
                'name' => 'color_brand_1',
                'value' => '#ffcda3',
            ],
        ])
        ->setField([
            'id' => 'color_brand_2',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Brand 2 color'),
            'attributes' => [
                'name' => 'color_brand_2',
                'value' => '#fce2ce',
            ],
        ])
        ->setField([
            'id' => 'color_brand_3',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Brand 3 color'),
            'attributes' => [
                'name' => 'color_brand_3',
                'value' => '#ffede5',
            ],
        ])
        ->setField([
            'id' => 'color_brand_4',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Brand 4 color'),
            'attributes' => [
                'name' => 'color_brand_4',
                'value' => '#fff5ef',
            ],
        ])
        ->setField([
            'id' => 'color_primary',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Primary color'),
            'attributes' => [
                'name' => 'color_primary',
                'value' => '#87c6e3',
            ],
        ])
        ->setField([
            'id' => 'color_secondary',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Secondary color'),
            'attributes' => [
                'name' => 'color_secondary',
                'value' => '#455265',
            ],
        ])
        ->setField([
            'id' => 'color_success',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Success color'),
            'attributes' => [
                'name' => 'color_success',
                'value' => '#76e1c6',
            ],
        ])
        ->setField([
            'id' => 'color_danger',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Danger color'),
            'attributes' => [
                'name' => 'color_danger',
                'value' => '#f0a9a9',
            ],
        ])
        ->setField([
            'id' => 'color_warning',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Warning color'),
            'attributes' => [
                'name' => 'color_warning',
                'value' => '#e6bf7e',
            ],
        ])
        ->setField([
            'id' => 'color_info',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Info color'),
            'attributes' => [
                'name' => 'color_info',
                'value' => '#58c1c8',
            ],
        ])
        ->setField([
            'id' => 'color_grey_900',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 900'),
            'attributes' => [
                'name' => 'color_grey_900',
                'value' => '#101010',
            ],
        ])
        ->setField([
            'id' => 'color_grey_700',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 700'),
            'attributes' => [
                'name' => 'color_grey_700',
                'value' => '#484848',
            ],
        ])
        ->setField([
            'id' => 'color_grey_400',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 400'),
            'attributes' => [
                'name' => 'color_grey_400',
                'value' => '#999999',
            ],
        ])
        ->setField([
            'id' => 'color_grey_100',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Grey 100'),
            'attributes' => [
                'name' => 'color_grey_100',
                'value' => '#9c9c9c',
            ],
        ])
        ->setField([
            'id' => 'color_light',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Light color'),
            'attributes' => [
                'name' => 'color_light',
                'value' => '#F3F3F3',
            ],
        ])
        ->setField([
            'id' => 'color_dark',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Dark color'),
            'attributes' => [
                'name' => 'color_dark',
                'value' => '#111111',
            ],
        ])
        ->setField([
            'id' => 'color_link',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Link color'),
            'attributes' => [
                'name' => 'color_link',
                'value' => '#222831',
            ],
        ])
        ->setField([
            'id' => 'color_muted',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Muted color'),
            'attributes' => [
                'name' => 'color_muted',
                'value' => '#9b9b9b',
            ],
        ])
        ->setField([
            'id' => 'color_white',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('White color'),
            'attributes' => [
                'name' => 'color_white',
                'value' => '#FFFFFF',
            ],
        ])
        ->setField([
            'id' => 'primary_border_color',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Primary border color'),
            'attributes' => [
                'name' => 'primary_border_color',
                'value' => '#9b9b9b',
            ],
        ])
        ->setField([
            'id' => 'secondary_border_color',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Secondary border color'),
            'attributes' => [
                'name' => 'secondary_border_color',
                'value' => '#f0f8ff',
            ],
        ])
        ->setField([
            'id' => 'mutted_border_color',
            'section_id' => 'opt-text-subsection-style',
            'type' => 'customColor',
            'label' => __('Mutted border color'),
            'attributes' => [
                'name' => 'mutted_border_color',
                'value' => '#f0f8ff',
            ],
        ])
        ->setSection([
            'title' => __('Social links'),
            'desc' => __('Social links'),
            'id' => 'opt-text-subsection-social-links',
            'subsection' => true,
            'icon' => 'fa fa-share-alt',
        ])
        ->setField([
            'id' => 'social_links',
            'section_id' => 'opt-text-subsection-social-links',
            'type' => 'repeater',
            'label' => __('Social links'),
            'attributes' => [
                'name' => 'social_links',
                'value' => null,
                'fields' => [
                    [
                        'type' => 'text',
                        'label' => __('Name'),
                        'attributes' => [
                            'name' => 'social-name',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'themeIcon',
                        'label' => __('Icon'),
                        'attributes' => [
                            'name' => 'social-icon',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('URL'),
                        'attributes' => [
                            'name' => 'social-url',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setSection([
            'title' => __('Action'),
            'desc' => __('Action config'),
            'id' => 'opt-text-subsection-action',
            'subsection' => true,
            'icon' => 'fa fa-link',
        ])
        ->setField([
            'id' => 'action_title',
            'section_id' => 'opt-text-subsection-action',
            'type' => 'text',
            'label' => __('Action title'),
            'attributes' => [
                'name' => 'action_title',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'action_button_text',
            'section_id' => 'opt-text-subsection-action',
            'type' => 'text',
            'label' => __('Action button text'),
            'attributes' => [
                'name' => 'action_button_text',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'action_button_url',
            'section_id' => 'opt-text-subsection-action',
            'type' => 'text',
            'label' => __('Action button URL'),
            'attributes' => [
                'name' => 'action_button_url',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setSection([
            'title' => __('Footer'),
            'desc' => __('Footer config'),
            'id' => 'opt-text-subsection-footer',
            'subsection' => true,
            'icon' => 'fa fa-info-circle',
        ])
        ->setField([
            'id' => 'footer_content_1_enabled',
            'section_id' => 'opt-text-subsection-footer',
            'type' => 'select',
            'label' => __('Enable Footer 1?'),
            'attributes' => [
                'name' => 'footer_content_1_enabled',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper' => __(
                'To show footer section 1 on that website, please go to :link!',
                [
                    'link' => Html::link('https://docs.thesky9.com/flow/#/footer?id=setting'),
                ]
            ),
        ])
        ->setField([
            'id' => 'footer_content_2_enabled',
            'section_id' => 'opt-text-subsection-footer',
            'type' => 'select',
            'label' => __('Enable Footer 2?'),
            'attributes' => [
                'name' => 'footer_content_2_enabled',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'footer_content_3_enabled',
            'section_id' => 'opt-text-subsection-footer',
            'type' => 'select',
            'label' => __('Enable Footer 3?'),
            'attributes' => [
                'name' => 'footer_content_3_enabled',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'footer_content_4_enabled',
            'section_id' => 'opt-text-subsection-footer',
            'type' => 'select',
            'label' => __('Enable Footer 4?'),
            'attributes' => [
                'name' => 'footer_content_4_enabled',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'facebook_chat_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'select',
            'label' => __('Enable Facebook chat?'),
            'attributes' => [
                'name' => 'facebook_chat_enabled',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'no',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper' => __(
                'To show chat box on that website, please go to :link and add :domain to whitelist domains!',
                [
                    'domain' => Html::link(url('')),
                    'link' => Html::link('https://www.facebook.com/' . theme_option('facebook_page_id') . '/settings/?tab=messenger_platform'),
                ]
            ),
        ])
        ->setField([
            'id' => 'facebook_page_id',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Facebook page ID'),
            'attributes' => [
                'name' => 'facebook_page_id',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper' => __(
                'You can get fan page ID using this site :link',
                ['link' => Html::link('https://findmyfbid.com')]
            ),
        ])
        ->setField([
            'id' => 'facebook_comment_enabled_in_post',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'select',
            'label' => __('Enable Facebook comment in post detail page?'),
            'attributes' => [
                'name' => 'facebook_comment_enabled_in_post',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'sidebar_canvas_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'select',
            'label' => __('Enable sidebar canvas?'),
            'attributes' => [
                'name' => 'sidebar_canvas_enabled',
                'list' => [
                    'yes' => trans('core/base::base.yes'),
                    'no' => trans('core/base::base.no'),
                ],
                'value' => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setSection([
            'title' => __('Contact info boxes'),
            'desc' => __('Contact info boxes'),
            'id' => 'opt-contact',
            'subsection' => false,
            'icon' => 'fa fa-info-circle',
            'fields' => [],
        ])
        ->setField([
            'id' => 'contact_info_boxes',
            'section_id' => 'opt-contact',
            'type' => 'repeater',
            'label' => __('Contact info boxes'),
            'attributes' => [
                'name' => 'contact_info_boxes',
                'value' => null,
                'fields' => [
                    [
                        'type' => 'text',
                        'label' => __('Type'),
                        'attributes' => [
                            'name' => 'type',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Title'),
                        'attributes' => [
                            'name' => 'title',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'text',
                        'label' => __('Subtitle'),
                        'attributes' => [
                            'name' => 'subtitle',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type' => 'mediaImage',
                        'label' => __('Image'),
                        'attributes' => [
                            'name' => 'image',
                            'value' => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ]);
});
