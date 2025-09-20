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

<section class="about">
    <div class="container wrap">
        <div class="about__image-area">
            <img src="<?= get_template_directory_uri() ?>/dist/images/sobre.jpg" alt="" class="about__image">
        </div>
        <div class="about__text">
            <h2 class="about__title title">TRADIÇÃO <strong>E INOVAÇÃO</strong></h2>
            <p class="about__subtitle">A Vimax é especializada na fabricação de Telas para Peneiramento para classificação de minérios e agregados. </p>
            <div class="about__desc">
                <p>Completa linha de produtos para atender as especificações do seu peneiramento e com uma equipe altamente especializada para desenvolver soluções e garantir as exigencias do processo. </p>
            </div>

            <a href="#" class="about__button">Conheça nossos produtos <img src="<?= get_template_directory_uri() ?>/dist/images/icon.svg" alt=""></a>
        </div>
    </div>
</section>

<section class="telas">
    <div class="container wrap">
        <div class="telas__header">
            <h2 class="telas__title title">A tela certa para o seu peneiramento.</h2>
            <div class="telas__desc">
                <p>Pioneira no desenvolvimento de novas matérias primas para garantir a maior eficiência e durabilidade. </p>
            </div>
        </div>

        <div class="telas__content">
            <div class="telas__image-area">
                <img src="<?= get_template_directory_uri() ?>/dist/images/peneira-1.jpg" data-image-show="1" alt="" class="telas__image active">
                <img src="<?= get_template_directory_uri() ?>/dist/images/peneira-2.jpg" data-image-show="2" alt="" class="telas__image">
                <img src="<?= get_template_directory_uri() ?>/dist/images/peneira-2.jpg" data-image-show="3" alt="" class="telas__image">
            </div>
            <div class="telas__datas">
                <h3 class="telas__subtitle">Conheça nossas linhas de produtos</h3>
                <div class="telas__list">
                    <div class="telas__item" data-image-show="1">
                        <div class="telas__item-header">
                            <div class="telas__item-icon"><img src="<?= get_template_directory_uri() ?>/dist/images/icon-telas-1.svg" alt=""></div>
                            <h3 class="telas__item-title">Telas em Aço</h3>
                            <div class="telas__item-icon-controll"></div>
                        </div>
                        <div class="telas__item-content">
                            <p>Área livre</p>
                            <p>Eficiência</p>
                            <p>Produtividade</p>
                        </div>
                    </div>
                    <div class="telas__item" data-image-show="2">
                        <div class="telas__item-header">
                            <div class="telas__item-icon"><img src="<?= get_template_directory_uri() ?>/dist/images/icon-telas-2.svg" alt=""></div>
                            <h3 class="telas__item-title">Telas de borracha</h3>
                            <div class="telas__item-icon-controll"></div>
                        </div>
                        <div class="telas__item-content">
                            <p>Durabilidade</p>
                            <p>Custo x Benefício</p>
                            <p>Versatilidade</p>
                        </div>
                    </div>
                    <div class="telas__item" data-image-show="3">
                        <div class="telas__item-header">
                            <div class="telas__item-icon"><img src="<?= get_template_directory_uri() ?>/dist/images/icon-telas-3.svg" alt=""></div>
                            <h3 class="telas__item-title">Telas em PU</h3>
                            <div class="telas__item-icon-controll"></div>
                        </div>
                        <div class="telas__item-content">
                            <p>Eficiência</p>
                            <p>Durabilidade</p>
                            <p>Versatilidade</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="points">
    <video autoplay loop muted playsinline class="points__video" preload="metadata" poster="<?= get_template_directory_uri() ?>/dist/images/thumb-video.png" aria-label="Vídeo demonstrativo de produtos que vibram com o sucesso do seu peneiramento">
        <!-- <source src="video-produtos-peneiramento.mp4" type="video/mp4" /> -->
        <source src="<?= get_template_directory_uri() ?>/dist/videos/video_fundo.webm" type="video/webm" />
        Seu navegador não suporta a tag de vídeo. <a href="video-produtos-peneiramento.mp4">Clique aqui para baixar o vídeo.</a>
    </video>
    <div class="container wrap">
        <h2 class="points__title title">Produtos que <strong>vibram com o sucesso</strong> do seu peneiramento. </h2>

        <div class="points__list">
            <div class="points__item">
                <div class="points__item-icon">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/icon-capacete.svg" alt="">
                </div>
                <div class="points__item-desc">
                    <p>Departamento de de engenharia e assistência técnica.</p>
                </div>
            </div>
            <div class="points__item">
                <div class="points__item-icon">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/icon-bola.svg" alt="">
                </div>
                <div class="points__item-desc">
                    <p>Membro da Wear Media Alliance.</p>
                </div>
            </div>
            <div class="points__item">
                <div class="points__item-icon">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/icon-calendario.svg" alt="">
                </div>
                <div class="points__item-desc">
                    <p><strong>Comprometimento</strong> com a qualidade e atendimento.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="products">
    <div class="container wrap">
        <div class="products__header">
            <h2 class="products__title title">Completa linha de telas para a sua operação.</h2>
            <div class="products__desc">
                <p>Conheça nossas famílias de produtos.</p>
            </div>
            <img src="<?= get_template_directory_uri() ?>/dist/images/float-icon-products.png" class="products__float-icon" />
        </div>
        <div class="products__list swiper">
            <div class="swiper-wrapper">
                <div class="products__item swiper-slide">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/telas-autolimpantes.jpg" alt="" class="products__item-image">
                    <h3 class="products__item-title">Telas Autolimpantes</h3>
                </div>
                <div class="products__item swiper-slide">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/peneiramento-de-finos.jpg" alt="" class="products__item-image">
                    <h3 class="products__item-title">Peneiramento de Finos</h3>
                </div>
                <div class="products__item swiper-slide">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/tela-mista.jpg" alt="" class="products__item-image">
                    <h3 class="products__item-title">Tela Mista</h3>
                </div>
                <div class="products__item swiper-slide">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/trommel.jpg" alt="" class="products__item-image">
                    <h3 class="products__item-title">Projetos Especiais</h3>
                </div>
                <div class="products__item swiper-slide">
                    <img src="<?= get_template_directory_uri() ?>/dist/images/produto.jpg" alt="" class="products__item-image">
                    <h3 class="products__item-title">Produto</h3>
                </div>
            </div>
        </div>
        <div class="products__button-area">
            <a href="#" class="products__button">Entre em contato conosco <img src="<?= get_template_directory_uri() ?>/dist/images/icon-black.svg" alt=""></a>
        </div>
    </div>
