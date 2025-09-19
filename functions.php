<?php

// Desabilitar suporte a comentários e trackbacks em todos os post types
function disable_comments_support()
{
    foreach (get_post_types() as $post_type) {
        if (post_type_supports($post_type, 'comments')) {
            remove_post_type_support($post_type, 'comments');
            remove_post_type_support($post_type, 'trackbacks');
        }
    }
}
add_action('admin_init', 'disable_comments_support');

// Remover o menu de comentários no admin
function disable_comments_admin_menu()
{
    remove_menu_page('edit-comments.php');
}
add_action('admin_menu', 'disable_comments_admin_menu');

// Redirecionar ao tentar acessar a tela de comentários no admin
function disable_comments_admin_redirect()
{
    global $pagenow;
    if ($pagenow === 'edit-comments.php') {
        wp_redirect(admin_url());
        exit;
    }
}
add_action('admin_init', 'disable_comments_admin_redirect');

// Remover o widget de comentários do Dashboard
function disable_comments_dashboard()
{
    remove_meta_box('dashboard_recent_comments', 'dashboard', 'normal');
}
add_action('wp_dashboard_setup', 'disable_comments_dashboard');

// Remover template de comentários no front-end
add_filter('comments_template', '__return_empty_string');

// disable api
add_filter('xmlrpc_enabled', '__return_false');


// Functions
function hide_editor()
{
    // Obtém o ID do Post
    $post_id = filter_input(INPUT_GET, 'post', FILTER_SANITIZE_NUMBER_INT)
        ?? filter_input(INPUT_POST, 'post_ID', FILTER_SANITIZE_NUMBER_INT);

    if (!$post_id) {
        return; // Sai se não houver um ID de post válido
    }

    // Obtém o nome do arquivo de template da página
    $template_file = get_post_meta($post_id, '_wp_page_template', true);

    // Lista de templates que ocultam o editor
    $templates_to_hide_editor = [
        'index.php',
    ];

    // Remove o suporte ao editor para templates especificados
    if (in_array($template_file, $templates_to_hide_editor, true)) {
        remove_post_type_support('page', 'editor');
    }
}
add_action('admin_init', 'hide_editor');

//Pagination
function pagination($pages = '', $range = 4)
{
    $showitems = ($range * 2) + 1;
    global $paged;
    if (empty($paged)) $paged = 1;
    if ($pages == '') {
        global $wp_query;
        $pages = $wp_query->max_num_pages;
        if (!$pages) {
            $pages = 1;
        }
    }
    if (1 != $pages) {
        echo "<div class=\"pagination\">";
        if ($paged > 2 && $paged > $range + 1 && $showitems < $pages) echo "<a href='" . get_pagenum_link(1) . "'>&laquo; &laquo;</a>";
        if ($paged > 1 && $showitems < $pages) echo "<a href='" . get_pagenum_link($paged - 1) . "'>&lsaquo;</a>";
        for ($i = 1; $i <= $pages; $i++) {
            if (1 != $pages && (!($i >= $paged + $range + 1 || $i <= $paged - $range - 1) || $pages <= $showitems)) {
                echo ($paged == $i) ? "<span class=\"current\">" . $i . "</span>" : "<a href='" . get_pagenum_link($i) . "' class=\"inactive\">" . $i . "</a>";
            }
        }
        if ($paged < $pages && $showitems < $pages) echo "<a href=\"" . get_pagenum_link($paged + 1) . "\">&rsaquo;</a>";
        if ($paged < $pages - 1 &&  $paged + $range - 1 < $pages && $showitems < $pages) echo "<a href='" . get_pagenum_link($pages) . "'>&raquo; &raquo;</a>";
        echo "</div>\n";
    }
}

// Menus
function get_menu_items($menu_name)
{
    $menu = get_nav_menu_locations();
    $menu_id = $menu[$menu_name];
    return wp_get_nav_menu_items($menu_id);
}

function menu_header()
{
    register_nav_menu('menu_header', __('Menu Header'));
}
add_action('init', 'menu_header');

function menu_footer()
{
    register_nav_menu('menu_footer', __('Menu Footer'));
}
add_action('init', 'menu_footer');

// Functions CMB2
function prefix_sanitize_text_callback($value, $field_args, $field)
{
    $value = strip_tags($value, '<p><a><br><br/><strong><b><span>');

    return $value;
}

function prefix_sanitize_iframe($value, $field_args, $field)
{
    $value = strip_tags($value, '<iframe>');

    return $value;
}

function prefix_sanitize_simulate($value, $field_args, $field)
{
    $value = strip_tags($value, '<div><script>');

    return $value;
}

