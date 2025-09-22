# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Monday 22. September 2025 02:35 UTC
# Nome do Servidor: localhost
# Banco de Dados: `local`
# URL: //sh00016.teste.website/~mar39728
# Path: C:\\Users\\chelw\\Local Sites\\vimax\\app\\public
# Tables: wp_commentmeta, wp_comments, wp_db7_forms, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_yoast_indexable, wp_yoast_indexable_hierarchy, wp_yoast_migrations, wp_yoast_primary_term, wp_yoast_seo_links
# Table Prefix: wp_
# Post Types: revision, attachment, nav_menu_item, page, post, produtos, wp_navigation, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `wp_commentmeta` existente
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Estrutura da tabela `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_commentmeta`
#

#
# Fim do conteúdo da tabela `wp_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_comments` existente
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Estrutura da tabela `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-09-08 01:42:25', '2025-09-08 01:42:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# Fim do conteúdo da tabela `wp_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_db7_forms` existente
#

DROP TABLE IF EXISTS `wp_db7_forms`;


#
# Estrutura da tabela `wp_db7_forms`
#

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint NOT NULL AUTO_INCREMENT,
  `form_post_id` bigint NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_db7_forms`
#

#
# Fim do conteúdo da tabela `wp_db7_forms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_links` existente
#

DROP TABLE IF EXISTS `wp_links`;


#
# Estrutura da tabela `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_links`
#

#
# Fim do conteúdo da tabela `wp_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_options` existente
#

DROP TABLE IF EXISTS `wp_options`;


