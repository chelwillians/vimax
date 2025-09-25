<?php

/*
* Template Name: Página Inicial
*/

get_header() ?>

<h1 class="hide-title"><?= !empty(get_field_cmb2('h1_content')) ? get_field_cmb2('h1_content') : get_the_title() ?></h1>
<?php if (!empty(get_field_cmb2('banner_show')) && !empty(get_field_cmb2('sliders'))): ?>
    <section class="main-banner">
        <div class="main-banner__list swiper">
            <div class="swiper-wrapper">
                <?php foreach (get_field_cmb2('sliders') as $index => $item): ?>
                    <div class="main-banner__item swiper-slide">
                        <?php if (!empty($item['image_desk'])): ?>
                            <img src="<?= $item['image_desk'] ?>" class="main-banner__item-image main-banner__item-image--desk" alt="<?= !empty(get_post_meta($item['image_desk_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['image_desk_id'], '_wp_attachment_image_alt', TRUE) : 'Imagem do banner' ?>">
                        <?php endif; ?>
                        <?php if (!empty($item['image_mobile'])): ?>
                            <img src="<?= $item['image_mobile'] ?>" class="main-banner__item-image main-banner__item-image--mobile" alt="<?= !empty(get_post_meta($item['image_mobile_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['image_mobile_id'], '_wp_attachment_image_alt', TRUE) : 'Imagem do banner' ?>">
                        <?php endif; ?>
                        <div class="container wrap">
                            <?php if (!empty($item['title'])): ?>
                                <h2 class="main-banner__item-title"><?= $item['title'] ?></h2>
                            <?php endif; ?>
                            <?php if (!empty($item['desc'])): ?>
                                <div class="main-banner__item-desc">
                                    <?= wpautop($item['desc']) ?>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="main-banner__navigation">
                <div class="main-banner__prev"></div>
                <div class="main-banner__next"></div>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('about_show'))): ?>
    <section class="about">
        <div class="container wrap">
            <div class="about__image-area">
                <img src="<?= !empty(get_field_cmb2('about_image')) ? get_field_cmb2('about_image') : get_template_directory_uri() . '/dist/images/sobre.jpg' ?>" alt="<?= !empty(get_post_meta(get_field_cmb2('about_image_id'), '_wp_attachment_image_alt', TRUE)) ? get_post_meta(get_field_cmb2('about_image_id'), '_wp_attachment_image_alt', TRUE) : 'Imagem sobre' ?>" class="about__image">
            </div>
            <div class="about__text">
                <?php if (!empty(get_field_cmb2('about_title'))): ?>
                    <h2 class="about__title title"><?= get_field_cmb2('about_title') ?></h2>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('about_subtitle'))): ?>
                    <p class="about__subtitle"><?= get_field_cmb2('about_subtitle') ?></p>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('about_desc'))): ?>
                    <div class="about__desc">
                        <?= wpautop(get_field_cmb2('about_desc')) ?>
                    </div>
                <?php endif; ?>

                <?php if (!empty(get_field_cmb2('about_link'))): ?>
                    <a href="<?= get_field_cmb2('about_link') ?>" class="about__button"><?= !empty(get_field_cmb2('about_text_button')) ? get_field_cmb2('about_text_button') : "Conheça nossos produtos" ?> <img src="<?= get_template_directory_uri() ?>/dist/images/icon.svg" alt=""></a>
                <?php endif; ?>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('telas_show'))): ?>
    <section class="telas">
        <div class="container wrap">
            <div class="telas__header">
                <?php if (!empty(get_field_cmb2('telas_title'))): ?>
                    <h2 class="telas__title title"><?= get_field_cmb2('telas_title') ?></h2>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('telas_desc'))): ?>
                    <div class="telas__desc">
                        <?= wpautop(get_field_cmb2('telas_desc')) ?>
                    </div>
                <?php endif; ?>
            </div>

            <div class="telas__content">
                <div class="telas__image-area">
                    <?php foreach (get_field_cmb2('telas') as $index => $item): ?>
                        <img src="<?= $item['image'] ?>" data-image-show="<?= $index ?>" alt="<?= !empty(get_post_meta($item['image_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['image_id'], '_wp_attachment_image_alt', TRUE) : 'Imagem tela' ?>" class="telas__image <?= $index === 0 ? 'active' : '' ?>">
                    <?php endforeach; ?>
                </div>
                <div class="telas__datas">
                    <?php if (!empty(get_field_cmb2('telas_subtitle'))): ?>
                        <h3 class="telas__subtitle"><?= get_field_cmb2('telas_subtitle') ?></h3>
                    <?php endif; ?>
                    <div class="telas__list">
                        <?php foreach (get_field_cmb2('telas') as $index => $item): ?>
                            <div class="telas__item" data-image-show="<?= $index ?>">
                                <div class="telas__item-header">
                                    <div class="telas__item-icon"><img src="<?= $item['icon'] ?>" alt="<?= !empty(get_post_meta($item['icon_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['icon_id'], '_wp_attachment_image_alt', TRUE) : 'Ícone tela' ?>"></div>
                                    <h3 class="telas__item-title"><?= $item['title'] ?></h3>
                                    <div class="telas__item-icon-controll"></div>
                                </div>
                                <div class="telas__item-content">
                                    <?= wpautop($item['desc']) ?>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('points_show'))): ?>
    <section class="points">
        <?php if (!empty(get_field_cmb2('points_video'))): ?>
            <video autoplay loop muted playsinline class="points__video" preload="metadata" poster="<?= !empty(get_field_cmb2('points_video_poster')) ? get_field_cmb2('points_video_poster') : '' ?>" aria-label="Vídeo">
                <!-- <source src="video-produtos-peneiramento.mp4" type="video/mp4" /> -->
                <source src="<?= get_field_cmb2('points_video') ?>" type="video/webm" />
                Seu navegador não suporta a tag de vídeo.
            </video>
        <?php endif; ?>
        <div class="container wrap">
            <?php if (!empty(get_field_cmb2('points_title'))): ?>
                <h2 class="points__title title"><?= get_field_cmb2('points_title') ?></h2>
            <?php endif; ?>

            <div class="points__list">
                <?php foreach (get_field_cmb2('points') as $index => $item): ?>
                    <div class="points__item">
                        <div class="points__item-icon">
                            <img src="<?= !empty($item['icon']) ? $item['icon'] : get_template_directory_uri() . '/dist/images/icon-capacete.svg' ?>" alt="<?= !empty(get_post_meta($item['icon_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['icon_id'], '_wp_attachment_image_alt', TRUE) : 'Ícone tela' ?>">
                        </div>
                        <div class="points__item-desc">
                            <?= wpautop($item['desc']) ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('products_show'))): ?>
    <section class="products">
        <div class="container wrap">
            <div class="products__header">
                <?php if (!empty(get_field_cmb2('products_title'))): ?>
                    <h2 class="products__title title"><?= get_field_cmb2('products_title') ?></h2>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('products_desc'))): ?>
                    <div class="products__desc">
                        <?= wpautop(get_field_cmb2('products_desc')) ?>
                    </div>
                <?php endif; ?>
                <img src="<?= get_template_directory_uri() ?>/dist/images/float-icon-products.png" class="products__float-icon" />
            </div>
            <?php
            $args_blog = array(
                'post_type'      => 'produtos',
                'posts_per_page' => -1,
                'post_status'    => 'publish',
            );
            query_posts($args_blog);

            if (have_posts()) :
            ?>
                <div class="products__list swiper">
                    <div class="swiper-wrapper">
                        <?php $i = 0;
                        $duration = 400;
                        while (have_posts()) :
                            the_post();
                        ?>
                            <div class="products__item swiper-slide">
                                <img src="<?= has_post_thumbnail() ? get_the_post_thumbnail_url('', 'medium_large') : get_template_directory_uri() . "/dist/images/post-highlight.jpg" ?>" alt="<?= has_post_thumbnail() ? get_alt(get_post_thumbnail_id()) : "Imagem do post " . get_the_title() ?>" class="products__item-image">
                                <h3 class="products__item-title"><?= get_the_title() ?></h3>
                            </div>
                        <?php $i++;
                            $duration += 200;
                        endwhile; ?>
                    </div>
                    <div class="products__navigation">
                        <div class="products__prev"></div>
                        <div class="products__next"></div>
                    </div>
                </div>
            <?php endif ?>
            <?php wp_reset_query(); ?>
            <?php if (!empty(get_field_cmb2('products_link_button'))): ?>
                <div class="products__button-area">
                    <a href="<?= get_field_cmb2('products_link_button') ?>" class="products__button"><?= !empty(get_field_cmb2('products_text_button')) ? get_field_cmb2('products_text_button') : 'Entre em contato conosco' ?> <img src="<?= get_template_directory_uri() ?>/dist/images/icon-black.svg" alt=""></a>
                </div>
            <?php endif ?>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('commitments_show'))): ?>
    <section class="commitments" style="background-image: url(<?= !empty(get_field_cmb2('commitments_bg')) ? get_field_cmb2('commitments_bg') : get_template_directory_uri() . '/dist/images/fundo-compromissos.jpg' ?>);">
        <div class="container wrap">
            <?php if (!empty(get_field_cmb2('commitments_title'))): ?>
                <h2 class="commitments__title title"><?= get_field_cmb2('commitments_title') ?></h2>
            <?php endif; ?>

            <?php if (!empty(get_field_cmb2('commitments'))): ?>
                <div class="commitments__list">
                    <?php foreach (get_field_cmb2('commitments') as $item) : ?>
                        <div class="commitments__item">
                            <h2 class="commitments__item-title"><?= $item['title'] ?></h2>
                            <div class="commitments__item-desc">
                                <?= wpautop($item['desc']) ?>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('logos_1_show'))): ?>
    <section class="logos">
        <div class="container wrap">
            <div class="logos__header">
                <?php if (!empty(get_field_cmb2('logos_1_pre_title'))): ?>
                    <p class="logos__pretitle"><?= get_field_cmb2('logos_1_pre_title') ?></p>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('logos_1_title'))): ?>
                    <h2 class="logos__title title"><?= get_field_cmb2('logos_1_title') ?></h2>
                <?php endif; ?>
            </div>
            <?php if (!empty(get_field_cmb2('logos_1'))): ?>
                <div class="logos__list">
                    <?php foreach (get_field_cmb2('logos_1') as $index => $item): ?>
                        <div class="logos__item"><img src="<?= $item['logo'] ?>" alt="<?= !empty(get_post_meta($item['logo_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['logo_id'], '_wp_attachment_image_alt', TRUE) : 'Logo' ?>"></div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('logos_2_show'))): ?>
    <section class="logos">
        <div class="container wrap">
            <div class="logos__header logos__header--reverse">
                <?php if (!empty(get_field_cmb2('logos_2_pre_title'))): ?>
                    <p class="logos__pretitle"><?= get_field_cmb2('logos_2_pre_title') ?></p>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('logos_2_title'))): ?>
                    <h2 class="logos__title title"><?= get_field_cmb2('logos_2_title') ?></h2>
                <?php endif; ?>
            </div>
            <?php if (!empty(get_field_cmb2('logos_2'))): ?>
                <div class="logos__list">
                    <?php foreach (get_field_cmb2('logos_2') as $index => $item): ?>
                        <div class="logos__item"><img src="<?= $item['logo'] ?>" alt="<?= !empty(get_post_meta($item['logo_id'], '_wp_attachment_image_alt', TRUE)) ? get_post_meta($item['logo_id'], '_wp_attachment_image_alt', TRUE) : 'Logo' ?>"></div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>
        </div>
    </section>
<?php endif; ?>

<?php if (!empty(get_field_cmb2('contact_show'))): ?>
    <section class="contact" id="contato">
        <div class="container wrap">
            <div class="contact__left">
                <?php if (!empty(get_field_cmb2('contact_title'))): ?>
                    <h2 class="contact__title title"><?= get_field_cmb2('contact_title') ?></h2>
                <?php endif; ?>
                <?php if (!empty(get_field_cmb2('contact_desc'))): ?>
                    <div class="contact__desc">
                        <p><?= get_field_cmb2('contact_desc') ?>
                            <img src="<?= get_template_directory_uri() ?>/dist/images/arrow.svg" class="contact__desc-arrow" alt="">
                        </p>
                    </div>
                <?php endif; ?>
            </div>
            <div class="contact__form">
                <?= do_shortcode(get_field_cmb2('contact_shortcode')) ?>
            </div>
        </div>
    </section>
<?php endif; ?>

<?= get_footer() ?>