function get_field_cmb2($key, $page_id = 0)
{
    $id = $page_id !== 0 ? $page_id : get_the_ID();
    return get_post_meta($id, $key, true);
}

function the_field_cmb2($key, $page_id = 0)
{
    echo get_field_cmb2($key, $page_id);
}

function get_alt($key)
{
    return get_post_meta($key, '_wp_attachment_image_alt', TRUE);
}

// Options page - Geral
function opt_page_register_theme_options_metabox()
{
    $cmb_options = new_cmb2_box(array(
        'id'           => 'opt_page_theme_options_page',
        'title'        => 'Definições Gerais',
        'object_types' => array('options-page'),
        'option_key'   => 'opt_page_theme_options',
        'icon_url'     => 'dashicons-edit-large',
        'display_cb'   => 'opt_page_theme_options_page_output', // Override the options-page form output (CMB2_Hookup::options_page_output()).
    ));

    $cmb_options->add_field(array(
        'id'   => 'cmb2_title_general',
        'name' => 'Geral',
        'type' => 'title',
    ));

    $cmb_options->add_field(array(
        'id'      => 'logo',
        'name'    => 'Logo',
        // 'desc'    => 'Resolução recomendada de 108x33',
        'type'    => 'file',
        // Optional:
        'options' => array(
            'url' => false, // Hide the text input for the url
        ),
        'text'    => array(
            'add_upload_file_text' => 'Adicionar arquivo'
        ),
        'query_args' => array(
            'type' => array('image/png', 'image/jpeg', 'image/jpg', 'image/svg+xml'),
        ),
        'preview_size' => 'large',
    ));

    $cmb_options->add_field(array(
        'name' => 'Link botão header',
        'id' => 'link_btn_header',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'name' => 'Texto botão header',
        'id' => 'text_btn_header',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'name' => 'Sociais',
        'type' => 'title',
        'id' => 'redes_sociais'
    ));

    $cmb_options->add_field(array(
        'name' => 'Facebook',
        'id' => 'facebook',
        'type' => 'text_url',
    ));

    $cmb_options->add_field(array(
        'name' => 'Instagram',
        'id' => 'instagram',
        'type' => 'text_url',
    ));

    $cmb_options->add_field(array(
        'name' => 'Linkedin',
        'id' => 'linkedin',
        'type' => 'text_url',
    ));

    $cmb_options->add_field(array(
        'name' => 'Youtube',
        'id' => 'youtube',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'name' => 'Telefone',
        'id' => 'tel',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'name' => 'Whatsapp',
        'id' => 'whatsapp',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'name' => 'Footer',
        'type' => 'title',
        'id' => 'footer'
    ));

    $cmb_options->add_field(array(
        'name' => 'Disclaimer',
        'id' => 'disclaimer',
        'type' => 'textarea',
    ));

    $cmb_options->add_field(array(
        'name' => 'Copyright',
        'id' => 'copyright',
        'type' => 'text',
        'sanitization_cb' => 'prefix_sanitize_text_callback'
    ));

    $cmb_options->add_field(array(
        'name' => 'Calculadora',
        'type' => 'title',
        'id' => 'cal'
    ));

    $cmb_options->add_field(array(
        'id'   => 'code_simulate',
        'name' => 'Código da Calculadora',
        'type'    => 'textarea',
        'sanitization_cb' => 'prefix_sanitize_simulate'
    ));

    $cmb_options->add_field(array(
        'name' => 'Formulários - Botões flutuantes',
        'type' => 'title',
        'id' => 'forms_float_buttons'
    ));

    $cmb_options->add_field(array(
        'id'   => 'shortcode_whats',
        'name' => 'Shortcode formulário Whatsapp',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'shortcode_whats_selfstorage',
        'name' => 'Shortcode formulário Whatsapp - Self Storage',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'shortcode_whats_selfstorage_orcamento',
        'name' => 'Shortcode formulário Whatsapp - Self Storage Orçamento',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'shortcode_whats_galpoes',
        'name' => 'Shortcode formulário Whatsapp - Galpões',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'texto_botao_wpp',
        'name' => 'Texto do botão de WhatsApp',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'exibir_whats_button',
        'name' => 'Mostrar botão? (Em todo o site menos nas LPs)',
        'type' => 'checkbox',
    ));

    $cmb_options->add_field(array(
        'id'   => 'texto_botao_orcamento',
        'name' => 'Texto do botão de Orçamento',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'name' => 'Landing Pages',
        'type' => 'title',
        'id' => 'lp'
    ));

    $cmb_options->add_field(array(
        'id'   => 'number_header_lp',
        'name' => 'Número',
        'desc' => 'Ex.: 11 2222-1220',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id' => '404',
        'name' => '404',
        'type' => 'title',
    ));

    $cmb_options->add_field(array(
        'id'   => '404_header',
        'name' => 'Header',
        'type' => 'title',
    ));

    $cmb_options->add_field(array(
        'id'   => '404_title',
        'name'    => 'Título - H1',
        'type'    => 'wysiwyg',
        'options' => array(
            'wpautop' => true,
            'media_buttons' => false,
        ),
    ));

    $cmb_options->add_field(array(
        'id'      => '404_desc',
        'name'    => 'Descrição',
        'type'    => 'wysiwyg',
        'options' => array(
            'wpautop' => true,
            'media_buttons' => false,
        ),
    ));

    $cmb_options->add_field(array(
        'id'   => '404_options',
        'name' => 'Opções',
        'type' => 'title',
    ));

    $cmb_options->add_field(array(
        'id'      => '404_options_text_1',
        'name'    => 'Texto 1',
        'type'    => 'wysiwyg',
        'options' => array(
            'wpautop' => true,
            'media_buttons' => false,
        ),
    ));

    $items = $cmb_options->add_field(array(
        'id'          => 'links',
        'type'        => 'group',
        // 'repeatable'  => false, // use false if you want non-repeatable group
        'options'     => array(
            'group_title'       => __('Link {#}', 'cmb2'),
            'add_button'        => __('Adicionar link', 'cmb2'),
            'remove_button'     => __('Remover', 'cmb2'),
            'sortable'          => true,
            'closed'         => true,
            'remove_confirm' => esc_html__('Are you sure you want to remove?', 'cmb2'),
        ),
    ));

    $cmb_options->add_group_field($items, array(
        'id'      => 'link',
        'name'    => 'Link',
        'type'    => 'text',
    ));

    $cmb_options->add_group_field($items, array(
        'id'      => 'icon',
        'name'    => 'Ícone',
        'desc'    => 'Resolução recomendada de 32x32',
        'type'    => 'file',
        'options' => array(
            'url' => false,
        ),
        'text'    => array(
            'add_upload_file_text' => 'Adicionar imagem'
        ),
        'query_args' => array(
            'type' => array('image/png', 'image/jpeg', 'image/jpg', 'image/svg+xml'),
        ),
        'preview_size' => 'medium',
    ));

    $cmb_options->add_group_field($items, array(
        'id'      => 'title',
        'name'    => 'Título',
        'type'    => 'text',
    ));

    $cmb_options->add_group_field($items, array(
        'id'      => 'desc',
        'name'    => 'Descrição',
        'type'    => 'text',
    ));

    $cmb_options->add_field(array(
        'id'      => '404_options_text_2',
        'name'    => 'Texto 2',
        'type'    => 'wysiwyg',
        'options' => array(
            'wpautop' => true,
            'media_buttons' => false,
        ),
    ));

    $cmb_options->add_field(array(
        'id'   => 'request_order_options',
        'name' => 'Popup Orçamento',
        'type' => 'title',
    ));

    $cmb_options->add_field(array(
        'id'   => 'max_size_ss_request_order_options',
        'name' => 'Tamanho máximo Self Storage',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'max_size_gf_request_order_options',
        'name' => 'Tamanho máximo Galpões Flexíveis',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'max_size_gu_request_order_options',
        'name' => 'Tamanho máximo Galpões Urbanos',
        'type' => 'text',
    ));

    $cmb_options->add_field(array(
        'id'   => 'blog_options',
        'name' => 'Blog',
        'type' => 'title',
    ));

    $cmb_options->add_field(array(
        'id'   => 'categories_for_ss_options',
        'name' => 'Categorias para Selfstorage',
        'taxonomy'       => 'category',
        'type'           => 'taxonomy_multicheck',
        'remove_default' => 'false',
        'query_args' => array(
            // 'orderby' => 'slug',
            // 'hide_empty' => true,
        ),
    ));

    $cmb_options->add_field(array(
        'id'   => 'categories_for_gf_options',
        'name' => 'Categorias para Galpões Flexíveis',
        'taxonomy'       => 'category',
        'type'           => 'taxonomy_multicheck',
        'remove_default' => 'false',
        'query_args' => array(
            // 'orderby' => 'slug',
            // 'hide_empty' => true,
        ),
    ));

    $cmb_options->add_field(array(
        'id'   => 'categories_for_gu_options',
        'name' => 'Categorias para Galpões Urbanos',
        'taxonomy'       => 'category',
        'type'           => 'taxonomy_multicheck',
        'remove_default' => 'false',
        'query_args' => array(
            // 'orderby' => 'slug',
            // 'hide_empty' => true,
        ),
    ));
}
add_action('cmb2_admin_init', 'opt_page_register_theme_options_metabox');
