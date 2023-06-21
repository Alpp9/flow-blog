<?php

namespace Database\Seeders;

use Botble\Base\Models\MetaBox as MetaBoxModel;
use Botble\Base\Supports\BaseSeeder;
use Botble\Language\Models\LanguageMeta;
use Botble\Page\Models\Page;
use Botble\Slug\Models\Slug;
use Html;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use SlugHelper;

class PageSeeder extends BaseSeeder
{
    public function run(): void
    {
        $pages = [
            [
                'name' => 'Homepage',
                'content' =>
                    Html::tag('div', '[posts-slider title="" filter_by="featured" limit="4" include="" style="1"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Trending Topics" subtitle="" categories="" categories_exclude="" style="3" limit="6"][/posts-grid]') .
                    Html::tag('div', '[posts-slider title="Editor\'s picked" filter_by="ids" limit="4" include="1,2,3,4" style="2"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent Articles" subtitle="Don\'t miss new trend" categories="" categories_exclude="" style="2" limit="6"][/posts-grid]') .
                    Html::tag('div', '[theme-galleries title="@ OUR GALLERIES" limit="8"][/theme-galleries]')
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'Home 2',
                'content' =>
                    Html::tag('div', '[featured-grid][/featured-grid]') .
                    Html::tag('div', '[posts-sidebar title="Recent posts" filter_by="recent" limit="4" include=""][/posts-sidebar]') .
                    Html::tag('div', '[posts-slider title="Editor\'s picked" filter_by="ids" limit="4" include="1,2,3,4" style="2"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent" subtitle="" categories="" categories_exclude="" style="3" limit="6"][/posts-grid]') .
                    Html::tag('div', '[theme-galleries title="@ OUR GALLERIES" limit="8"][/theme-galleries]')
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'Home 3',
                'content' =>
                    Html::tag('div', '[posts-slider title="" filter_by="featured" limit="4" include="" style="3"][/posts-slider]') .
                    Html::tag('div', '[popular-categories title="Trending Topics" limit="6"][/popular-categories]') .
                    Html::tag('div', '[posts-slider title="Editor\'s picked" filter_by="ids" limit="4" include="1,2,3,4" style="2"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent Articles" subtitle="Don\'t miss new trend" categories="" categories_exclude="" style="2" limit="4"][/posts-grid]') .
                    Html::tag('div', '[theme-galleries title="@ OUR GALLERIES" limit="8"][/theme-galleries]')
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'Blog',
                'content' => '---',
                'template' => 'default',
            ],
            [
                'name' => 'Blog big',
                'content' => Html::tag('div', '[categories-big limit="12"][/categories-big]'),
                'template' => 'no-breadcrumbs',
            ],
            [
                'name' => 'Blog grid',
                'content' => Html::tag('div', '[posts-slider title="" filter_by="ids" limit="4" include="1,2,3" style="1"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent Articles" subtitle="Don\'t miss new trend
                    " categories="" categories_exclude="" include="4,5,6" exclude="" style="2" limit="4" order_by="views" order="desc"][/posts-grid]') .
                    Html::tag('div', '[categories-grid limit="12"][/categories-grid]'),
                'template' => 'full',
            ],
            [
                'name' => 'Blog list',
                'content' => Html::tag('div', '[categories-list limit="12"][/categories-list]'),
                'template' => 'right-sidebar',
            ],
            [
                'name' => 'Blog list 2',
                'content' => Html::tag('div', '[categories-list-2 limit="12"][/categories-list-2]'),
                'template' => 'default',
            ],
            [
                'name' => 'Contact',
                'content' =>
                    Html::tag('div', '[contact-form title="Get in Touch"][/contact-form]') .
                    Html::tag('div', '[our-office title="Our Office" subtitle="Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur odio delectus, odit tempora."][/our-office]')
                ,
                'template' => 'default',
            ],
            [
                'name' => 'Cookie Policy',
                'content' => Html::tag('h3', 'EU Cookie Consent') .
                    Html::tag(
                        'p',
                        'To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.'
                    ) .
                    Html::tag('h4', 'Essential Data') .
                    Html::tag(
                        'p',
                        'The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.'
                    ) .
                    Html::tag(
                        'p',
                        '- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.'
                    ) .
                    Html::tag(
                        'p',
                        '- XSRF-Token Cookie: Laravel automatically generates a CSRF "token" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.'
                    ),
                'template' => 'default',
            ],
        ];
        $translationsPage = [
            [
                'name' => 'Trang chủ',
                'content' =>
                    Html::tag('div', '[posts-slider title="" filter_by="featured" limit="4" include="" style="1"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Trending Topics" subtitle="" categories="" categories_exclude="" style="3" limit="6"][/posts-grid]') .
                    Html::tag('div', '[posts-slider title="Editor\'s picked" filter_by="ids" limit="4" include="1,2,3,4" style="2"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent Articles" subtitle="Don\'t miss new trend" categories="" categories_exclude="" style="2" limit="6"][/posts-grid]') .
                    Html::tag('div', '[theme-galleries title="@ OUR GALLERIES" limit="8"][/theme-galleries]')
                ,
            ],
            [
                'name' => 'Trang chủ 2',
                'content' =>
                    Html::tag('div', '[featured-grid][/featured-grid]') .
                    Html::tag('div', '[posts-sidebar title="Recent posts" filter_by="recent" limit="4" include=""][/posts-sidebar]') .
                    Html::tag('div', '[posts-slider title="Editor\'s picked" filter_by="ids" limit="4" include="1,2,3,4" style="2"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent" subtitle="" categories="" categories_exclude="" style="3" limit="6"][/posts-grid]') .
                    Html::tag('div', '[theme-galleries title="@ OUR GALLERIES" limit="8"][/theme-galleries]')
                ,
            ],
            [
                'name' => 'Trang chủ 3',
                'content' =>
                    Html::tag('div', '[posts-slider title="" filter_by="featured" limit="4" include="" style="3"][/posts-slider]') .
                    Html::tag('div', '[popular-categories title="Danh mục nổi bật" limit="6"][/popular-categories]') .
                    Html::tag('div', '[posts-slider title="Editor\'s picked" filter_by="ids" limit="4" include="1,2,3,4" style="2"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent Articles" subtitle="Don\'t miss new trend" categories="" categories_exclude="" style="2" limit="4"][/posts-grid]') .
                    Html::tag('div', '[theme-galleries title="@ OUR GALLERIES" limit="8"][/theme-galleries]')
                ,
            ],
            [
                'name' => 'Tin tức',
                'content' => '---',
            ],
            [
                'name' => 'Tin tức',
                'content' => Html::tag('div', '[categories-big limit="12"][/categories-big]'),
            ],
            [
                'name' => 'Tin tức cột',
                'content' =>
                    Html::tag('div', '[posts-slider title="" filter_by="ids" limit="4" include="1,2,3" style="1"][/posts-slider]') .
                    Html::tag('div', '[posts-grid title="Recent Articles" subtitle="Don\'t miss new trend
                    " categories="" categories_exclude="" include="4,5,6" exclude="" style="2" limit="4" order_by="views" order="desc"][/posts-grid]') .
                    Html::tag('div', '[categories-grid limit="12"][/categories-grid]'),
            ],
            [
                'name' => 'Tin tức danh sách',
                'content' => Html::tag('div', '[categories-list limit="12"][/categories-list]'),
            ],
            [
                'name' => 'Tin tức danh sách 2',
                'content' => Html::tag('div', '[categories-list-2 limit="12"][/categories-list-2]'),
            ],
            [
                'name' => 'Liên hệ',
                'content' =>
                    Html::tag('div', '[contact-form title="Liên hệ"][/contact-form]') .
                    Html::tag('div', '[our-office title="Văn phòng chúng tôi" subtitle="Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur odio delectus, odit tempora."][/our-office]'),
            ],
            [
                'name' => 'Cookie Policy',
                'content' => Html::tag('h3', 'EU Cookie Consent') .
                    Html::tag(
                        'p',
                        'Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.'
                    ) .
                    Html::tag('h4', 'Dữ liệu cần thiết') .
                    Html::tag(
                        'p',
                        'Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.'
                    ) .
                    Html::tag(
                        'p',
                        '- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.'
                    ) .
                    Html::tag(
                        'p',
                        '- XSRF-Token Cookie: Laravel tự động tạo "token" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.'
                    ),
            ],
        ];

        Page::truncate();
        DB::table('pages_translations')->truncate();
        Slug::where('reference_type', Page::class)->delete();
        MetaBoxModel::where('reference_type', Page::class)->delete();
        LanguageMeta::where('reference_type', Page::class)->delete();

        foreach ($pages as $index => $item) {
            $item['user_id'] = 1;
            $page = Page::create($item);

            Slug::create([
                'reference_type' => Page::class,
                'reference_id' => $page->id,
                'key' => Str::slug($page->name),
                'prefix' => SlugHelper::getPrefix(Page::class),
            ]);
        }

        foreach ($translationsPage as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['pages_id'] = $index + 1;

            DB::table('pages_translations')->insert($item);
        }
    }
}