#
# Estrutura da tabela `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1758508945;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1758508946;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1758510745;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1758512545;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1758547401;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1758590601;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1758590604;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1758591746;a:2:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1758592407;a:2:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"wpseo_permalink_structure_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1758849811;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'http://sh00016.teste.website/~mar39728', 'on'),
(3, 'home', 'http://sh00016.teste.website/~mar39728', 'on'),
(4, 'blogname', 'vimax', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'michel.wrq@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:112:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"produtos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"produtos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"produtos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"produtos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"produtos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"produtos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"produtos/([^/]+)/embed/?$";s:41:"index.php?produtos=$matches[1]&embed=true";s:29:"produtos/([^/]+)/trackback/?$";s:35:"index.php?produtos=$matches[1]&tb=1";s:37:"produtos/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?produtos=$matches[1]&paged=$matches[2]";s:44:"produtos/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?produtos=$matches[1]&cpage=$matches[2]";s:33:"produtos/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?produtos=$matches[1]&page=$matches[2]";s:25:"produtos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"produtos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"produtos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"produtos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"produtos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"produtos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:24:"index.php??sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:7:{i:0;s:33:"classic-editor/classic-editor.php";i:1;s:13:"cmb2/init.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:42:"contact-form-cfdb7/contact-form-cfdb-7.php";i:4;s:27:"svg-support/svg-support.php";i:5;s:24:"wordpress-seo/wp-seo.php";i:6;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'vimax', 'on'),
(42, 'stylesheet', 'vimax', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:1:{s:24:"wordpress-seo/wp-seo.php";s:14:"__return_false";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '6', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1772847745', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;s:12:"cfdb7_access";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:38:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;s:23:"view_site_health_checks";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(126, 'WPLANG', 'pt_BR', 'auto'),
(128, 'theme_mods_twentytwentyfive', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1758245046;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(145, 'can_compress_scripts', '0', 'on'),
(158, 'new_admin_email', 'michel.wrq@gmail.com', 'auto'),
(167, 'current_theme', 'Vimax', 'auto'),
(168, 'theme_mods_vimax', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"menu_header";i:2;}s:18:"custom_css_post_id";i:-1;}', 'on'),
(169, 'theme_switched', '', 'auto'),
(174, 'finished_updating_comment_type', '1', 'auto'),
(184, 'recently_activated', 'a:0:{}', 'off'),
(208, 'wpcf7', 'a:2:{s:7:"version";s:5:"6.1.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1758246804;s:7:"version";s:5:"6.1.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'auto'),
(209, 'yoast_migrations_free', 'a:1:{s:7:"version";s:4:"25.9";}', 'auto'),
(210, 'wpseo', 'a:115:{s:8:"tracking";b:0;s:16:"toggled_tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:0;s:19:"indexing_first_time";b:1;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:21:"post_type_made_public";s:29:"indexables_indexing_completed";b:0;s:13:"index_now_key";s:0:"";s:7:"version";s:4:"25.9";s:16:"previous_version";s:0:"";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:0;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:34:"inclusive_language_analysis_active";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:16:"enable_index_now";b:1;s:19:"enable_ai_generator";b:1;s:22:"ai_enabled_pre_default";b:0;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1758246807;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:12:"/%postname%/";s:8:"home_url";s:38:"http://sh00016.teste.website/~mar39728";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:0:{}s:29:"enable_enhanced_slack_sharing";b:1;s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;s:26:"algolia_integration_active";b:0;s:14:"import_cursors";a:0:{}s:13:"workouts_data";a:1:{s:13:"configuration";a:1:{s:13:"finishedSteps";a:0:{}}}s:28:"configuration_finished_steps";a:0:{}s:36:"dismiss_configuration_workout_notice";b:0;s:34:"dismiss_premium_deactivated_notice";b:0;s:19:"importing_completed";a:0:{}s:26:"wincher_integration_active";b:1;s:14:"wincher_tokens";a:0:{}s:36:"wincher_automatically_add_keyphrases";b:0;s:18:"wincher_website_id";s:0:"";s:18:"first_time_install";b:1;s:34:"should_redirect_after_install_free";b:0;s:34:"activation_redirect_timestamp_free";i:1758246807;s:18:"remove_feed_global";b:0;s:27:"remove_feed_global_comments";b:0;s:25:"remove_feed_post_comments";b:0;s:19:"remove_feed_authors";b:0;s:22:"remove_feed_categories";b:0;s:16:"remove_feed_tags";b:0;s:29:"remove_feed_custom_taxonomies";b:0;s:22:"remove_feed_post_types";b:0;s:18:"remove_feed_search";b:0;s:21:"remove_atom_rdf_feeds";b:0;s:17:"remove_shortlinks";b:0;s:21:"remove_rest_api_links";b:0;s:20:"remove_rsd_wlw_links";b:0;s:19:"remove_oembed_links";b:0;s:16:"remove_generator";b:0;s:20:"remove_emoji_scripts";b:0;s:24:"remove_powered_by_header";b:0;s:22:"remove_pingback_header";b:0;s:28:"clean_campaign_tracking_urls";b:0;s:16:"clean_permalinks";b:0;s:32:"clean_permalinks_extra_variables";s:0:"";s:14:"search_cleanup";b:0;s:20:"search_cleanup_emoji";b:0;s:23:"search_cleanup_patterns";b:0;s:22:"search_character_limit";i:50;s:20:"deny_search_crawling";b:0;s:21:"deny_wp_json_crawling";b:0;s:20:"deny_adsbot_crawling";b:0;s:19:"deny_ccbot_crawling";b:0;s:29:"deny_google_extended_crawling";b:0;s:20:"deny_gptbot_crawling";b:0;s:27:"redirect_search_pretty_urls";b:0;s:29:"least_readability_ignore_list";a:0:{}s:27:"least_seo_score_ignore_list";a:0:{}s:23:"most_linked_ignore_list";a:0:{}s:24:"least_linked_ignore_list";a:0:{}s:28:"indexables_page_reading_list";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:"indexables_overview_state";s:21:"dashboard-not-visited";s:28:"last_known_public_post_types";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:8:"produtos";}s:28:"last_known_public_taxonomies";a:3:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:11:"post_format";}s:23:"last_known_no_unindexed";a:0:{}s:14:"new_post_types";a:1:{i:2;s:8:"produtos";}s:14:"new_taxonomies";a:0:{}s:34:"show_new_content_type_notification";b:1;s:44:"site_kit_configuration_permanently_dismissed";b:0;s:18:"site_kit_connected";b:0;s:37:"site_kit_tracking_setup_widget_loaded";s:2:"no";s:41:"site_kit_tracking_first_interaction_stage";s:0:"";s:40:"site_kit_tracking_last_interaction_stage";s:0:"";s:52:"site_kit_tracking_setup_widget_temporarily_dismissed";s:2:"no";s:52:"site_kit_tracking_setup_widget_permanently_dismissed";s:2:"no";s:31:"google_site_kit_feature_enabled";b:0;s:25:"ai_free_sparks_started_on";N;s:15:"enable_llms_txt";b:0;}', 'auto'),
(211, 'wpseo_titles', 'a:129:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:40:"%%name%%, Autor em %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:66:"Você pesquisou por %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:44:"Página não encontrada %%sep%% %%sitename%%";s:25:"social-title-author-wpseo";s:8:"%%name%%";s:26:"social-title-archive-wpseo";s:8:"%%date%%";s:31:"social-description-author-wpseo";s:0:"";s:32:"social-description-archive-wpseo";s:0:"";s:29:"social-image-url-author-wpseo";s:0:"";s:30:"social-image-url-archive-wpseo";s:0:"";s:28:"social-image-id-author-wpseo";i:0;s:29:"social-image-id-archive-wpseo";i:0;s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:54:"O post %%POSTLINK%% apareceu primeiro em %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:20:"breadcrumbs-404crumb";s:33:"Erro 404: Página não encontrada";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:13:"Arquivos para";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:7:"Início";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:19:"Você pesquisou por";s:15:"breadcrumbs-sep";s:2:"»";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:22:"company_alternate_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";b:0;s:17:"stripcategorybase";b:0;s:26:"open_graph_frontpage_title";s:12:"%%sitename%%";s:25:"open_graph_frontpage_desc";s:0:"";s:26:"open_graph_frontpage_image";s:0:"";s:24:"publishing_principles_id";i:0;s:25:"ownership_funding_info_id";i:0;s:29:"actionable_feedback_policy_id";i:0;s:21:"corrections_policy_id";i:0;s:16:"ethics_policy_id";i:0;s:19:"diversity_policy_id";i:0;s:28:"diversity_staffing_report_id";i:0;s:15:"org-description";s:0:"";s:9:"org-email";s:0:"";s:9:"org-phone";s:0:"";s:14:"org-legal-name";s:0:"";s:17:"org-founding-date";s:0:"";s:20:"org-number-employees";s:0:"";s:10:"org-vat-id";s:0:"";s:10:"org-tax-id";s:0:"";s:7:"org-iso";s:0:"";s:8:"org-duns";s:0:"";s:11:"org-leicode";s:0:"";s:9:"org-naics";s:0:"";s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:17:"social-title-post";s:9:"%%title%%";s:23:"social-description-post";s:0:"";s:21:"social-image-url-post";s:0:"";s:20:"social-image-id-post";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:17:"social-title-page";s:9:"%%title%%";s:23:"social-description-page";s:0:"";s:21:"social-image-url-page";s:0:"";s:20:"social-image-id-page";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:55:"Arquivo de %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:25:"social-title-tax-category";s:25:"Arquivo de %%term_title%%";s:31:"social-description-tax-category";s:0:"";s:29:"social-image-url-tax-category";s:0:"";s:28:"social-image-id-tax-category";i:0;s:26:"taxonomy-category-ptparent";i:0;s:18:"title-tax-post_tag";s:55:"Arquivo de %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:25:"social-title-tax-post_tag";s:25:"Arquivo de %%term_title%%";s:31:"social-description-tax-post_tag";s:0:"";s:29:"social-image-url-tax-post_tag";s:0:"";s:28:"social-image-id-tax-post_tag";i:0;s:26:"taxonomy-post_tag-ptparent";i:0;s:21:"title-tax-post_format";s:55:"Arquivo de %%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:28:"social-title-tax-post_format";s:25:"Arquivo de %%term_title%%";s:34:"social-description-tax-post_format";s:0:"";s:32:"social-image-url-tax-post_format";s:0:"";s:31:"social-image-id-tax-post_format";i:0;s:29:"taxonomy-post_format-ptparent";i:0;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:0;s:17:"company_logo_meta";b:0;s:16:"person_logo_meta";b:0;s:29:"open_graph_frontpage_image_id";i:0;}', 'auto'),
(212, 'wpseo_social', 'a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";s:17:"other_social_urls";a:0:{}s:12:"mastodon_url";s:0:"";}', 'auto'),
(213, 'wpseo_llmstxt', 'a:7:{s:23:"llms_txt_selection_mode";s:4:"auto";s:13:"about_us_page";i:0;s:12:"contact_page";i:0;s:10:"terms_page";i:0;s:19:"privacy_policy_page";i:0;s:9:"shop_page";i:0;s:20:"other_included_pages";a:0:{}}', 'auto'),
(215, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'off'),
(233, 'bodhi_svgs_settings', 'a:3:{s:22:"sanitize_svg_front_end";s:2:"on";s:8:"restrict";a:1:{i:0;s:13:"administrator";}s:24:"sanitize_on_upload_roles";a:0:{}}', 'auto'),
(234, 'bodhi_svgs_plugin_version', '2.5.14', 'auto'),
(235, 'opt_page_theme_options', 'a:11:{s:15:"link_btn_header";s:8:"#contato";s:15:"text_btn_header";s:7:"Contato";s:5:"links";a:0:{}s:7:"logo_id";s:2:"13";s:4:"logo";s:74:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/logo.svg";s:8:"endereco";s:80:"R. Gen. Sócrates, 216, 5º Andar - Penha de França, São Paulo - SP, 03632-040";s:8:"telefone";s:17:"+ 55 11 2993-8311";s:8:"whatsapp";s:18:"+ 55 11 9XXXX-XXXX";s:5:"email";s:19:"vendas@vimax.com.br";s:14:"logo_footer_id";s:2:"40";s:11:"logo_footer";s:81:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/logo-footer.svg";}', 'on'),
(288, 'cfdb7_view_install_date', '2025-09-22 2:29:07', 'on'),
(300, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1758508543;}', 'off') ;

#
# Fim do conteúdo da tabela `wp_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_postmeta` existente
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Estrutura da tabela `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1758507304:1'),
(4, 6, '_wp_page_template', 'index.php'),
(5, 8, '_form', '[text* your-name placeholder"Nome"]\n\n[text* your-company placeholder"Empresa"]\n\n[email* your-email placeholder"E-mail"]\n\n[tel* your-tel placeholder"Telefone"]\n\n[textarea your-message]\n\n[submit "Solicitar orçamento"]\n\n[acceptance acceptance-571] Aceito receber comunicações da Vimax [/acceptance]'),
(6, 8, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:37:"[_site_title] <wordpress@vimax.local>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:204:"De: [your-name] [your-email]\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEsta é uma notificação de que um formulário de contato foi enviado em seu site ([_site_title] [_site_url]).";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:1;}'),
(7, 8, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:37:"[_site_title] <wordpress@vimax.local>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:224:"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail é um recibo do envio do formulário de contato em nosso site ([_site_title] [_site_url]) no qual seu endereço de e-mail foi usado. Se não foi você, ignore esta mensagem.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:1;}'),
(8, 8, '_messages', 'a:22:{s:12:"mail_sent_ok";s:27:"Agradecemos a sua mensagem.";s:12:"mail_sent_ng";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:16:"validation_error";s:63:"Um ou mais campos possuem um erro. Verifique e tente novamente.";s:4:"spam";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:12:"accept_terms";s:72:"Você deve aceitar os termos e condições antes de enviar sua mensagem.";s:16:"invalid_required";s:20:"Preencha este campo.";s:16:"invalid_too_long";s:39:"Este campo tem uma entrada muito longa.";s:17:"invalid_too_short";s:39:"Este campo tem uma entrada muito curta.";s:13:"upload_failed";s:49:"Ocorreu um erro desconhecido ao enviar o arquivo.";s:24:"upload_file_type_invalid";s:59:"Você não tem permissão para enviar esse tipo de arquivo.";s:21:"upload_file_too_large";s:34:"O arquivo enviado é muito grande.";s:23:"upload_failed_php_error";s:36:"Ocorreu um erro ao enviar o arquivo.";s:12:"invalid_date";s:38:"Digite uma data no formato AAAA-MM-DD.";s:14:"date_too_early";s:39:"Este campo tem uma data muito próxima.";s:13:"date_too_late";s:39:"Este campo tem uma data muito distante.";s:14:"invalid_number";s:18:"Digite um número.";s:16:"number_too_small";s:41:"Este campo tem um número pequeno demais.";s:16:"number_too_large";s:40:"Este campo tem um número grande demais.";s:23:"quiz_answer_not_correct";s:39:"A resposta para o quiz está incorreta.";s:13:"invalid_email";s:30:"Digite um endereço de e-mail.";s:11:"invalid_url";s:14:"Digite um URL.";s:11:"invalid_tel";s:30:"Digite um número de telefone.";}'),
(9, 8, '_additional_settings', ''),
(10, 8, '_locale', 'pt_BR'),
(11, 8, '_hash', 'df5c064b4241a5093bd8a758f3efca38969fadac0e26c7e13fdd59a401f165d1'),
(12, 9, '_menu_item_type', 'custom'),
(13, 9, '_menu_item_menu_item_parent', '0'),
(14, 9, '_menu_item_object_id', '9'),
(15, 9, '_menu_item_object', 'custom'),
(16, 9, '_menu_item_target', ''),
(17, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 9, '_menu_item_xfn', ''),
(19, 9, '_menu_item_url', '#'),
(21, 10, '_menu_item_type', 'custom'),
(22, 10, '_menu_item_menu_item_parent', '0'),
(23, 10, '_menu_item_object_id', '10'),
(24, 10, '_menu_item_object', 'custom'),
(25, 10, '_menu_item_target', ''),
(26, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(27, 10, '_menu_item_xfn', ''),
(28, 10, '_menu_item_url', '#'),
(30, 11, '_menu_item_type', 'custom'),
(31, 11, '_menu_item_menu_item_parent', '0'),
(32, 11, '_menu_item_object_id', '11'),
(33, 11, '_menu_item_object', 'custom'),
(34, 11, '_menu_item_target', ''),
(35, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 11, '_menu_item_xfn', ''),
(37, 11, '_menu_item_url', '#'),
(39, 12, '_menu_item_type', 'custom'),
(40, 12, '_menu_item_menu_item_parent', '0'),
(41, 12, '_menu_item_object_id', '12'),
(42, 12, '_menu_item_object', 'custom'),
(43, 12, '_menu_item_target', ''),
(44, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 12, '_menu_item_xfn', ''),
(46, 12, '_menu_item_url', '#'),
(48, 13, '_wp_attached_file', '2025/09/logo.svg'),
(49, 13, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:168;s:6:"height";i:31;s:4:"file";s:17:"/2025/09/logo.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:28;s:4:"crop";b:0;s:4:"file";s:8:"logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:55;s:4:"crop";b:0;s:4:"file";s:8:"logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:142;s:4:"crop";b:0;s:4:"file";s:8:"logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:189;s:4:"crop";b:0;s:4:"file";s:8:"logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:8:"logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:8:"logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(50, 14, '_wp_attached_file', '2025/09/banner.jpg'),
(51, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:724;s:4:"file";s:18:"2025/09/banner.jpg";s:8:"filesize";i:84444;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:18:"banner-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5786;}s:5:"large";a:5:{s:4:"file";s:19:"banner-1024x386.jpg";s:5:"width";i:1024;s:6:"height";i:386;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39520;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4496;}s:12:"medium_large";a:5:{s:4:"file";s:18:"banner-768x290.jpg";s:5:"width";i:768;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25024;}s:9:"1536x1536";a:5:{s:4:"file";s:19:"banner-1536x579.jpg";s:5:"width";i:1536;s:6:"height";i:579;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:72873;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 14, '_wp_attachment_image_alt', 'Banner desk'),
(53, 15, '_wp_attached_file', '2025/09/banner-mobile.jpg'),
(54, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:25:"2025/09/banner-mobile.jpg";s:8:"filesize";i:78327;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:25:"banner-mobile-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14531;}s:5:"large";a:5:{s:4:"file";s:27:"banner-mobile-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:89829;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"banner-mobile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5199;}s:12:"medium_large";a:5:{s:4:"file";s:25:"banner-mobile-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58817;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(55, 15, '_wp_attachment_image_alt', 'Banner mob'),
(56, 6, '_edit_last', '1'),
(57, 6, 'banner_show', 'on'),
(58, 6, 'sliders', 'a:2:{i:0;a:6:{s:13:"image_desk_id";i:14;s:10:"image_desk";s:76:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/banner.jpg";s:15:"image_mobile_id";i:15;s:12:"image_mobile";s:83:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/banner-mobile.jpg";s:5:"title";s:19:"Telas em borracha.1";s:4:"desc";s:72:"Projetadas para absorver impacto e ampliar a vida útil do equipamento.1";}i:1;a:2:{s:5:"title";s:19:"Telas em borracha.2";s:4:"desc";s:72:"Projetadas para absorver impacto e ampliar a vida útil do equipamento.2";}}'),
(59, 6, '_yoast_wpseo_content_score', '60'),
(60, 6, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(61, 16, '_wp_attached_file', '2025/09/sobre.jpg'),
(62, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1372;s:6:"height";i:1074;s:4:"file";s:17:"2025/09/sobre.jpg";s:8:"filesize";i:192056;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:17:"sobre-300x235.jpg";s:5:"width";i:300;s:6:"height";i:235;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16409;}s:5:"large";a:5:{s:4:"file";s:18:"sobre-1024x802.jpg";s:5:"width";i:1024;s:6:"height";i:802;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:99320;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"sobre-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7011;}s:12:"medium_large";a:5:{s:4:"file";s:17:"sobre-768x601.jpg";s:5:"width";i:768;s:6:"height";i:601;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:63309;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 6, 'about_show', 'on'),
(64, 6, 'about_title', 'TRADIÇÃO E INOVAÇÃO1'),
(65, 6, 'about_subtitle', 'A Vimax é especializada na fabricação de Telas para Peneiramento para classificação de minérios e agregados.1'),
(66, 6, 'about_desc', 'Completa linha de produtos para atender as especificações do seu peneiramento e com uma equipe altamente especializada para desenvolver soluções e garantir as exigencias do processo.1'),
(67, 6, 'about_link', '#Conheça nossos produtos1'),
(68, 6, 'about_text_button', 'Conheça nossos produtos1'),
(69, 6, 'about_image_id', '16'),
(70, 6, 'about_image', 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/sobre.jpg'),
(71, 16, '_wp_attachment_image_alt', ''),
(72, 6, 'telas_show', 'on'),
(73, 6, 'telas_title', 'A tela certa para o seu peneiramento.'),
(74, 6, 'telas_desc', 'Pioneira no desenvolvimento de novas matérias primas para garantir a maior eficiência e durabilidade.'),
(75, 6, 'telas_subtitle', 'Conheça nossas linhas de produtos'),
(76, 17, '_wp_attached_file', '2025/09/icon-telas-1.svg'),
(77, 17, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:32;s:6:"height";i:38;s:4:"file";s:25:"/2025/09/icon-telas-1.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:179;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:357;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:914;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:1219;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(78, 17, '_wp_attachment_image_alt', 'icon-telas-1'),
(79, 18, '_wp_attached_file', '2025/09/peneira-1.jpg'),
(80, 18, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:587;s:6:"height";i:485;s:4:"file";s:21:"2025/09/peneira-1.jpg";s:8:"filesize";i:449024;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:21:"peneira-1-300x248.jpg";s:5:"width";i:300;s:6:"height";i:248;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:27341;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"peneira-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9135;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 18, '_wp_attachment_image_alt', ''),
(82, 19, '_wp_attached_file', '2025/09/icon-telas-2.svg'),
(83, 19, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:32;s:6:"height";i:38;s:4:"file";s:25:"/2025/09/icon-telas-2.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:179;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-2.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:357;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-2.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:914;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-2.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:1219;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-2.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-2.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-2.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(84, 20, '_wp_attached_file', '2025/09/peneira-2.jpg'),
(85, 20, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:587;s:6:"height";i:485;s:4:"file";s:21:"2025/09/peneira-2.jpg";s:8:"filesize";i:256360;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:21:"peneira-2-300x248.jpg";s:5:"width";i:300;s:6:"height";i:248;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12569;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"peneira-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5119;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(86, 21, '_wp_attached_file', '2025/09/icon-telas-3.svg'),
(87, 21, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:32;s:6:"height";i:38;s:4:"file";s:25:"/2025/09/icon-telas-3.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:179;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-3.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:357;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-3.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:914;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-3.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:1219;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-3.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-3.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:16:"icon-telas-3.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(88, 6, 'telas', 'a:3:{i:0;a:6:{s:5:"title";s:13:"Telas em Aço";s:4:"desc";s:43:"Área livre\r\n\r\nEficiência\r\n\r\nProdutividade";s:7:"icon_id";i:17;s:4:"icon";s:82:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-telas-1.svg";s:8:"image_id";i:18;s:5:"image";s:79:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/peneira-1.jpg";}i:1;a:6:{s:5:"title";s:17:"Telas de borracha";s:4:"desc";s:51:"Durabilidade\r\n\r\nCusto x Benefício\r\n\r\nVersatilidade";s:7:"icon_id";i:19;s:4:"icon";s:82:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-telas-2.svg";s:8:"image_id";i:20;s:5:"image";s:79:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/peneira-2.jpg";}i:2;a:6:{s:5:"title";s:11:"Telas em PU";s:4:"desc";s:44:"Eficiência\r\n\r\nDurabilidade\r\n\r\nVersatilidade";s:7:"icon_id";i:21;s:4:"icon";s:82:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-telas-3.svg";s:8:"image_id";i:18;s:5:"image";s:79:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/peneira-1.jpg";}}'),
(89, 22, '_wp_attached_file', '2025/09/video_fundo.webm'),
(90, 22, '_wp_attachment_metadata', 'a:9:{s:8:"filesize";i:3908661;s:9:"mime_type";s:10:"video/webm";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:1280;s:6:"height";i:720;s:10:"fileformat";s:4:"webm";s:10:"dataformat";s:5:"V_VP9";s:5:"audio";a:6:{s:10:"dataformat";s:6:"A_OPUS";s:11:"sample_rate";d:48000;s:8:"channels";i:2;s:8:"language";s:3:"und";s:15:"bits_per_sample";i:32;s:11:"channelmode";s:6:"stereo";}}'),
(91, 23, '_wp_attached_file', '2025/09/thumb-video.png'),
(92, 23, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1278;s:6:"height";i:717;s:4:"file";s:23:"2025/09/thumb-video.png";s:8:"filesize";i:1867514;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:23:"thumb-video-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:120944;}s:5:"large";a:5:{s:4:"file";s:24:"thumb-video-1024x574.png";s:5:"width";i:1024;s:6:"height";i:574;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1210219;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"thumb-video-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:53827;}s:12:"medium_large";a:5:{s:4:"file";s:23:"thumb-video-768x431.png";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:722649;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(93, 24, '_wp_attached_file', '2025/09/icon-capacete.svg'),
(94, 24, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:71;s:6:"height";i:60;s:4:"file";s:26:"/2025/09/icon-capacete.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:127;s:4:"crop";b:0;s:4:"file";s:17:"icon-capacete.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:254;s:4:"crop";b:0;s:4:"file";s:17:"icon-capacete.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:651;s:4:"crop";b:0;s:4:"file";s:17:"icon-capacete.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:868;s:4:"crop";b:0;s:4:"file";s:17:"icon-capacete.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:17:"icon-capacete.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:17:"icon-capacete.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(95, 25, '_wp_attached_file', '2025/09/icon-bola.svg'),
(96, 25, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:71;s:6:"height";i:60;s:4:"file";s:22:"/2025/09/icon-bola.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:127;s:4:"crop";b:0;s:4:"file";s:13:"icon-bola.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:254;s:4:"crop";b:0;s:4:"file";s:13:"icon-bola.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:651;s:4:"crop";b:0;s:4:"file";s:13:"icon-bola.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:868;s:4:"crop";b:0;s:4:"file";s:13:"icon-bola.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:13:"icon-bola.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:13:"icon-bola.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(97, 26, '_wp_attached_file', '2025/09/icon-calendario.svg'),
(98, 26, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:64;s:6:"height";i:60;s:4:"file";s:28:"/2025/09/icon-calendario.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:140;s:4:"crop";b:0;s:4:"file";s:19:"icon-calendario.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:280;s:4:"crop";b:0;s:4:"file";s:19:"icon-calendario.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:718;s:4:"crop";b:0;s:4:"file";s:19:"icon-calendario.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:957;s:4:"crop";b:0;s:4:"file";s:19:"icon-calendario.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:19:"icon-calendario.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:19:"icon-calendario.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(99, 6, 'points_show', 'on'),
(100, 6, 'points_title', 'Produtos que <strong>vibram com o sucesso</strong> do seu peneiramento.'),
(101, 6, 'points_video_id', '22'),
(102, 6, 'points_video', 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/video_fundo.webm'),
(103, 6, 'points_video_poster_id', '23'),
(104, 6, 'points_video_poster', 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/thumb-video.png') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(105, 6, 'points', 'a:3:{i:0;a:3:{s:4:"desc";s:54:"Departamento de de engenharia e assistência técnica.";s:7:"icon_id";i:24;s:4:"icon";s:83:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-capacete.svg";}i:1;a:3:{s:4:"desc";s:30:"Membro da Wear Media Alliance.";s:7:"icon_id";i:25;s:4:"icon";s:79:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-bola.svg";}i:2;a:3:{s:4:"desc";s:46:"Comprometimento com a qualidade e atendimento.";s:7:"icon_id";i:26;s:4:"icon";s:85:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-calendario.svg";}}'),
(106, 6, 'products_show', 'on'),
(107, 6, 'products_title', 'Completa linha de telas para a sua operação.'),
(108, 6, 'products_desc', 'Conheça nossas famílias de produtos.'),
(109, 6, 'products_text_button', 'Entre em contato conosco'),
(110, 6, 'products_link_button', '#contato'),
(111, 28, '_edit_last', '1'),
(112, 28, '_edit_lock', '1758503374:1'),
(113, 28, '_yoast_wpseo_content_score', '60'),
(114, 28, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(115, 29, '_wp_attached_file', '2025/09/telas-autolimpantes.jpg'),
(116, 29, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:380;s:6:"height";i:357;s:4:"file";s:31:"2025/09/telas-autolimpantes.jpg";s:8:"filesize";i:137341;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:31:"telas-autolimpantes-300x282.jpg";s:5:"width";i:300;s:6:"height";i:282;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18865;}s:9:"thumbnail";a:5:{s:4:"file";s:31:"telas-autolimpantes-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5894;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 29, '_wp_attachment_image_alt', 'telas-autolimpantes'),
(118, 28, '_thumbnail_id', '29'),
(119, 30, '_edit_last', '1'),
(120, 30, '_edit_lock', '1758503405:1'),
(121, 31, '_wp_attached_file', '2025/09/peneiramento-de-finos.jpg'),
(122, 31, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:380;s:6:"height";i:357;s:4:"file";s:33:"2025/09/peneiramento-de-finos.jpg";s:8:"filesize";i:195322;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:33:"peneiramento-de-finos-300x282.jpg";s:5:"width";i:300;s:6:"height";i:282;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24392;}s:9:"thumbnail";a:5:{s:4:"file";s:33:"peneiramento-de-finos-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6483;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 31, '_wp_attachment_image_alt', 'peneiramento-de-finos'),
(124, 30, '_thumbnail_id', '31'),
(125, 30, '_yoast_wpseo_content_score', '60'),
(126, 30, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(127, 32, '_edit_last', '1'),
(128, 32, '_edit_lock', '1758503426:1'),
(129, 33, '_wp_attached_file', '2025/09/tela-mista.jpg'),
(130, 33, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:380;s:6:"height";i:357;s:4:"file";s:22:"2025/09/tela-mista.jpg";s:8:"filesize";i:173906;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"tela-mista-300x282.jpg";s:5:"width";i:300;s:6:"height";i:282;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26178;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"tela-mista-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8962;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 33, '_wp_attachment_image_alt', 'tela-mista'),
(132, 32, '_thumbnail_id', '33'),
(133, 32, '_yoast_wpseo_content_score', '60'),
(134, 32, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(135, 34, '_edit_last', '1'),
(136, 34, '_edit_lock', '1758503464:1'),
(137, 35, '_wp_attached_file', '2025/09/trommel.png'),
(138, 35, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:760;s:6:"height";i:720;s:4:"file";s:19:"2025/09/trommel.png";s:8:"filesize";i:623519;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:19:"trommel-300x284.png";s:5:"width";i:300;s:6:"height";i:284;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:50759;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"trommel-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16659;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(139, 34, '_thumbnail_id', '35'),
(140, 34, '_yoast_wpseo_content_score', '60'),
(141, 34, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(142, 36, '_edit_last', '1'),
(143, 36, '_edit_lock', '1758503978:1'),
(144, 37, '_wp_attached_file', '2025/09/produto.jpg'),
(145, 37, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:380;s:6:"height";i:357;s:4:"file";s:19:"2025/09/produto.jpg";s:8:"filesize";i:182423;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:19:"produto-300x282.jpg";s:5:"width";i:300;s:6:"height";i:282;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25790;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"produto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8348;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(146, 36, '_thumbnail_id', '37'),
(147, 36, '_yoast_wpseo_content_score', '60'),
(148, 36, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(149, 6, 'commitments_show', 'on'),
(150, 6, 'commitments_title', 'Compromissos'),
(151, 6, 'commitments', 'a:3:{i:0;a:2:{s:5:"title";s:10:"Qualidade.";s:4:"desc";s:143:"A Vimax trabalha sempre com o objetivo de desenhar e fabricar produtos de altíssima qualidade, projetando telas para aplicações especificas.";}i:1;a:2:{s:5:"title";s:15:"Matéria prima.";s:4:"desc";s:226:"Os materiais utilizados na fabricação das Telas, seguem rigorosamente as especificações das normas SAE, DIN, ASTM e ABNT, garantindo as propriedades físicas e químicas para um desempenho ideal no processo de peneiramento";}i:2;a:2:{s:5:"title";s:22:"assistência técnica.";s:4:"desc";s:180:"Equipe técnica à disposição dos nossos clientes, desde o levantamento de dados dos processos, detalhamento das melhorias propostas, instalação e acompanhamento de desempenho.";}}'),
(154, 38, '_wp_attached_file', '2025/09/logo-1.svg'),
(155, 38, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:168;s:6:"height";i:31;s:4:"file";s:19:"/2025/09/logo-1.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:28;s:4:"crop";b:0;s:4:"file";s:10:"logo-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:55;s:4:"crop";b:0;s:4:"file";s:10:"logo-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:142;s:4:"crop";b:0;s:4:"file";s:10:"logo-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:189;s:4:"crop";b:0;s:4:"file";s:10:"logo-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:10:"logo-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:10:"logo-1.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(156, 39, '_wp_attached_file', '2025/09/356x100.svg'),
(157, 39, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:356;s:6:"height";i:100;s:4:"file";s:20:"/2025/09/356x100.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:42;s:4:"crop";b:0;s:4:"file";s:11:"356x100.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:84;s:4:"crop";b:0;s:4:"file";s:11:"356x100.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:216;s:4:"crop";b:0;s:4:"file";s:11:"356x100.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:288;s:4:"crop";b:0;s:4:"file";s:11:"356x100.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:11:"356x100.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:11:"356x100.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(158, 39, '_wp_attachment_image_alt', 'aq'),
(159, 6, 'logos_1_show', 'on'),
(160, 6, 'logos_1_pre_title', 'Comprometimento com a inovação.'),
(161, 6, 'logos_1_title', 'Eventos e Feiras.'),
(162, 6, 'logos_1', 'a:3:{i:0;a:2:{s:7:"logo_id";i:39;s:4:"logo";s:77:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg";}i:1;a:2:{s:7:"logo_id";i:39;s:4:"logo";s:77:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg";}i:2;a:2:{s:7:"logo_id";i:39;s:4:"logo";s:77:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg";}}'),
(163, 6, 'logos_2_show', 'on'),
(164, 6, 'logos_2_pre_title', 'Comprometimento com o mercado.'),
(165, 6, 'logos_2_title', 'Associações.'),
(166, 6, 'logos_2', 'a:3:{i:0;a:2:{s:7:"logo_id";i:39;s:4:"logo";s:77:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg";}i:1;a:2:{s:7:"logo_id";i:39;s:4:"logo";s:77:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg";}i:2;a:2:{s:7:"logo_id";i:39;s:4:"logo";s:77:"http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg";}}'),
(167, 6, 'contact_show', 'on'),
(168, 6, 'contact_title', 'Entre em contato conosco.1'),
(169, 6, 'contact_desc', 'Estamos à disposição para atender as suas necessidades 1'),
(170, 6, 'contact_shortcode', '[contact-form-7 id="df5c064" title="Contato"]'),
(171, 40, '_wp_attached_file', '2025/09/logo-footer.svg'),
(172, 40, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:397;s:6:"height";i:110;s:4:"file";s:24:"/2025/09/logo-footer.svg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";d:42;s:4:"crop";b:0;s:4:"file";s:15:"logo-footer.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";d:83;s:4:"crop";b:0;s:4:"file";s:15:"logo-footer.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";d:213;s:4:"crop";b:0;s:4:"file";s:15:"logo-footer.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";d:284;s:4:"crop";b:0;s:4:"file";s:15:"logo-footer.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:15:"logo-footer.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";d:0;s:4:"crop";b:0;s:4:"file";s:15:"logo-footer.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}') ;

#
# Fim do conteúdo da tabela `wp_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_posts` existente
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Estrutura da tabela `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-09-08 01:42:25', '2025-09-08 01:42:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-09-08 01:42:25', '2025-09-08 01:42:25', '', 0, 'http://sh00016.teste.website/~mar39728/?p=1', 0, 'post', '', 1),
(2, 1, '2025-09-08 01:42:25', '2025-09-08 01:42:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://sh00016.teste.website/~mar39728/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-09-08 01:42:25', '2025-09-08 01:42:25', '', 0, 'http://sh00016.teste.website/~mar39728/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-09-08 01:42:25', '2025-09-08 01:42:25', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://sh00016.teste.website/~mar39728.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-09-08 01:42:25', '2025-09-08 01:42:25', '', 0, 'http://sh00016.teste.website/~mar39728/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-09-08 01:42:37', '2025-09-08 01:42:37', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-09-08 01:42:37', '2025-09-08 01:42:37', '', 0, 'http://sh00016.teste.website/~mar39728/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-09-19 01:23:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-09-19 01:23:24', '0000-00-00 00:00:00', '', 0, 'http://sh00016.teste.website/~mar39728/?p=5', 0, 'post', '', 0),
(6, 1, '2025-09-19 01:49:38', '2025-09-19 01:49:38', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2025-09-22 01:56:01', '2025-09-22 01:56:01', '', 0, 'http://sh00016.teste.website/~mar39728/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-09-19 01:49:38', '2025-09-19 01:49:38', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-09-19 01:49:38', '2025-09-19 01:49:38', '', 6, 'http://sh00016.teste.website/~mar39728/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-09-19 01:53:23', '2025-09-19 01:53:23', '[text* your-name placeholder"Nome"]\r\n\r\n[text* your-company placeholder"Empresa"]\r\n\r\n[email* your-email placeholder"E-mail"]\r\n\r\n[tel* your-tel placeholder"Telefone"]\r\n\r\n[textarea your-message]\r\n\r\n[submit "Solicitar orçamento"]\r\n\r\n[acceptance acceptance-571] Aceito receber comunicações da Vimax [/acceptance]\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@vimax.local>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEsta é uma notificação de que um formulário de contato foi enviado em seu site ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@vimax.local>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail é um recibo do envio do formulário de contato em nosso site ([_site_title] [_site_url]) no qual seu endereço de e-mail foi usado. Se não foi você, ignore esta mensagem.\nReply-To: [_site_admin_email]\n\n1\n1\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nPreencha este campo.\nEste campo tem uma entrada muito longa.\nEste campo tem uma entrada muito curta.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo enviado é muito grande.\nOcorreu um erro ao enviar o arquivo.\nDigite uma data no formato AAAA-MM-DD.\nEste campo tem uma data muito próxima.\nEste campo tem uma data muito distante.\nDigite um número.\nEste campo tem um número pequeno demais.\nEste campo tem um número grande demais.\nA resposta para o quiz está incorreta.\nDigite um endereço de e-mail.\nDigite um URL.\nDigite um número de telefone.', 'Contato', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2025-09-22 02:08:07', '2025-09-22 02:08:07', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=wpcf7_contact_form&#038;p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2025-09-19 01:54:55', '2025-09-19 01:54:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-09-19 01:54:55', '2025-09-19 01:54:55', '', 0, 'http://sh00016.teste.website/~mar39728/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2025-09-19 01:54:55', '2025-09-19 01:54:52', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2025-09-19 01:54:55', '2025-09-19 01:54:55', '', 0, 'http://sh00016.teste.website/~mar39728/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2025-09-19 01:54:55', '2025-09-19 01:54:52', '', 'Nossa história', '', 'publish', 'closed', 'closed', '', 'nossa-historia', '', '', '2025-09-19 01:54:55', '2025-09-19 01:54:55', '', 0, 'http://sh00016.teste.website/~mar39728/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2025-09-19 01:54:55', '2025-09-19 01:54:52', '', 'Vagas', '', 'publish', 'closed', 'closed', '', 'vagas', '', '', '2025-09-19 01:54:55', '2025-09-19 01:54:55', '', 0, 'http://sh00016.teste.website/~mar39728/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2025-09-20 01:13:48', '2025-09-20 01:13:48', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2025-09-20 01:13:48', '2025-09-20 01:13:48', '', 0, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(14, 1, '2025-09-20 01:34:44', '2025-09-20 01:34:44', '', 'banner', '', 'inherit', 'closed', 'closed', '', 'banner', '', '', '2025-09-20 01:34:53', '2025-09-20 01:34:53', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2025-09-20 01:35:02', '2025-09-20 01:35:02', '', 'banner-mobile', '', 'inherit', 'closed', 'closed', '', 'banner-mobile', '', '', '2025-09-20 01:35:08', '2025-09-20 01:35:08', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/banner-mobile.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2025-09-20 01:52:05', '2025-09-20 01:52:05', '', 'sobre', '', 'inherit', 'closed', 'closed', '', 'sobre', '', '', '2025-09-20 01:53:49', '2025-09-20 01:53:49', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/sobre.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2025-09-20 02:15:05', '2025-09-20 02:15:05', '', 'icon-telas-1', '', 'inherit', 'closed', 'closed', '', 'icon-telas-1', '', '', '2025-09-20 02:15:11', '2025-09-20 02:15:11', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-telas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2025-09-20 02:15:27', '2025-09-20 02:15:27', '', 'peneira-1', '', 'inherit', 'closed', 'closed', '', 'peneira-1', '', '', '2025-09-20 02:15:32', '2025-09-20 02:15:32', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/peneira-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2025-09-20 02:15:54', '2025-09-20 02:15:54', '', 'icon-telas-2', '', 'inherit', 'closed', 'closed', '', 'icon-telas-2', '', '', '2025-09-20 02:15:54', '2025-09-20 02:15:54', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-telas-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(20, 1, '2025-09-20 02:16:07', '2025-09-20 02:16:07', '', 'peneira-2', '', 'inherit', 'closed', 'closed', '', 'peneira-2', '', '', '2025-09-20 02:16:07', '2025-09-20 02:16:07', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/peneira-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2025-09-20 02:16:44', '2025-09-20 02:16:44', '', 'icon-telas-3', '', 'inherit', 'closed', 'closed', '', 'icon-telas-3', '', '', '2025-09-20 02:16:44', '2025-09-20 02:16:44', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-telas-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(22, 1, '2025-09-20 02:34:02', '2025-09-20 02:34:02', '', 'video_fundo', '', 'inherit', 'closed', 'closed', '', 'video_fundo', '', '', '2025-09-20 02:34:02', '2025-09-20 02:34:02', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/video_fundo.webm', 0, 'attachment', 'video/webm', 0),
(23, 1, '2025-09-20 02:34:21', '2025-09-20 02:34:21', '', 'thumb-video', '', 'inherit', 'closed', 'closed', '', 'thumb-video', '', '', '2025-09-20 02:34:21', '2025-09-20 02:34:21', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/thumb-video.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2025-09-20 02:35:43', '2025-09-20 02:35:43', '', 'icon-capacete', '', 'inherit', 'closed', 'closed', '', 'icon-capacete', '', '', '2025-09-20 02:35:43', '2025-09-20 02:35:43', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-capacete.svg', 0, 'attachment', 'image/svg+xml', 0),
(25, 1, '2025-09-20 02:36:10', '2025-09-20 02:36:10', '', 'icon-bola', '', 'inherit', 'closed', 'closed', '', 'icon-bola', '', '', '2025-09-20 02:36:10', '2025-09-20 02:36:10', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-bola.svg', 0, 'attachment', 'image/svg+xml', 0),
(26, 1, '2025-09-20 02:36:33', '2025-09-20 02:36:33', '', 'icon-calendario', '', 'inherit', 'closed', 'closed', '', 'icon-calendario', '', '', '2025-09-20 02:36:33', '2025-09-20 02:36:33', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/icon-calendario.svg', 0, 'attachment', 'image/svg+xml', 0),
(27, 1, '2025-09-22 01:04:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-09-22 01:04:52', '0000-00-00 00:00:00', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=produtos&p=27', 0, 'produtos', '', 0),
(28, 1, '2025-09-22 01:11:58', '2025-09-22 01:11:58', '', 'Telas Autolimpantes', '', 'publish', 'closed', 'closed', '', 'telas-autolimpantes', '', '', '2025-09-22 01:11:58', '2025-09-22 01:11:58', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=produtos&#038;p=28', 0, 'produtos', '', 0),
(29, 1, '2025-09-22 01:11:48', '2025-09-22 01:11:48', '', 'telas-autolimpantes', '', 'inherit', 'closed', 'closed', '', 'telas-autolimpantes', '', '', '2025-09-22 01:11:53', '2025-09-22 01:11:53', '', 28, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/telas-autolimpantes.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2025-09-22 01:12:25', '2025-09-22 01:12:25', '', 'Peneiramento de Finos', '', 'publish', 'closed', 'closed', '', 'peneiramento-de-finos', '', '', '2025-09-22 01:12:25', '2025-09-22 01:12:25', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=produtos&#038;p=30', 0, 'produtos', '', 0),
(31, 1, '2025-09-22 01:12:16', '2025-09-22 01:12:16', '', 'peneiramento-de-finos', '', 'inherit', 'closed', 'closed', '', 'peneiramento-de-finos', '', '', '2025-09-22 01:12:21', '2025-09-22 01:12:21', '', 30, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/peneiramento-de-finos.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2025-09-22 01:12:48', '2025-09-22 01:12:48', '', 'Tela Mista', '', 'publish', 'closed', 'closed', '', 'tela-mista', '', '', '2025-09-22 01:12:48', '2025-09-22 01:12:48', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=produtos&#038;p=32', 0, 'produtos', '', 0),
(33, 1, '2025-09-22 01:12:40', '2025-09-22 01:12:40', '', 'tela-mista', '', 'inherit', 'closed', 'closed', '', 'tela-mista', '', '', '2025-09-22 01:12:46', '2025-09-22 01:12:46', '', 32, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/tela-mista.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2025-09-22 01:13:21', '2025-09-22 01:13:21', '', 'Projetos Especiais', '', 'publish', 'closed', 'closed', '', 'projetos-especiais', '', '', '2025-09-22 01:13:21', '2025-09-22 01:13:21', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=produtos&#038;p=34', 0, 'produtos', '', 0),
(35, 1, '2025-09-22 01:13:17', '2025-09-22 01:13:17', '', 'trommel', '', 'inherit', 'closed', 'closed', '', 'trommel', '', '', '2025-09-22 01:13:17', '2025-09-22 01:13:17', '', 34, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/trommel.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2025-09-22 01:13:45', '2025-09-22 01:13:45', '', 'Produto', '', 'publish', 'closed', 'closed', '', 'produto', '', '', '2025-09-22 01:13:45', '2025-09-22 01:13:45', '', 0, 'http://sh00016.teste.website/~mar39728/?post_type=produtos&#038;p=36', 0, 'produtos', '', 0),
(37, 1, '2025-09-22 01:13:41', '2025-09-22 01:13:41', '', 'produto', '', 'inherit', 'closed', 'closed', '', 'produto', '', '', '2025-09-22 01:13:41', '2025-09-22 01:13:41', '', 36, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/produto.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2025-09-22 01:44:15', '2025-09-22 01:44:15', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo-2', '', '', '2025-09-22 01:44:15', '2025-09-22 01:44:15', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/logo-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(39, 1, '2025-09-22 01:44:56', '2025-09-22 01:44:56', '', '356x100', '', 'inherit', 'closed', 'closed', '', '356x100', '', '', '2025-09-22 01:45:17', '2025-09-22 01:45:17', '', 6, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/356x100.svg', 0, 'attachment', 'image/svg+xml', 0),
(40, 1, '2025-09-22 02:18:07', '2025-09-22 02:18:07', '', 'logo-footer', '', 'inherit', 'closed', 'closed', '', 'logo-footer', '', '', '2025-09-22 02:18:07', '2025-09-22 02:18:07', '', 0, 'http://sh00016.teste.website/~mar39728/wp-content/uploads/2025/09/logo-footer.svg', 0, 'attachment', 'image/svg+xml', 0) ;

#
# Fim do conteúdo da tabela `wp_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_relationships` existente
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Estrutura da tabela `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0) ;

#
# Fim do conteúdo da tabela `wp_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_taxonomy` existente
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Estrutura da tabela `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4) ;

#
# Fim do conteúdo da tabela `wp_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_termmeta` existente
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Estrutura da tabela `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_termmeta`
#

#
# Fim do conteúdo da tabela `wp_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_terms` existente
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Estrutura da tabela `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu Header', 'menu-header', 0) ;

#
# Fim do conteúdo da tabela `wp_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_usermeta` existente
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Estrutura da tabela `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'michel'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"73838c46255b63b0572aa56ff44018fe4e08517e2f4edd6324ae6e9bf3d2e63f";a:4:{s:10:"expiration";i:1758675860;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36";s:5:"login";i:1758503060;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2025-09-19T01:49:23.947Z";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1758504482'),
(23, 1, 'closedpostboxes_page', 'a:20:{i:0;s:10:"wpseo_meta";i:1;s:11:"cmb2_banner";i:2;s:19:"cmb-group-sliders-0";i:3;s:19:"cmb-group-sliders-1";i:4;s:10:"cmb2_about";i:5;s:10:"cmb2_telas";i:6;s:17:"cmb-group-telas-0";i:7;s:17:"cmb-group-telas-1";i:8;s:17:"cmb-group-telas-2";i:9;s:11:"cmb2_points";i:10;s:18:"cmb-group-points-0";i:11;s:18:"cmb-group-points-1";i:12;s:18:"cmb-group-points-2";i:13;s:13:"cmb2_products";i:14;s:16:"cmb2_commitments";i:15;s:23:"cmb-group-commitments-0";i:16;s:23:"cmb-group-commitments-1";i:17;s:23:"cmb-group-commitments-2";i:18;s:19:"cmb-group-logos_1-0";i:19;s:19:"cmb-group-logos_2-0";}'),
(24, 1, 'metaboxhidden_page', 'a:14:{i:0;s:19:"cmb-group-sliders-0";i:1;s:19:"cmb-group-sliders-1";i:2;s:17:"cmb-group-telas-0";i:3;s:17:"cmb-group-telas-1";i:4;s:17:"cmb-group-telas-2";i:5;s:18:"cmb-group-points-0";i:6;s:18:"cmb-group-points-1";i:7;s:18:"cmb-group-points-2";i:8;s:23:"cmb-group-commitments-0";i:9;s:23:"cmb-group-commitments-1";i:10;s:23:"cmb-group-commitments-2";i:11;s:10:"postcustom";i:12;s:7:"slugdiv";i:13;s:9:"authordiv";}'),
(25, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:"message";s:231:"Você adicionou um novo tipo de conteúdo. Recomendamos que você revise as <a href="http://sh00016.teste.website/~mar39728/wp-admin/admin.php?page=wpseo_page_settings">configurações de aparência da pesquisa</a> correspondentes.";s:7:"options";a:10:{s:4:"type";s:7:"warning";s:2:"id";s:25:"content-types-made-public";s:7:"user_id";i:1;s:5:"nonce";N;s:8:"priority";d:0.80000000000000004;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}}'),
(26, 1, 'closedpostboxes_produtos', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(27, 1, 'metaboxhidden_produtos', 'a:1:{i:0;s:7:"slugdiv";}') ;

#
# Fim do conteúdo da tabela `wp_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_users` existente
#

DROP TABLE IF EXISTS `wp_users`;


#
# Estrutura da tabela `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'michel', '$wp$2y$10$A1KSScHRrbLuALm/ihU18epCeZN/wSk7q5TxEoJAsw.XQUroj8YpG', 'michel', 'michel.wrq@gmail.com', 'http://sh00016.teste.website/~mar39728', '2025-09-08 01:42:25', '', 0, 'michel') ;

#
# Fim do conteúdo da tabela `wp_users`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_yoast_indexable` existente
#

DROP TABLE IF EXISTS `wp_yoast_indexable`;


#
# Estrutura da tabela `wp_yoast_indexable`
#

CREATE TABLE `wp_yoast_indexable` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_yoast_indexable`
#

#
# Fim do conteúdo da tabela `wp_yoast_indexable`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_yoast_indexable_hierarchy` existente
#

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;


#
# Estrutura da tabela `wp_yoast_indexable_hierarchy`
#

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int unsigned NOT NULL,
  `ancestor_id` int unsigned NOT NULL,
  `depth` int unsigned DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_yoast_indexable_hierarchy`
#

#
# Fim do conteúdo da tabela `wp_yoast_indexable_hierarchy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_yoast_migrations` existente
#

DROP TABLE IF EXISTS `wp_yoast_migrations`;


#
# Estrutura da tabela `wp_yoast_migrations`
#

CREATE TABLE `wp_yoast_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_yoast_migrations`
#
INSERT INTO `wp_yoast_migrations` ( `id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836') ;

#
# Fim do conteúdo da tabela `wp_yoast_migrations`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_yoast_primary_term` existente
#

DROP TABLE IF EXISTS `wp_yoast_primary_term`;


#
# Estrutura da tabela `wp_yoast_primary_term`
#

CREATE TABLE `wp_yoast_primary_term` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wp_yoast_primary_term`
#

#
# Fim do conteúdo da tabela `wp_yoast_primary_term`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_yoast_seo_links` existente
#

DROP TABLE IF EXISTS `wp_yoast_seo_links`;


#
# Estrutura da tabela `wp_yoast_seo_links`
#

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `target_post_id` bigint unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int unsigned DEFAULT NULL,
  `target_indexable_id` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `size` int unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


#
# Conteúdo da tabela `wp_yoast_seo_links`
#

#
# Fim do conteúdo da tabela `wp_yoast_seo_links`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