</section>

<section class="commitments" style="background-image: url(<?= get_template_directory_uri() ?>/dist/images/fundo-compromissos.jpg);">
    <div class="container wrap">
        <h2 class="commitments__title title">Compromissos</h2>

        <div class="commitments__list">
            <div class="commitments__item">
                <h2 class="commitments__item-title">Qualidade.</h2>
                <div class="commitments__item-desc">
                    <p>A Vimax trabalha sempre com o objetivo de desenhar e fabricar produtos de altíssima qualidade, projetando telas para aplicações especificas.</p>
                </div>
            </div>
            <div class="commitments__item">
                <h2 class="commitments__item-title">Matéria prima.</h2>
                <div class="commitments__item-desc">
                    <p>Os materiais utilizados na fabricação das Telas, seguem rigorosamente as especificações das normas SAE, DIN, ASTM e ABNT, garantindo as propriedades físicas e químicas para um desempenho ideal no processo de peneiramento </p>
                </div>
            </div>
            <div class="commitments__item">
                <h2 class="commitments__item-title">assistência técnica.</h2>
                <div class="commitments__item-desc">
                    <p>Equipe técnica à disposição dos nossos clientes, desde o levantamento de dados dos processos, detalhamento das melhorias propostas, instalação e acompanhamento de desempenho. </p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="logos">
    <div class="container wrap">
        <div class="logos__header">
            <p class="logos__pretitle">Comprometimento com a inovação.</p>
            <h2 class="logos__title title">Eventos e Feiras.</h2>
        </div>
        <div class="logos__list">
            <div class="logos__item"><img src="https://placehold.co/356x100" alt=""></div>
            <div class="logos__item"><img src="https://placehold.co/356x100" alt=""></div>
            <div class="logos__item"><img src="https://placehold.co/356x100" alt=""></div>
        </div>
    </div>
</section>

<section class="logos">
    <div class="container wrap">
        <div class="logos__header logos__header--reverse">
            <p class="logos__pretitle">Comprometimento com o mercado.</p>
            <h2 class="logos__title title">Associações.</h2>
        </div>
        <div class="logos__list">
            <div class="logos__item"><img src="https://placehold.co/356x100" alt=""></div>
            <div class="logos__item"><img src="https://placehold.co/356x100" alt=""></div>
            <div class="logos__item"><img src="https://placehold.co/356x100" alt=""></div>
        </div>
    </div>
</section>

<section class="contact">
    <div class="container wrap">
        <div class="contact__left">
            <h2 class="contact__title title">Entre em contato conosco.</h2>
            <div class="contact__desc">
                <p>Estamos à disposição para atender as suas necessidades
                    <img src="<?= get_template_directory_uri() ?>/dist/images/arrow.svg" class="contact__desc-arrow" alt="">
                </p>
            </div>
        </div>
        <div class="contact__form">
            <form action="">
                <input type="text" name="nome" placeholder="Nome" id="">
                <input type="text" name="empresa" placeholder="Empresa" id="">
                <input type="email" name="email" placeholder="E-mail" id="">
                <input type="tel" name="tel" placeholder="Telefone" id="">
                <textarea name="mensagem" placeholder="mensagem" id=""></textarea>
                <input type="submit" value="Solicitar contato">
                <label class="accept">
                    <input type="checkbox" name="dados" id="">
                    <span>Aceito receber comunicações da Vimax</span>
                </label>
            </form>
        </div>
    </div>
</section>

<?= get_footer() ?>