<footer class="main-footer">
    <div class="container wrap">
        <div class="main-footer__left">
            <div class="main-footer__logo-area">
                <img src="<?php echo !empty(get_option('opt_page_theme_options')['logo_footer']) ? get_option('opt_page_theme_options')['logo_footer'] : get_template_directory_uri() . '/dist/images/logo-footer.svg' ?>" alt="Logo">
            </div>
            <?php if (!empty(get_option('opt_page_theme_options')['endereco'])): ?>
                <div class="main-footer__text">
                    <p><?= get_option('opt_page_theme_options')['endereco'] ?></p>
                </div>
            <?php endif; ?>
        </div>
        <div class="main-footer__right">
            <div class="main-footer__list">
                <?php if (!empty(get_option('opt_page_theme_options')['telefone'])): ?>
                    <div class="main-footer__item">
                        <h3 class="main-footer__item-label">Telefone</h3>
                        <a href="tel:<?= get_option('opt_page_theme_options')['telefone'] ?>" target="_blank" class="main-footer__item-content"><?= get_option('opt_page_theme_options')['telefone'] ?></a>
                    </div>
                <?php endif; ?>
                <?php if (!empty(get_option('opt_page_theme_options')['whatsapp'])): ?>
                    <div class="main-footer__item">
                        <h3 class="main-footer__item-label">Whatsapp</h3>
                        <a href="https://wa.me/<?= preg_replace('/\D/', '', get_option('opt_page_theme_options')['whatsapp']) ?>" target="_blank" class="main-footer__item-content"><?= get_option('opt_page_theme_options')['whatsapp'] ?></a>
                    </div>
                <?php endif; ?>
                <?php if (!empty(get_option('opt_page_theme_options')['email'])): ?>
                    <div class="main-footer__item">
                        <h3 class="main-footer__item-label">E-mail</h3>
                        <a href="mailto:<?= get_option('opt_page_theme_options')['email'] ?>" target="_blank" class="main-footer__item-content"><?= get_option('opt_page_theme_options')['email'] ?></a>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</footer>
<div class="copyright">
    <div class="container wrap">
        <p><?= date('Y') ?>. Todos os direito Reservados.</p>
        <p>Desenvolvido por <a target="_blank" href="https://michelwillians.com">Michel Willians</a>.</p>
    </div>
</div>

<script src="<?= get_template_directory_uri() ?>/dist/js/main.min.js"></script>
<?php wp_footer() ?>
</body>

</html>