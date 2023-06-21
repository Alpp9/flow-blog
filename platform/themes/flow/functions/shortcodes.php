<?php

use Botble\Theme\Supports\ThemeSupport;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();

    if (is_plugin_active('blog')) {
        add_shortcode('featured-grid', __('Featured grid'), __('Featured grid'), function () {
            return Theme::partial('shortcodes.featured-grid');
        });

        add_shortcode('posts-sidebar', __('Posts and Sidebar'), __('Posts and Sidebar'), function ($shortcode) {
            $attributes = $shortcode->toArray();
            $queryPosts = [
                'categories' => $attributes['categories'] ?? '',
                'categories_exclude' => $attributes['categories_exclude'] ?? '',
                'include' => $attributes['include'] ?? '',
                'exclude' => $attributes['exclude'] ?? '',
                'limit' => $attributes['limit'] ?? 4,
                'order_by' => $attributes['order_by'] ?? 'updated_at',
                'order' => $attributes['order'] ?? 'desc',
            ];
            $title = $attributes['title'] ?? '';
            $posts = query_post($queryPosts);

            return Theme::partial('shortcodes.posts-sidebar', [
                'title' => $title,
                'posts' => $posts,
            ]);
        });

        shortcode()->setAdminConfig('posts-sidebar', function ($attributes) {
            return Theme::partial('shortcodes.posts-sidebar-admin-config', compact('attributes'));
        });

        add_shortcode('posts-grid', __('Posts Grid'), __('Posts Grid'), function ($shortcode) {
            $attributes = $shortcode->toArray();
            $queryPosts = [
                'categories' => $attributes['categories'] ?? '',
                'categories_exclude' => $attributes['categories_exclude'] ?? '',
                'include' => $attributes['include'] ?? '',
                'exclude' => $attributes['exclude'] ?? '',
                'limit' => $attributes['limit'] ?? 4,
                'order_by' => $attributes['order_by'] ?? 'updated_at',
                'order' => $attributes['order'] ?? 'desc',
            ];
            $title = $attributes['title'] ?? '';
            $subtitle = $attributes['subtitle'] ?? '';
            $style = $attributes['style'] ?? 2;

            $posts = query_post($queryPosts);

            return Theme::partial('shortcodes.posts-grid', compact('posts', 'title', 'subtitle', 'style'));
        });

        shortcode()->setAdminConfig('posts-grid', function ($attributes) {
            return Theme::partial('shortcodes.posts-grid-admin-config', compact('attributes'));
        });

        add_shortcode('posts-slider', __('Posts slider'), __('Posts slider'), function ($shortcode) {
            $attributes = $shortcode->toArray();
            $queryPosts = [
                'categories' => $attributes['categories'] ?? '',
                'categories_exclude' => $attributes['categories_exclude'] ?? '',
                'include' => $attributes['include'] ?? '',
                'exclude' => $attributes['exclude'] ?? '',
                'limit' => $attributes['limit'] ?? 4,
                'order_by' => $attributes['order_by'] ?? 'updated_at',
                'order' => $attributes['order'] ?? 'desc',
            ];
            $title = $attributes['title'] ?? '';
            $subtitle = $attributes['subtitle'] ?? '';
            $style = $attributes['style'] ?? 2;

            $posts = query_post($queryPosts);

            return Theme::partial('shortcodes.posts-slider-style-' . $style, compact('posts', 'title'));
        });

        shortcode()->setAdminConfig('posts-slider', function ($attributes) {
            return Theme::partial('shortcodes.posts-slider-admin-config', compact('attributes'));
        });

        add_shortcode('popular-categories', __('Popular categories'), __('Popular categories'), function ($shortcode) {
            $title = $shortcode->title;
            $limit = $shortcode->limit;

            return Theme::partial('shortcodes.popular-categories', compact('title', 'limit'));
        });

        shortcode()->setAdminConfig('popular-categories', function ($attributes) {
            return Theme::partial('shortcodes.popular-categories-admin-config', compact('attributes'));
        });

        add_shortcode('categories-big', __('Categories big'), __('Add categories posts big'), function ($shortcode) {
            $attributes = $shortcode->toArray();
            $queryPosts = [
                'categories' => $attributes['categories'] ?? '',
                'categories_exclude' => $attributes['categories_exclude'] ?? '',
                'per_page' => $attributes['per_page'] ?? 12,
                'order_by' => $attributes['order_by'] ?? 'updated_at',
                'order' => $attributes['order'] ?? 'desc',
            ];

            $posts = query_post($queryPosts);

            return Theme::partial('shortcodes.categories-big', compact('posts'));
        });

        shortcode()->setAdminConfig('categories-big', function ($attributes) {
            return Theme::partial('shortcodes.categories-big-admin-config', compact('attributes'));
        });

        add_shortcode('categories-list', __('Categories list'), __('Add categories posts list'), function ($shortcode) {
            $attributes = $shortcode->toArray();
            $queryPosts = [
                'categories' => $attributes['categories'] ?? '',
                'categories_exclude' => $attributes['categories_exclude'] ?? '',
                'per_page' => $attributes['per_page'] ?? 12,
                'order_by' => $attributes['order_by'] ?? 'updated_at',
                'order' => $attributes['order'] ?? 'desc',
            ];

            $posts = query_post($queryPosts);

            return Theme::partial('shortcodes.categories-list', compact('posts'));
        });

        shortcode()->setAdminConfig('categories-list', function ($attributes) {
            return Theme::partial('shortcodes.categories-list-admin-config', compact('attributes'));
        });

        add_shortcode(
            'categories-list-2',
            __('Categories list 2'),
            __('Add categories posts list 2'),
            function ($shortcode) {
                $attributes = $shortcode->toArray();
                $queryPosts = [
                    'categories' => $attributes['categories'] ?? '',
                    'categories_exclude' => $attributes['categories_exclude'] ?? '',
                    'per_page' => $attributes['per_page'] ?? 12,
                    'order_by' => $attributes['order_by'] ?? 'updated_at',
                    'order' => $attributes['order'] ?? 'desc',
                ];

                $posts = query_post($queryPosts);

                return Theme::partial('shortcodes.categories-list-2', compact('posts'));
            }
        );

        shortcode()->setAdminConfig('categories-list-2', function ($attributes) {
            return Theme::partial('shortcodes.categories-list-2-admin-config', compact('attributes'));
        });

        add_shortcode('categories-grid', __('Categories grid'), __('Add categories posts grid'), function ($shortcode) {
            $attributes = $shortcode->toArray();
            $queryPosts = [
                'categories' => $attributes['categories'] ?? '',
                'categories_exclude' => $attributes['categories_exclude'] ?? '',
                'per_page' => $attributes['per_page'] ?? 12,
                'order_by' => $attributes['order_by'] ?? 'updated_at',
                'order' => $attributes['order'] ?? 'desc',
            ];

            $posts = query_post($queryPosts);

            return Theme::partial('shortcodes.categories-grid', compact('posts'));
        });

        add_shortcode('contact-form', __('Contact form'), __('Add contact form'), function ($shortcode) {
            $title = $shortcode->title ?: '';

            return Theme::partial('shortcodes.contact-form', compact('title'));
        });

        shortcode()->setAdminConfig('contact-form', function ($attributes) {
            return Theme::partial('shortcodes.contact-form-admin-config', compact('attributes'));
        });

        shortcode()->setAdminConfig('categories-grid', function ($attributes) {
            return Theme::partial('shortcodes.categories-grid-admin-config', compact('attributes'));
        });
    }

    if (is_plugin_active('gallery')) {
        add_shortcode('theme-galleries', __('Theme Galleries'), __('Theme Galleries'), function ($shortcode) {
            $title = $shortcode->title;
            $limit = $shortcode->limit;

            return Theme::partial('shortcodes.theme-galleries', compact('title', 'limit'));
        });

        shortcode()->setAdminConfig('theme-galleries', function ($attributes) {
            return Theme::partial('shortcodes.theme-galleries-admin-config', compact('attributes'));
        });

        add_shortcode('gallery', __('Gallery'), __('Gallery'), function ($shortcode) {
            $title = $shortcode->title;
            $gallery_id = $shortcode->gallery;
            $gallery = app(GalleryInterface::class)->getFirstBy([
                'id' => $gallery_id,
            ]);

            return Theme::partial('shortcodes.gallery', compact('title', 'gallery'));
        });

        shortcode()->setAdminConfig('gallery', function ($attributes) {
            return Theme::partial('shortcodes.gallery-admin-config', compact('attributes'));
        });
    }

    add_shortcode('our-office', __('Our office'), __('Our office'), function ($shortcode) {
        return Theme::partial('shortcodes.our-office', [
            'title' => $shortcode->title,
            'subtitle' => $shortcode->subtitle,
        ]);
    });

    shortcode()->setAdminConfig('our-office', function ($attributes) {
        return Theme::partial('shortcodes.our-office-admin-config', compact('attributes'));
    });
});
