<?php

namespace Database\Seeders;

use Botble\Member\Models\Member;
use Botble\Base\Models\MetaBox as MetaBoxModel;
use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Models\Category;
use Botble\Blog\Models\Post;
use Botble\Blog\Models\Tag;
use Botble\Language\Models\LanguageMeta;
use Botble\Slug\Models\Slug;
use Faker\Factory;
use Html;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use MetaBox;
use RvMedia;
use SlugHelper;

class BlogSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('news');

        Post::truncate();
        Category::truncate();
        Tag::truncate();
        DB::table('posts_translations')->truncate();
        DB::table('categories_translations')->truncate();
        DB::table('tags_translations')->truncate();
        Slug::where('reference_type', Post::class)->delete();
        Slug::where('reference_type', Tag::class)->delete();
        Slug::where('reference_type', Category::class)->delete();
        MetaBoxModel::where('reference_type', Post::class)->delete();
        MetaBoxModel::where('reference_type', Tag::class)->delete();
        MetaBoxModel::where('reference_type', Category::class)->delete();
        LanguageMeta::where('reference_type', Post::class)->delete();
        LanguageMeta::where('reference_type', Tag::class)->delete();
        LanguageMeta::where('reference_type', Category::class)->delete();

        $faker = Factory::create();
        $categories = [
            [
                'name' => 'Design',
                'is_default' => true,
            ],
            [
                'name' => 'Lifestyle',
            ],
            [
                'name' => 'Travel Tips',
                'parent_id' => 2,
            ],
            [
                'name' => 'Healthy',
            ],
            [
                'name' => 'Travel Tips',
                'parent_id' => 4,
            ],
            [
                'name' => 'Hotel',
            ],
            [
                'name' => 'Nature',
                'parent_id' => 6,
            ],
        ];
        $translationsCategory = [
            [
                'name' => 'Phong cách sống',
            ],
            [
                'name' => 'Sức khỏe',
            ],
            [
                'name' => 'Món ngon',
            ],
            [
                'name' => 'Sách',
            ],
            [
                'name' => 'Mẹo du lịch',
            ],
            [
                'name' => 'Khách sạn',
            ],
            [
                'name' => 'Thiên nhiên',
            ],
        ];

        foreach ($categories as $index => $item) {
            $categoryDetail = Category::create([
                'name' => $item['name'],
                'author_id' => 1,
            ]);

            Slug::create([
                'reference_type' => Category::class,
                'reference_id' => $categoryDetail->id,
                'key' => Str::slug($categoryDetail->name),
                'prefix' => SlugHelper::getPrefix(Category::class),
            ]);
        }

        foreach ($translationsCategory as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['categories_id'] = $index + 1;
            DB::table('categories_translations')->insert($item);
        }
        $tags = [
            [
                'name' => 'General',
            ],
            [
                'name' => 'Design',
            ],
            [
                'name' => 'Fashion',
            ],
            [
                'name' => 'Branding',
            ],
            [
                'name' => 'Modern',
            ],
        ];
        $translationsTag = [
            [
                'name' => 'Chung',
            ],
            [
                'name' => 'Thiết kế',
            ],
            [
                'name' => 'Thời trang',
            ],
            [
                'name' => 'Thương hiệu',
            ],
            [
                'name' => 'Hiện đại',
            ],
        ];

        foreach ($tags as $index => $item) {
            $item['author_id'] = 1;
            $item['author_type'] = User::class;
            $tag = Tag::create($item);

            Slug::create([
                'reference_type' => Tag::class,
                'reference_id' => $tag->id,
                'key' => Str::slug($tag->name),
                'prefix' => SlugHelper::getPrefix(Tag::class),
            ]);
        }

        foreach ($translationsTag as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['tags_id'] = $index + 1;
            DB::table('tags_translations')->insert($item);
        }
        $posts = [
            [
                'name' => 'The Top 2020 Handbag Trends to Know',
                'title_layout' => 'default',
            ],
            [
                'name' => 'Top Search Engine Optimization Strategies!',
                'title_layout' => 'top-full',
            ],
            [
                'name' => 'Which Company Would You Choose?',
                'title_layout' => 'inline',
            ],
            [
                'name' => 'Used Car Dealer Sales Tricks Exposed',
            ],
            [
                'name' => '20 Ways To Sell Your Product Faster',
            ],
            [
                'name' => 'The Secrets Of Rich And Famous Writers',
            ],
            [
                'name' => 'Imagine Losing 20 Pounds In 14 Days!',
            ],
            [
                'name' => 'Are You Still Using That Slow, Old Typewriter?',
            ],
            [
                'name' => 'A Skin Cream That’s Proven To Work',
            ],
            [
                'name' => '10 Reasons To Start Your Own, Profitable Website!',
            ],
            [
                'name' => 'Simple Ways To Reduce Your Unwanted Wrinkles!',
            ],
            [
                'name' => 'Apple iMac with Retina 5K display review',
            ],
            [
                'name' => '10,000 Web Site Visitors In One Month:Guaranteed',
            ],
            [
                'name' => 'Unlock The Secrets Of Selling High Ticket Items',
            ],
            [
                'name' => '4 Expert Tips On How To Choose The Right Men’s Wallet',
            ],
            [
                'name' => 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag',
            ],
        ];
        $translationsPost = [
            [
                'name' => 'Xu hướng túi xách hàng đầu năm 2020 cần biết',
            ],
            [
                'name' => 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!',
            ],
            [
                'name' => 'Bạn sẽ chọn công ty nào?',
            ],
            [
                'name' => 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng',
            ],
            [
                'name' => '20 Cách Bán Sản phẩm Nhanh hơn',
            ],
            [
                'name' => 'Bí mật của những nhà văn giàu có và nổi tiếng',
            ],
            [
                'name' => 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!',
            ],
            [
                'name' => 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?',
            ],
            [
                'name' => 'Một loại kem dưỡng da đã được chứng minh hiệu quả',
            ],
            [
                'name' => '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!',
            ],
            [
                'name' => 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!',
            ],
            [
                'name' => 'Đánh giá Apple iMac với màn hình Retina 5K',
            ],
            [
                'name' => '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo',
            ],
            [
                'name' => 'Mở khóa Bí mật Bán được vé Cao',
            ],
            [
                'name' => '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp',
            ],
            [
                'name' => 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế',
            ],
        ];

        foreach ($posts as $index => $item) {
            $item['content'] =
                ($index % 3 == 0 ? Html::tag(
                    'p',
                    '[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]'
                ) : '') .
                Html::tag('h2', $faker->realText(30)) .
                Html::tag('p', $faker->realText(1000)) .
                Html::tag(
                    'p',
                    Html::image(RvMedia::getImageUrl('news/news-' . $faker->numberBetween(1, 7) . '.jpg', 'medium'))
                        ->toHtml(),
                    ['class' => 'text-center']
                ) .
                Html::tag('p', $faker->realText(500)) .
                Html::tag('h2', $faker->realText(30)) .
                Html::tag(
                    'p',
                    Html::image(RvMedia::getImageUrl('news/news-' . $faker->numberBetween(8, 15) . '.jpg', 'medium'))
                        ->toHtml(),
                    ['class' => 'text-center']
                ) .
                Html::tag('p', $faker->realText(1000)) .
                Html::tag('h2', $faker->realText(30)) .
                Html::tag('h3', $faker->realText(30)) .
                Html::tag('p', $faker->realText(500)) .
                Html::tag('h3', $faker->realText(30)) .
                Html::tag('p', $faker->realText(500)) .
                Html::tag('h3', $faker->realText(30)) .
                Html::tag('p', $faker->realText(500)) .
                Html::tag('h3', $faker->realText(30)) .
                Html::tag('p', $faker->realText(500)) .
                Html::tag('h2', $faker->realText(30)) .
                Html::tag(
                    'p',
                    Html::image(RvMedia::getImageUrl('news/news-' . $faker->numberBetween(15, 20) . '.jpg', 'medium'))
                        ->toHtml(),
                    ['class' => 'text-center']
                ) .
                Html::tag('p', $faker->realText(500));
            $item['author_id'] = 1;
            $item['author_type'] = Member::class;
            $item['views'] = $faker->numberBetween(100, 2500);
            $item['is_featured'] = $index < 6;
            $item['image'] = 'news/news-' . ($index + 1) . '.jpg';
            $item['description'] = $faker->text();
            $item['format_type'] = $index % 3 == 0 ? 'video' : 'default';
            $title_layout = isset($item['title_layout']) ? $item['title_layout'] : false;
            unset($item['title_layout']);
            $post = Post::create($item);
            if ($title_layout) {
                MetaBox::saveMetaBoxData($post, 'title_layout', $title_layout);
            }
            $post->categories()->sync([1, 2, 3, 4, 5, 6, 7]);

            $post->tags()->sync([1, 2, 3, 4, 5, 6, 7]);

            $inserted[] = $post;
            Slug::create([
                'reference_type' => Post::class,
                'reference_id' => $post->id,
                'key' => Str::slug($post->name),
                'prefix' => SlugHelper::getPrefix(Post::class),
            ]);
        }
        foreach ($translationsPost as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['posts_id'] = $index + 1;
            $item['description'] = $inserted[$index]->description;
            $item['content'] = $inserted[$index]->content;
            DB::table('posts_translations')->insert($item);
        }
    }
}
