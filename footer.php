<footer class="main-footer">
    <div class="container wrap">
        <div class="main-footer__left">
            <div class="main-footer__logo-area">
                <img src="<?= get_template_directory_uri() ?>/dist/images/logo-footer.svg" alt="Logo">
            </div>
            <div class="main-footer__text">
                <p>R. Gen. Sócrates, 216, 5º Andar - Penha de França, São Paulo - SP, 03632-040</p>
            </div>
        </div>
        <div class="main-footer__right">
            <div class="main-footer__list">
                <div class="main-footer__item">
                    <h3 class="main-footer__item-label">Telefone</h3>
                    <a href="#" class="main-footer__item-content">+ 55 11 2993-8311</a>
                </div>
                <div class="main-footer__item">
                    <h3 class="main-footer__item-label">Whatsapp</h3>
                    <a href="#" class="main-footer__item-content">+ 55 11 9XXXX-XXXX</a>
                </div>
                <div class="main-footer__item">
                    <h3 class="main-footer__item-label">E-mail</h3>
                    <a href="#" class="main-footer__item-content">vendas@vimax.com.br</a>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="copyright">
    <div class="container wrap">
        <p><?= date('Y') ?>. Todos os direito Reservadodos.</p>
        <p>Desenvolvido por <a target="_blank" href="https://michelwillians.com">Michel Willians</a>.</p>
    </div>
</div>

<script src="<?= get_template_directory_uri() ?>/dist/js/main.min.js"></script>
<?php wp_footer() ?>
</body>

</html>