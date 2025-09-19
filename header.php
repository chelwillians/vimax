<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php wp_title(); ?></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?= get_template_directory_uri() ?>/dist/css/style.min.css">

    <script>
        window.dataLayer = window.dataLayer || [];
    </script>
    <?php wp_head() ?>
</head>

<body <?php body_class() ?>>
    <?php wp_body_open(); ?>
    <header class="main-header main-header--float">
        <div class="container wrap">
            <a href="<?= get_home_url() ?>" class="main-header__logo">
                <img src="<?= get_template_directory_uri() ?>/dist/images/logo.svg" alt="Logo">
            </a>
            <?php
            $menu = get_menu_items('menu_header');
            if (count($menu) > 0):
            ?>
                <nav class="main-header__menu">
                    <ul class="main-header__menu-content">
                        <?php foreach ($menu as $item): ?>
                            <li class="main-header__menu-item"><a title="Link para <?= $item->title ?>" href="<?= $item->url ?>"><?= $item->title ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <a href="#" class="main-header__button main-header__button--mobile btn btn--default">Contato <img src="<?= get_template_directory_uri() ?>/dist/images/icon.svg" alt=""></a>
                </nav>
            <?php endif; ?>
            <div class="main-header__actions">
                <a href="#" class="main-header__button btn btn--default">Contato <img src="<?= get_template_directory_uri() ?>/dist/images/icon.svg" alt=""></a>
            </div>
            <div class="main-header__hamburguer">
                <span></span>
            </div>
        </div>
    </header>