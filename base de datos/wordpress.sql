-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2015 a las 23:26:01
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_album`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_album_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(64) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image_comment`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image_rate`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image_tag`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_option`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_option` (
  `id` bigint(20) NOT NULL,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `mosaic` varchar(255) NOT NULL,
  `resizable_mosaic` tinyint(1) NOT NULL,
  `mosaic_total_width` int(4) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(8) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(16) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(16) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(16) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(16) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `watermark_type` varchar(8) NOT NULL,
  `watermark_position` varchar(16) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(16) NOT NULL,
  `watermark_color` varchar(8) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(4) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL,
  `enable_ML_import` tinyint(1) NOT NULL,
  `showthumbs_name` tinyint(1) NOT NULL,
  `show_album_name` tinyint(1) NOT NULL,
  `show_image_counts` tinyint(1) NOT NULL,
  `upload_img_width` int(4) NOT NULL,
  `upload_img_height` int(4) NOT NULL,
  `play_icon` tinyint(1) NOT NULL,
  `show_masonry_thumb_description` tinyint(1) NOT NULL,
  `slideshow_title_full_width` tinyint(1) NOT NULL,
  `popup_info_full_width` tinyint(1) NOT NULL,
  `show_sort_images` tinyint(1) NOT NULL,
  `autoupdate_interval` int(4) NOT NULL,
  `instagram_client_id` varchar(40) NOT NULL,
  `description_tb` tinyint(1) NOT NULL,
  `enable_seo` tinyint(1) NOT NULL,
  `autohide_lightbox_navigation` tinyint(1) NOT NULL,
  `autohide_slideshow_navigation` tinyint(1) NOT NULL,
  `read_metadata` tinyint(1) NOT NULL,
  `enable_loop` tinyint(1) NOT NULL,
  `enable_addthis` tinyint(1) NOT NULL,
  `addthis_profile_id` varchar(66) NOT NULL,
  `carousel_interval` int(4) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `carousel_height` int(4) NOT NULL,
  `carousel_image_column_number` int(4) NOT NULL,
  `carousel_image_par` varchar(32) NOT NULL,
  `carousel_enable_title` tinyint(1) NOT NULL,
  `carousel_enable_autoplay` tinyint(1) NOT NULL,
  `carousel_r_width` int(4) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_prev_next_butt` tinyint(1) NOT NULL,
  `carousel_play_pause_butt` tinyint(1) NOT NULL,
  `permissions` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_bwg_option`
--

INSERT INTO `wp_bwg_option` (`id`, `images_directory`, `masonry`, `mosaic`, `resizable_mosaic`, `mosaic_total_width`, `image_column_number`, `images_per_page`, `thumb_width`, `thumb_height`, `upload_thumb_width`, `upload_thumb_height`, `image_enable_page`, `image_title_show_hover`, `album_column_number`, `albums_per_page`, `album_title_show_hover`, `album_thumb_width`, `album_thumb_height`, `album_enable_page`, `extended_album_height`, `extended_album_description_enable`, `image_browser_width`, `image_browser_title_enable`, `image_browser_description_enable`, `blog_style_width`, `blog_style_title_enable`, `blog_style_images_per_page`, `blog_style_enable_page`, `slideshow_type`, `slideshow_interval`, `slideshow_width`, `slideshow_height`, `slideshow_enable_autoplay`, `slideshow_enable_shuffle`, `slideshow_enable_ctrl`, `slideshow_enable_filmstrip`, `slideshow_filmstrip_height`, `slideshow_enable_title`, `slideshow_title_position`, `slideshow_enable_description`, `slideshow_description_position`, `slideshow_enable_music`, `slideshow_audio_url`, `popup_width`, `popup_height`, `popup_type`, `popup_interval`, `popup_enable_filmstrip`, `popup_filmstrip_height`, `popup_enable_ctrl_btn`, `popup_enable_fullscreen`, `popup_enable_info`, `popup_info_always_show`, `popup_enable_rate`, `popup_enable_comment`, `popup_enable_email`, `popup_enable_captcha`, `popup_enable_download`, `popup_enable_fullsize_image`, `popup_enable_facebook`, `popup_enable_twitter`, `popup_enable_google`, `watermark_type`, `watermark_position`, `watermark_width`, `watermark_height`, `watermark_url`, `watermark_text`, `watermark_link`, `watermark_font_size`, `watermark_font`, `watermark_color`, `watermark_opacity`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `image_right_click`, `popup_fullscreen`, `gallery_role`, `album_role`, `image_role`, `popup_autoplay`, `album_view_type`, `popup_enable_pinterest`, `popup_enable_tumblr`, `show_search_box`, `search_box_width`, `preload_images`, `preload_images_count`, `thumb_click_action`, `thumb_link_target`, `comment_moderation`, `popup_hit_counter`, `enable_ML_import`, `showthumbs_name`, `show_album_name`, `show_image_counts`, `upload_img_width`, `upload_img_height`, `play_icon`, `show_masonry_thumb_description`, `slideshow_title_full_width`, `popup_info_full_width`, `show_sort_images`, `autoupdate_interval`, `instagram_client_id`, `description_tb`, `enable_seo`, `autohide_lightbox_navigation`, `autohide_slideshow_navigation`, `read_metadata`, `enable_loop`, `enable_addthis`, `addthis_profile_id`, `carousel_interval`, `carousel_width`, `carousel_height`, `carousel_image_column_number`, `carousel_image_par`, `carousel_enable_title`, `carousel_enable_autoplay`, `carousel_r_width`, `carousel_fit_containerWidth`, `carousel_prev_next_butt`, `carousel_play_pause_butt`, `permissions`) VALUES
(1, 'wp-content/uploads', 'vertical', 'vertical', 0, 100, 5, 30, 180, 90, 300, 300, 1, 'none', 5, 30, 'hover', 120, 90, 1, 150, 1, 800, 1, 1, 800, 1, 5, 1, 'fade', 5, 800, 500, 0, 0, 1, 1, 90, 0, 'top-right', 0, 'bottom-right', 0, '', 800, 500, 'fade', 5, 1, 70, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 'none', 'bottom-left', 90, 90, 'http://localhost/wordpress/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 'https://web-dorado.com', 20, 'arial', 'FFFFFF', 30, 'none', 'middle-center', 15, 'http://localhost/wordpress/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 20, 'arial', 'FFFFFF', 30, 0, 0, 0, 0, 0, 0, 'thumbnail', 0, 0, 0, 180, 0, 10, 'open_lightbox', 1, 0, 0, 0, 0, 0, 0, 1200, 1200, 1, 0, 0, 0, 0, 30, '', 0, 1, 1, 1, 1, 1, 0, '', 5, 300, 300, 5, '0.75', 0, 0, 800, 1, 1, 1, 'manage_options');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_shortcode`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' gallery_type="image_browser" theme_id="1" gallery_id="0" sort_by="order" order_by="asc" show_search_box="0" search_box_width="180" image_browser_width="800" image_browser_title_enable="1" image_browser_description_enable="1" thumb_click_action="undefined" thumb_link_target="undefined" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="1" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" watermark_type="none" watermark_link="https%3A%2F%2Fweb-dorado.com"'),
(2, ' gallery_type="thumbnails" theme_id="1" gallery_id="0" sort_by="order" order_by="asc" show_search_box="0" show_sort_images="0" search_box_width="180" image_column_number="5" images_per_page="30" image_title="none" image_enable_page="1" thumb_width="180" thumb_height="90" load_more_image_count="30" thumb_click_action="undefined" thumb_link_target="undefined" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="1" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" watermark_type="none" watermark_link="https%3A%2F%2Fweb-dorado.com"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_theme`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumb_margin` int(4) NOT NULL,
  `thumb_padding` int(4) NOT NULL,
  `thumb_border_radius` varchar(32) NOT NULL,
  `thumb_border_width` int(4) NOT NULL,
  `thumb_border_style` varchar(16) NOT NULL,
  `thumb_border_color` varchar(8) NOT NULL,
  `thumb_bg_color` varchar(8) NOT NULL,
  `thumbs_bg_color` varchar(8) NOT NULL,
  `thumb_bg_transparent` int(4) NOT NULL,
  `thumb_box_shadow` varchar(32) NOT NULL,
  `thumb_transparent` int(4) NOT NULL,
  `thumb_align` varchar(8) NOT NULL,
  `thumb_hover_effect` varchar(128) NOT NULL,
  `thumb_hover_effect_value` varchar(128) NOT NULL,
  `thumb_transition` tinyint(1) NOT NULL,
  `thumb_title_font_color` varchar(8) NOT NULL,
  `thumb_title_font_style` varchar(16) NOT NULL,
  `thumb_title_pos` varchar(8) NOT NULL,
  `thumb_title_font_size` int(4) NOT NULL,
  `thumb_title_font_weight` varchar(8) NOT NULL,
  `thumb_title_margin` varchar(32) NOT NULL,
  `thumb_title_shadow` varchar(32) NOT NULL,
  `page_nav_position` varchar(8) NOT NULL,
  `page_nav_align` varchar(8) NOT NULL,
  `page_nav_number` tinyint(1) NOT NULL,
  `page_nav_font_size` int(4) NOT NULL,
  `page_nav_font_style` varchar(32) NOT NULL,
  `page_nav_font_color` varchar(8) NOT NULL,
  `page_nav_font_weight` varchar(8) NOT NULL,
  `page_nav_border_width` int(4) NOT NULL,
  `page_nav_border_style` varchar(16) NOT NULL,
  `page_nav_border_color` varchar(8) NOT NULL,
  `page_nav_border_radius` varchar(32) NOT NULL,
  `page_nav_margin` varchar(32) NOT NULL,
  `page_nav_padding` varchar(32) NOT NULL,
  `page_nav_button_bg_color` varchar(8) NOT NULL,
  `page_nav_button_bg_transparent` int(4) NOT NULL,
  `page_nav_box_shadow` varchar(32) NOT NULL,
  `page_nav_button_transition` tinyint(1) NOT NULL,
  `page_nav_button_text` tinyint(1) NOT NULL,
  `lightbox_overlay_bg_color` varchar(8) NOT NULL,
  `lightbox_overlay_bg_transparent` int(4) NOT NULL,
  `lightbox_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_pos` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_align` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_height` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_top` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_left` int(4) NOT NULL,
  `lightbox_ctrl_btn_transparent` int(4) NOT NULL,
  `lightbox_ctrl_btn_color` varchar(8) NOT NULL,
  `lightbox_toggle_btn_height` int(4) NOT NULL,
  `lightbox_toggle_btn_width` int(4) NOT NULL,
  `lightbox_ctrl_cont_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_cont_transparent` int(4) NOT NULL,
  `lightbox_ctrl_cont_border_radius` int(4) NOT NULL,
  `lightbox_close_btn_transparent` int(4) NOT NULL,
  `lightbox_close_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_close_btn_border_width` int(4) NOT NULL,
  `lightbox_close_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_close_btn_border_style` varchar(16) NOT NULL,
  `lightbox_close_btn_border_color` varchar(8) NOT NULL,
  `lightbox_close_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_close_btn_color` varchar(8) NOT NULL,
  `lightbox_close_btn_size` int(4) NOT NULL,
  `lightbox_close_btn_width` int(4) NOT NULL,
  `lightbox_close_btn_height` int(4) NOT NULL,
  `lightbox_close_btn_top` varchar(8) NOT NULL,
  `lightbox_close_btn_right` varchar(8) NOT NULL,
  `lightbox_close_btn_full_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_transparent` int(4) NOT NULL,
  `lightbox_rl_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_width` int(4) NOT NULL,
  `lightbox_rl_btn_border_style` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_height` int(4) NOT NULL,
  `lightbox_rl_btn_width` int(4) NOT NULL,
  `lightbox_rl_btn_size` int(4) NOT NULL,
  `lightbox_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `lightbox_comment_pos` varchar(8) NOT NULL,
  `lightbox_comment_width` int(4) NOT NULL,
  `lightbox_comment_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_font_color` varchar(8) NOT NULL,
  `lightbox_comment_font_style` varchar(16) NOT NULL,
  `lightbox_comment_font_size` int(4) NOT NULL,
  `lightbox_comment_button_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_width` int(4) NOT NULL,
  `lightbox_comment_button_border_style` varchar(16) NOT NULL,
  `lightbox_comment_button_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_button_padding` varchar(32) NOT NULL,
  `lightbox_comment_input_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_width` int(4) NOT NULL,
  `lightbox_comment_input_border_style` varchar(16) NOT NULL,
  `lightbox_comment_input_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_input_padding` varchar(32) NOT NULL,
  `lightbox_comment_separator_width` int(4) NOT NULL,
  `lightbox_comment_separator_style` varchar(16) NOT NULL,
  `lightbox_comment_separator_color` varchar(8) NOT NULL,
  `lightbox_comment_author_font_size` int(4) NOT NULL,
  `lightbox_comment_date_font_size` int(4) NOT NULL,
  `lightbox_comment_body_font_size` int(4) NOT NULL,
  `lightbox_comment_share_button_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_pos` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_btn_size` int(4) NOT NULL,
  `lightbox_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_border_style` varchar(16) NOT NULL,
  `lightbox_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_style` varchar(16) NOT NULL,
  `album_compact_back_font_color` varchar(8) NOT NULL,
  `album_compact_back_font_style` varchar(16) NOT NULL,
  `album_compact_back_font_size` int(4) NOT NULL,
  `album_compact_back_font_weight` varchar(8) NOT NULL,
  `album_compact_back_padding` varchar(32) NOT NULL,
  `album_compact_title_font_color` varchar(8) NOT NULL,
  `album_compact_title_font_style` varchar(16) NOT NULL,
  `album_compact_thumb_title_pos` varchar(8) NOT NULL,
  `album_compact_title_font_size` int(4) NOT NULL,
  `album_compact_title_font_weight` varchar(8) NOT NULL,
  `album_compact_title_margin` varchar(32) NOT NULL,
  `album_compact_title_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_margin` int(4) NOT NULL,
  `album_compact_thumb_padding` int(4) NOT NULL,
  `album_compact_thumb_border_radius` varchar(32) NOT NULL,
  `album_compact_thumb_border_width` int(4) NOT NULL,
  `album_compact_thumb_border_style` varchar(8) NOT NULL,
  `album_compact_thumb_border_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_color` varchar(8) NOT NULL,
  `album_compact_thumbs_bg_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_transparent` int(4) NOT NULL,
  `album_compact_thumb_box_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_transparent` int(4) NOT NULL,
  `album_compact_thumb_align` varchar(8) NOT NULL,
  `album_compact_thumb_hover_effect` varchar(64) NOT NULL,
  `album_compact_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_compact_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_thumb_margin` int(4) NOT NULL,
  `album_extended_thumb_padding` int(4) NOT NULL,
  `album_extended_thumb_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_border_width` int(4) NOT NULL,
  `album_extended_thumb_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_color` varchar(8) NOT NULL,
  `album_extended_thumbs_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_transparent` int(4) NOT NULL,
  `album_extended_thumb_box_shadow` varchar(32) NOT NULL,
  `album_extended_thumb_transparent` int(4) NOT NULL,
  `album_extended_thumb_align` varchar(8) NOT NULL,
  `album_extended_thumb_hover_effect` varchar(64) NOT NULL,
  `album_extended_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_extended_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_back_font_color` varchar(8) NOT NULL,
  `album_extended_back_font_style` varchar(16) NOT NULL,
  `album_extended_back_font_size` int(4) NOT NULL,
  `album_extended_back_font_weight` varchar(8) NOT NULL,
  `album_extended_back_padding` varchar(32) NOT NULL,
  `album_extended_div_bg_color` varchar(8) NOT NULL,
  `album_extended_div_bg_transparent` int(4) NOT NULL,
  `album_extended_div_border_radius` varchar(32) NOT NULL,
  `album_extended_div_margin` varchar(32) NOT NULL,
  `album_extended_div_padding` int(4) NOT NULL,
  `album_extended_div_separator_width` int(4) NOT NULL,
  `album_extended_div_separator_style` varchar(8) NOT NULL,
  `album_extended_div_separator_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_div_border_width` int(4) NOT NULL,
  `album_extended_thumb_div_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_padding` varchar(32) NOT NULL,
  `album_extended_text_div_bg_color` varchar(8) NOT NULL,
  `album_extended_text_div_border_radius` varchar(32) NOT NULL,
  `album_extended_text_div_border_width` int(4) NOT NULL,
  `album_extended_text_div_border_style` varchar(8) NOT NULL,
  `album_extended_text_div_border_color` varchar(8) NOT NULL,
  `album_extended_text_div_padding` varchar(32) NOT NULL,
  `album_extended_title_span_border_width` int(4) NOT NULL,
  `album_extended_title_span_border_style` varchar(8) NOT NULL,
  `album_extended_title_span_border_color` varchar(8) NOT NULL,
  `album_extended_title_font_color` varchar(8) NOT NULL,
  `album_extended_title_font_style` varchar(16) NOT NULL,
  `album_extended_title_font_size` int(4) NOT NULL,
  `album_extended_title_font_weight` varchar(8) NOT NULL,
  `album_extended_title_margin_bottom` int(4) NOT NULL,
  `album_extended_title_padding` varchar(32) NOT NULL,
  `album_extended_desc_span_border_width` int(4) NOT NULL,
  `album_extended_desc_span_border_style` varchar(8) NOT NULL,
  `album_extended_desc_span_border_color` varchar(8) NOT NULL,
  `album_extended_desc_font_color` varchar(8) NOT NULL,
  `album_extended_desc_font_style` varchar(16) NOT NULL,
  `album_extended_desc_font_size` int(4) NOT NULL,
  `album_extended_desc_font_weight` varchar(8) NOT NULL,
  `album_extended_desc_padding` varchar(32) NOT NULL,
  `album_extended_desc_more_color` varchar(8) NOT NULL,
  `album_extended_desc_more_size` int(4) NOT NULL,
  `masonry_thumb_padding` int(4) NOT NULL,
  `masonry_thumb_border_radius` varchar(32) NOT NULL,
  `masonry_thumb_border_width` int(4) NOT NULL,
  `masonry_thumb_border_style` varchar(8) NOT NULL,
  `masonry_thumb_border_color` varchar(8) NOT NULL,
  `masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `masonry_thumb_bg_transparent` int(4) NOT NULL,
  `masonry_thumb_transparent` int(4) NOT NULL,
  `masonry_thumb_align` varchar(8) NOT NULL,
  `masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `masonry_thumb_transition` tinyint(1) NOT NULL,
  `mosaic_thumb_padding` int(4) NOT NULL,
  `mosaic_thumb_border_radius` varchar(32) NOT NULL,
  `mosaic_thumb_border_width` int(4) NOT NULL,
  `mosaic_thumb_border_style` varchar(8) NOT NULL,
  `mosaic_thumb_border_color` varchar(8) NOT NULL,
  `mosaic_thumbs_bg_color` varchar(8) NOT NULL,
  `mosaic_thumb_bg_transparent` int(4) NOT NULL,
  `mosaic_thumb_transparent` int(4) NOT NULL,
  `mosaic_thumb_align` varchar(8) NOT NULL,
  `mosaic_thumb_hover_effect` varchar(64) NOT NULL,
  `mosaic_thumb_hover_effect_value` varchar(64) NOT NULL,
  `mosaic_thumb_title_font_color` varchar(8) NOT NULL,
  `mosaic_thumb_title_font_style` varchar(16) NOT NULL,
  `mosaic_thumb_title_font_size` int(4) NOT NULL,
  `mosaic_thumb_title_font_weight` varchar(8) NOT NULL,
  `mosaic_thumb_title_margin` varchar(32) NOT NULL,
  `mosaic_thumb_title_shadow` varchar(32) NOT NULL,
  `slideshow_cont_bg_color` varchar(8) NOT NULL,
  `slideshow_close_btn_transparent` int(4) NOT NULL,
  `slideshow_rl_btn_bg_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_radius` varchar(32) NOT NULL,
  `slideshow_rl_btn_border_width` int(4) NOT NULL,
  `slideshow_rl_btn_border_style` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_box_shadow` varchar(32) NOT NULL,
  `slideshow_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_height` int(4) NOT NULL,
  `slideshow_rl_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_width` int(4) NOT NULL,
  `slideshow_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_pos` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_border_style` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `slideshow_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_size` int(4) NOT NULL,
  `slideshow_title_font_size` int(4) NOT NULL,
  `slideshow_title_font` varchar(16) NOT NULL,
  `slideshow_title_color` varchar(8) NOT NULL,
  `slideshow_title_opacity` int(4) NOT NULL,
  `slideshow_title_border_radius` varchar(32) NOT NULL,
  `slideshow_title_background_color` varchar(8) NOT NULL,
  `slideshow_title_padding` varchar(32) NOT NULL,
  `slideshow_description_font_size` int(4) NOT NULL,
  `slideshow_description_font` varchar(16) NOT NULL,
  `slideshow_description_color` varchar(8) NOT NULL,
  `slideshow_description_opacity` int(4) NOT NULL,
  `slideshow_description_border_radius` varchar(32) NOT NULL,
  `slideshow_description_background_color` varchar(8) NOT NULL,
  `slideshow_description_padding` varchar(32) NOT NULL,
  `slideshow_dots_width` int(4) NOT NULL,
  `slideshow_dots_height` int(4) NOT NULL,
  `slideshow_dots_border_radius` varchar(32) NOT NULL,
  `slideshow_dots_background_color` varchar(8) NOT NULL,
  `slideshow_dots_margin` int(4) NOT NULL,
  `slideshow_dots_active_background_color` varchar(8) NOT NULL,
  `slideshow_dots_active_border_width` int(4) NOT NULL,
  `slideshow_dots_active_border_color` varchar(8) NOT NULL,
  `slideshow_play_pause_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_style` varchar(16) NOT NULL,
  `blog_style_margin` varchar(32) NOT NULL,
  `blog_style_padding` varchar(32) NOT NULL,
  `blog_style_border_radius` varchar(32) NOT NULL,
  `blog_style_border_width` int(4) NOT NULL,
  `blog_style_border_style` varchar(16) NOT NULL,
  `blog_style_border_color` varchar(8) NOT NULL,
  `blog_style_bg_color` varchar(8) NOT NULL,
  `blog_style_box_shadow` varchar(32) NOT NULL,
  `blog_style_transparent` int(4) NOT NULL,
  `blog_style_align` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_margin` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_radius` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_width` int(4) NOT NULL,
  `blog_style_share_buttons_border_style` varchar(16) NOT NULL,
  `blog_style_share_buttons_border_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_align` varchar(8) NOT NULL,
  `blog_style_img_font_size` int(4) NOT NULL,
  `blog_style_img_font_family` varchar(16) NOT NULL,
  `blog_style_img_font_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_transparent` int(4) NOT NULL,
  `blog_style_share_buttons_font_size` int(4) NOT NULL,
  `image_browser_margin` varchar(32) NOT NULL,
  `image_browser_padding` varchar(32) NOT NULL,
  `image_browser_border_radius` varchar(32) NOT NULL,
  `image_browser_border_width` int(4) NOT NULL,
  `image_browser_border_style` varchar(16) NOT NULL,
  `image_browser_border_color` varchar(8) NOT NULL,
  `image_browser_bg_color` varchar(8) NOT NULL,
  `image_browser_box_shadow` varchar(32) NOT NULL,
  `image_browser_transparent` int(4) NOT NULL,
  `image_browser_align` varchar(8) NOT NULL,
  `image_browser_image_description_margin` varchar(32) NOT NULL,
  `image_browser_image_description_padding` varchar(32) NOT NULL,
  `image_browser_image_description_border_radius` varchar(32) NOT NULL,
  `image_browser_image_description_border_width` int(4) NOT NULL,
  `image_browser_image_description_border_style` varchar(16) NOT NULL,
  `image_browser_image_description_border_color` varchar(8) NOT NULL,
  `image_browser_image_description_bg_color` varchar(8) NOT NULL,
  `image_browser_image_description_align` varchar(8) NOT NULL,
  `image_browser_img_font_size` int(4) NOT NULL,
  `image_browser_img_font_family` varchar(16) NOT NULL,
  `image_browser_img_font_color` varchar(8) NOT NULL,
  `image_browser_full_padding` varchar(32) NOT NULL,
  `image_browser_full_border_radius` varchar(32) NOT NULL,
  `image_browser_full_border_width` int(4) NOT NULL,
  `image_browser_full_border_style` varchar(16) NOT NULL,
  `image_browser_full_border_color` varchar(8) NOT NULL,
  `image_browser_full_bg_color` varchar(8) NOT NULL,
  `image_browser_full_transparent` int(4) NOT NULL,
  `lightbox_info_pos` varchar(8) NOT NULL,
  `lightbox_info_align` varchar(8) NOT NULL,
  `lightbox_info_bg_color` varchar(8) NOT NULL,
  `lightbox_info_bg_transparent` int(4) NOT NULL,
  `lightbox_info_border_width` int(4) NOT NULL,
  `lightbox_info_border_style` varchar(16) NOT NULL,
  `lightbox_info_border_color` varchar(8) NOT NULL,
  `lightbox_info_border_radius` varchar(32) NOT NULL,
  `lightbox_info_padding` varchar(32) NOT NULL,
  `lightbox_info_margin` varchar(32) NOT NULL,
  `lightbox_title_color` varchar(8) NOT NULL,
  `lightbox_title_font_style` varchar(16) NOT NULL,
  `lightbox_title_font_weight` varchar(8) NOT NULL,
  `lightbox_title_font_size` int(4) NOT NULL,
  `lightbox_description_color` varchar(8) NOT NULL,
  `lightbox_description_font_style` varchar(16) NOT NULL,
  `lightbox_description_font_weight` varchar(8) NOT NULL,
  `lightbox_description_font_size` int(4) NOT NULL,
  `lightbox_rate_pos` varchar(8) NOT NULL,
  `lightbox_rate_align` varchar(8) NOT NULL,
  `lightbox_rate_icon` varchar(16) NOT NULL,
  `lightbox_rate_color` varchar(8) NOT NULL,
  `lightbox_rate_size` int(4) NOT NULL,
  `lightbox_rate_stars_count` int(4) NOT NULL,
  `lightbox_rate_padding` varchar(32) NOT NULL,
  `lightbox_rate_hover_color` varchar(8) NOT NULL,
  `lightbox_hit_pos` varchar(8) NOT NULL,
  `lightbox_hit_align` varchar(8) NOT NULL,
  `lightbox_hit_bg_color` varchar(8) NOT NULL,
  `lightbox_hit_bg_transparent` int(4) NOT NULL,
  `lightbox_hit_border_width` int(4) NOT NULL,
  `lightbox_hit_border_style` varchar(16) NOT NULL,
  `lightbox_hit_border_color` varchar(8) NOT NULL,
  `lightbox_hit_border_radius` varchar(32) NOT NULL,
  `lightbox_hit_padding` varchar(32) NOT NULL,
  `lightbox_hit_margin` varchar(32) NOT NULL,
  `lightbox_hit_color` varchar(8) NOT NULL,
  `lightbox_hit_font_style` varchar(16) NOT NULL,
  `lightbox_hit_font_weight` varchar(8) NOT NULL,
  `lightbox_hit_font_size` int(4) NOT NULL,
  `masonry_description_font_size` int(4) NOT NULL,
  `masonry_description_color` varchar(8) NOT NULL,
  `masonry_description_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_color` varchar(8) NOT NULL,
  `album_masonry_back_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_size` int(4) NOT NULL,
  `album_masonry_back_font_weight` varchar(8) NOT NULL,
  `album_masonry_back_padding` varchar(32) NOT NULL,
  `album_masonry_title_font_color` varchar(8) NOT NULL,
  `album_masonry_title_font_style` varchar(16) NOT NULL,
  `album_masonry_thumb_title_pos` varchar(8) NOT NULL,
  `album_masonry_title_font_size` int(4) NOT NULL,
  `album_masonry_title_font_weight` varchar(8) NOT NULL,
  `album_masonry_title_margin` varchar(32) NOT NULL,
  `album_masonry_title_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_margin` int(4) NOT NULL,
  `album_masonry_thumb_padding` int(4) NOT NULL,
  `album_masonry_thumb_border_radius` varchar(32) NOT NULL,
  `album_masonry_thumb_border_width` int(4) NOT NULL,
  `album_masonry_thumb_border_style` varchar(8) NOT NULL,
  `album_masonry_thumb_border_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_transparent` int(4) NOT NULL,
  `album_masonry_thumb_box_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_transparent` int(4) NOT NULL,
  `album_masonry_thumb_align` varchar(8) NOT NULL,
  `album_masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `album_masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_masonry_thumb_transition` tinyint(1) NOT NULL,
  `carousel_cont_bg_color` varchar(8) NOT NULL,
  `carousel_cont_btn_transparent` int(4) NOT NULL,
  `carousel_close_btn_transparent` int(4) NOT NULL,
  `carousel_rl_btn_bg_color` varchar(8) NOT NULL,
  `carousel_rl_btn_border_radius` varchar(32) NOT NULL,
  `carousel_rl_btn_border_width` int(4) NOT NULL,
  `carousel_rl_btn_border_style` varchar(8) NOT NULL,
  `carousel_rl_btn_border_color` varchar(8) NOT NULL,
  `carousel_rl_btn_color` varchar(8) NOT NULL,
  `carousel_rl_btn_height` int(4) NOT NULL,
  `carousel_rl_btn_size` int(4) NOT NULL,
  `carousel_play_pause_btn_size` int(4) NOT NULL,
  `carousel_rl_btn_width` int(4) NOT NULL,
  `carousel_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `carousel_rl_btn_style` varchar(16) NOT NULL,
  `carousel_mergin_bottom` varchar(8) NOT NULL,
  `carousel_font_family` varchar(8) NOT NULL,
  `carousel_feature_border_width` int(4) NOT NULL,
  `carousel_feature_border_style` varchar(8) NOT NULL,
  `carousel_feature_border_color` varchar(8) NOT NULL,
  `carousel_caption_background_color` varchar(8) NOT NULL,
  `carousel_caption_bottom` int(4) NOT NULL,
  `carousel_caption_p_mergin` int(4) NOT NULL,
  `carousel_caption_p_pedding` int(4) NOT NULL,
  `carousel_caption_p_font_weight` varchar(8) NOT NULL,
  `carousel_caption_p_font_size` int(4) NOT NULL,
  `carousel_caption_p_color` varchar(8) NOT NULL,
  `carousel_title_opacity` int(4) NOT NULL,
  `carousel_title_border_radius` varchar(8) NOT NULL,
  `default_theme` tinyint(1) NOT NULL,
  `mosaic_thumb_transition` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `thumb_margin`, `thumb_padding`, `thumb_border_radius`, `thumb_border_width`, `thumb_border_style`, `thumb_border_color`, `thumb_bg_color`, `thumbs_bg_color`, `thumb_bg_transparent`, `thumb_box_shadow`, `thumb_transparent`, `thumb_align`, `thumb_hover_effect`, `thumb_hover_effect_value`, `thumb_transition`, `thumb_title_font_color`, `thumb_title_font_style`, `thumb_title_pos`, `thumb_title_font_size`, `thumb_title_font_weight`, `thumb_title_margin`, `thumb_title_shadow`, `page_nav_position`, `page_nav_align`, `page_nav_number`, `page_nav_font_size`, `page_nav_font_style`, `page_nav_font_color`, `page_nav_font_weight`, `page_nav_border_width`, `page_nav_border_style`, `page_nav_border_color`, `page_nav_border_radius`, `page_nav_margin`, `page_nav_padding`, `page_nav_button_bg_color`, `page_nav_button_bg_transparent`, `page_nav_box_shadow`, `page_nav_button_transition`, `page_nav_button_text`, `lightbox_overlay_bg_color`, `lightbox_overlay_bg_transparent`, `lightbox_bg_color`, `lightbox_ctrl_btn_pos`, `lightbox_ctrl_btn_align`, `lightbox_ctrl_btn_height`, `lightbox_ctrl_btn_margin_top`, `lightbox_ctrl_btn_margin_left`, `lightbox_ctrl_btn_transparent`, `lightbox_ctrl_btn_color`, `lightbox_toggle_btn_height`, `lightbox_toggle_btn_width`, `lightbox_ctrl_cont_bg_color`, `lightbox_ctrl_cont_transparent`, `lightbox_ctrl_cont_border_radius`, `lightbox_close_btn_transparent`, `lightbox_close_btn_bg_color`, `lightbox_close_btn_border_width`, `lightbox_close_btn_border_radius`, `lightbox_close_btn_border_style`, `lightbox_close_btn_border_color`, `lightbox_close_btn_box_shadow`, `lightbox_close_btn_color`, `lightbox_close_btn_size`, `lightbox_close_btn_width`, `lightbox_close_btn_height`, `lightbox_close_btn_top`, `lightbox_close_btn_right`, `lightbox_close_btn_full_color`, `lightbox_rl_btn_bg_color`, `lightbox_rl_btn_transparent`, `lightbox_rl_btn_border_radius`, `lightbox_rl_btn_border_width`, `lightbox_rl_btn_border_style`, `lightbox_rl_btn_border_color`, `lightbox_rl_btn_box_shadow`, `lightbox_rl_btn_color`, `lightbox_rl_btn_height`, `lightbox_rl_btn_width`, `lightbox_rl_btn_size`, `lightbox_close_rl_btn_hover_color`, `lightbox_comment_pos`, `lightbox_comment_width`, `lightbox_comment_bg_color`, `lightbox_comment_font_color`, `lightbox_comment_font_style`, `lightbox_comment_font_size`, `lightbox_comment_button_bg_color`, `lightbox_comment_button_border_color`, `lightbox_comment_button_border_width`, `lightbox_comment_button_border_style`, `lightbox_comment_button_border_radius`, `lightbox_comment_button_padding`, `lightbox_comment_input_bg_color`, `lightbox_comment_input_border_color`, `lightbox_comment_input_border_width`, `lightbox_comment_input_border_style`, `lightbox_comment_input_border_radius`, `lightbox_comment_input_padding`, `lightbox_comment_separator_width`, `lightbox_comment_separator_style`, `lightbox_comment_separator_color`, `lightbox_comment_author_font_size`, `lightbox_comment_date_font_size`, `lightbox_comment_body_font_size`, `lightbox_comment_share_button_color`, `lightbox_filmstrip_pos`, `lightbox_filmstrip_rl_bg_color`, `lightbox_filmstrip_rl_btn_size`, `lightbox_filmstrip_rl_btn_color`, `lightbox_filmstrip_thumb_margin`, `lightbox_filmstrip_thumb_border_width`, `lightbox_filmstrip_thumb_border_style`, `lightbox_filmstrip_thumb_border_color`, `lightbox_filmstrip_thumb_border_radius`, `lightbox_filmstrip_thumb_deactive_transparent`, `lightbox_filmstrip_thumb_active_border_width`, `lightbox_filmstrip_thumb_active_border_color`, `lightbox_rl_btn_style`, `album_compact_back_font_color`, `album_compact_back_font_style`, `album_compact_back_font_size`, `album_compact_back_font_weight`, `album_compact_back_padding`, `album_compact_title_font_color`, `album_compact_title_font_style`, `album_compact_thumb_title_pos`, `album_compact_title_font_size`, `album_compact_title_font_weight`, `album_compact_title_margin`, `album_compact_title_shadow`, `album_compact_thumb_margin`, `album_compact_thumb_padding`, `album_compact_thumb_border_radius`, `album_compact_thumb_border_width`, `album_compact_thumb_border_style`, `album_compact_thumb_border_color`, `album_compact_thumb_bg_color`, `album_compact_thumbs_bg_color`, `album_compact_thumb_bg_transparent`, `album_compact_thumb_box_shadow`, `album_compact_thumb_transparent`, `album_compact_thumb_align`, `album_compact_thumb_hover_effect`, `album_compact_thumb_hover_effect_value`, `album_compact_thumb_transition`, `album_extended_thumb_margin`, `album_extended_thumb_padding`, `album_extended_thumb_border_radius`, `album_extended_thumb_border_width`, `album_extended_thumb_border_style`, `album_extended_thumb_border_color`, `album_extended_thumb_bg_color`, `album_extended_thumbs_bg_color`, `album_extended_thumb_bg_transparent`, `album_extended_thumb_box_shadow`, `album_extended_thumb_transparent`, `album_extended_thumb_align`, `album_extended_thumb_hover_effect`, `album_extended_thumb_hover_effect_value`, `album_extended_thumb_transition`, `album_extended_back_font_color`, `album_extended_back_font_style`, `album_extended_back_font_size`, `album_extended_back_font_weight`, `album_extended_back_padding`, `album_extended_div_bg_color`, `album_extended_div_bg_transparent`, `album_extended_div_border_radius`, `album_extended_div_margin`, `album_extended_div_padding`, `album_extended_div_separator_width`, `album_extended_div_separator_style`, `album_extended_div_separator_color`, `album_extended_thumb_div_bg_color`, `album_extended_thumb_div_border_radius`, `album_extended_thumb_div_border_width`, `album_extended_thumb_div_border_style`, `album_extended_thumb_div_border_color`, `album_extended_thumb_div_padding`, `album_extended_text_div_bg_color`, `album_extended_text_div_border_radius`, `album_extended_text_div_border_width`, `album_extended_text_div_border_style`, `album_extended_text_div_border_color`, `album_extended_text_div_padding`, `album_extended_title_span_border_width`, `album_extended_title_span_border_style`, `album_extended_title_span_border_color`, `album_extended_title_font_color`, `album_extended_title_font_style`, `album_extended_title_font_size`, `album_extended_title_font_weight`, `album_extended_title_margin_bottom`, `album_extended_title_padding`, `album_extended_desc_span_border_width`, `album_extended_desc_span_border_style`, `album_extended_desc_span_border_color`, `album_extended_desc_font_color`, `album_extended_desc_font_style`, `album_extended_desc_font_size`, `album_extended_desc_font_weight`, `album_extended_desc_padding`, `album_extended_desc_more_color`, `album_extended_desc_more_size`, `masonry_thumb_padding`, `masonry_thumb_border_radius`, `masonry_thumb_border_width`, `masonry_thumb_border_style`, `masonry_thumb_border_color`, `masonry_thumbs_bg_color`, `masonry_thumb_bg_transparent`, `masonry_thumb_transparent`, `masonry_thumb_align`, `masonry_thumb_hover_effect`, `masonry_thumb_hover_effect_value`, `masonry_thumb_transition`, `mosaic_thumb_padding`, `mosaic_thumb_border_radius`, `mosaic_thumb_border_width`, `mosaic_thumb_border_style`, `mosaic_thumb_border_color`, `mosaic_thumbs_bg_color`, `mosaic_thumb_bg_transparent`, `mosaic_thumb_transparent`, `mosaic_thumb_align`, `mosaic_thumb_hover_effect`, `mosaic_thumb_hover_effect_value`, `mosaic_thumb_title_font_color`, `mosaic_thumb_title_font_style`, `mosaic_thumb_title_font_size`, `mosaic_thumb_title_font_weight`, `mosaic_thumb_title_margin`, `mosaic_thumb_title_shadow`, `slideshow_cont_bg_color`, `slideshow_close_btn_transparent`, `slideshow_rl_btn_bg_color`, `slideshow_rl_btn_border_radius`, `slideshow_rl_btn_border_width`, `slideshow_rl_btn_border_style`, `slideshow_rl_btn_border_color`, `slideshow_rl_btn_box_shadow`, `slideshow_rl_btn_color`, `slideshow_rl_btn_height`, `slideshow_rl_btn_size`, `slideshow_rl_btn_width`, `slideshow_close_rl_btn_hover_color`, `slideshow_filmstrip_pos`, `slideshow_filmstrip_thumb_border_width`, `slideshow_filmstrip_thumb_border_style`, `slideshow_filmstrip_thumb_border_color`, `slideshow_filmstrip_thumb_border_radius`, `slideshow_filmstrip_thumb_margin`, `slideshow_filmstrip_thumb_active_border_width`, `slideshow_filmstrip_thumb_active_border_color`, `slideshow_filmstrip_thumb_deactive_transparent`, `slideshow_filmstrip_rl_bg_color`, `slideshow_filmstrip_rl_btn_color`, `slideshow_filmstrip_rl_btn_size`, `slideshow_title_font_size`, `slideshow_title_font`, `slideshow_title_color`, `slideshow_title_opacity`, `slideshow_title_border_radius`, `slideshow_title_background_color`, `slideshow_title_padding`, `slideshow_description_font_size`, `slideshow_description_font`, `slideshow_description_color`, `slideshow_description_opacity`, `slideshow_description_border_radius`, `slideshow_description_background_color`, `slideshow_description_padding`, `slideshow_dots_width`, `slideshow_dots_height`, `slideshow_dots_border_radius`, `slideshow_dots_background_color`, `slideshow_dots_margin`, `slideshow_dots_active_background_color`, `slideshow_dots_active_border_width`, `slideshow_dots_active_border_color`, `slideshow_play_pause_btn_size`, `slideshow_rl_btn_style`, `blog_style_margin`, `blog_style_padding`, `blog_style_border_radius`, `blog_style_border_width`, `blog_style_border_style`, `blog_style_border_color`, `blog_style_bg_color`, `blog_style_box_shadow`, `blog_style_transparent`, `blog_style_align`, `blog_style_share_buttons_bg_color`, `blog_style_share_buttons_margin`, `blog_style_share_buttons_border_radius`, `blog_style_share_buttons_border_width`, `blog_style_share_buttons_border_style`, `blog_style_share_buttons_border_color`, `blog_style_share_buttons_align`, `blog_style_img_font_size`, `blog_style_img_font_family`, `blog_style_img_font_color`, `blog_style_share_buttons_color`, `blog_style_share_buttons_bg_transparent`, `blog_style_share_buttons_font_size`, `image_browser_margin`, `image_browser_padding`, `image_browser_border_radius`, `image_browser_border_width`, `image_browser_border_style`, `image_browser_border_color`, `image_browser_bg_color`, `image_browser_box_shadow`, `image_browser_transparent`, `image_browser_align`, `image_browser_image_description_margin`, `image_browser_image_description_padding`, `image_browser_image_description_border_radius`, `image_browser_image_description_border_width`, `image_browser_image_description_border_style`, `image_browser_image_description_border_color`, `image_browser_image_description_bg_color`, `image_browser_image_description_align`, `image_browser_img_font_size`, `image_browser_img_font_family`, `image_browser_img_font_color`, `image_browser_full_padding`, `image_browser_full_border_radius`, `image_browser_full_border_width`, `image_browser_full_border_style`, `image_browser_full_border_color`, `image_browser_full_bg_color`, `image_browser_full_transparent`, `lightbox_info_pos`, `lightbox_info_align`, `lightbox_info_bg_color`, `lightbox_info_bg_transparent`, `lightbox_info_border_width`, `lightbox_info_border_style`, `lightbox_info_border_color`, `lightbox_info_border_radius`, `lightbox_info_padding`, `lightbox_info_margin`, `lightbox_title_color`, `lightbox_title_font_style`, `lightbox_title_font_weight`, `lightbox_title_font_size`, `lightbox_description_color`, `lightbox_description_font_style`, `lightbox_description_font_weight`, `lightbox_description_font_size`, `lightbox_rate_pos`, `lightbox_rate_align`, `lightbox_rate_icon`, `lightbox_rate_color`, `lightbox_rate_size`, `lightbox_rate_stars_count`, `lightbox_rate_padding`, `lightbox_rate_hover_color`, `lightbox_hit_pos`, `lightbox_hit_align`, `lightbox_hit_bg_color`, `lightbox_hit_bg_transparent`, `lightbox_hit_border_width`, `lightbox_hit_border_style`, `lightbox_hit_border_color`, `lightbox_hit_border_radius`, `lightbox_hit_padding`, `lightbox_hit_margin`, `lightbox_hit_color`, `lightbox_hit_font_style`, `lightbox_hit_font_weight`, `lightbox_hit_font_size`, `masonry_description_font_size`, `masonry_description_color`, `masonry_description_font_style`, `album_masonry_back_font_color`, `album_masonry_back_font_style`, `album_masonry_back_font_size`, `album_masonry_back_font_weight`, `album_masonry_back_padding`, `album_masonry_title_font_color`, `album_masonry_title_font_style`, `album_masonry_thumb_title_pos`, `album_masonry_title_font_size`, `album_masonry_title_font_weight`, `album_masonry_title_margin`, `album_masonry_title_shadow`, `album_masonry_thumb_margin`, `album_masonry_thumb_padding`, `album_masonry_thumb_border_radius`, `album_masonry_thumb_border_width`, `album_masonry_thumb_border_style`, `album_masonry_thumb_border_color`, `album_masonry_thumb_bg_color`, `album_masonry_thumbs_bg_color`, `album_masonry_thumb_bg_transparent`, `album_masonry_thumb_box_shadow`, `album_masonry_thumb_transparent`, `album_masonry_thumb_align`, `album_masonry_thumb_hover_effect`, `album_masonry_thumb_hover_effect_value`, `album_masonry_thumb_transition`, `carousel_cont_bg_color`, `carousel_cont_btn_transparent`, `carousel_close_btn_transparent`, `carousel_rl_btn_bg_color`, `carousel_rl_btn_border_radius`, `carousel_rl_btn_border_width`, `carousel_rl_btn_border_style`, `carousel_rl_btn_border_color`, `carousel_rl_btn_color`, `carousel_rl_btn_height`, `carousel_rl_btn_size`, `carousel_play_pause_btn_size`, `carousel_rl_btn_width`, `carousel_close_rl_btn_hover_color`, `carousel_rl_btn_style`, `carousel_mergin_bottom`, `carousel_font_family`, `carousel_feature_border_width`, `carousel_feature_border_style`, `carousel_feature_border_color`, `carousel_caption_background_color`, `carousel_caption_bottom`, `carousel_caption_p_mergin`, `carousel_caption_p_pedding`, `carousel_caption_p_font_weight`, `carousel_caption_p_font_size`, `carousel_caption_p_color`, `carousel_title_opacity`, `carousel_title_border_radius`, `default_theme`, `mosaic_thumb_transition`) VALUES
(1, 'Theme 1', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'solid', 'E3E3E3', '0', '0', '3px 6px', 'FFFFFF', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 100, 'FFFFFF', 14, 100, '000000', 65, 4, 100, '000000', 2, '16px', 'none', 'FFFFFF', '0', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'CCCCCC', 'left', 400, '000000', 'CCCCCC', 'segoe ui', 12, '616161', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '2px', 1, 'solid', '383838', 14, 10, 12, 'CCCCCC', 'top', '3B3B3B', 20, 'FFFFFF', '0 1px', 1, 'solid', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, 2, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '', 100, 'left', 'scale', '1.1', 0, '000000', 'segoe ui', 20, 'bold', '0', 'FFFFFF', 0, '0 0 0 0', '0 0 5px 0', 10, 1, 'solid', 'E0E0E0', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'F2D22E', 12, 4, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 0, 100, 'center', 'scale', '1.1', 0, 4, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 0, 100, 'center', 'scale', '1.1', 'CCCCCC', 'segoe ui', 16, 'bold', '2px', '0px 0px 0px #888888', '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '0px 0px 0px #000000', 'FFFFFF', 40, 20, 40, 'CCCCCC', 'top', 1, 'solid', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '3B3B3B', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '0 0 0 0', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 12, 12, '5px', 'F2D22E', 3, 'FFFFFF', 1, '000000', 60, 'fa-chevron', '2px', '0', '0', 1, 'solid', 'F5F5F5', 'FFFFFF', '', 80, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'B3AFAF', 0, 20, '2px auto', '4px', '0', 1, 'none', 'F5F5F5', 'EBEBEB', '', 80, 'center', '0px 5px 0px 5px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'EBEBEB', 'center', 15, 'segoe ui', '000000', '4px', '0', 2, 'none', 'F7F7F7', 'F5F5F5', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 12, 'CCCCCC', 'segoe ui', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, '000000', 0, 100, '000000', '20px', 0, 'none', 'FFFFFF', 'FFFFFF', 40, 20, 20, 40, 'CCCCCC', 'fa-chevron', '0.5', 'Arial', 2, 'solid', '5D204F', '000000', 0, 0, 5, 'bold', 14, 'white', 100, '5px', 1, 1),
(2, 'Theme 2', 4, 4, '0', 5, 'none', 'FFFFFF', 'E8E8E8', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'rotate', '2deg', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'none', 'E3E3E3', '0', '0', '3px 6px', 'FCFCFC', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 80, 'FFFFFF', 14, 100, '000000', 80, 4, 95, '000000', 0, '16px', 'none', 'FFFFFF', '', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 2, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'FFFFFF', 'left', 400, '000000', 'CCCCCC', 'arial', 12, '333333', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '3px', 1, 'solid', '2B2B2B', 14, 10, 12, 'FFFFFF', 'top', '2B2B2B', 20, 'FFFFFF', '0 1px', 1, 'none', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, 2, 4, '0', 4, 'none', 'E8E8E8', 'E8E8E8', 'FFFFFF', 100, '', 100, 'left', 'rotate', '2deg', 0, '000000', 'segoe ui', 16, 'bold', '0', 'FFFFFF', 0, '0', '0 0 5px 0', 10, 1, 'none', 'CCCCCC', 'FFFFFF', '0', 0, 'none', 'CCCCCC', '0', 'FFFFFF', '0', 1, 'none', 'CCCCCC', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'FFC933', 12, 4, '2px', 1, 'none', 'CCCCCC', 'FFFFFF', 0, 80, 'center', 'rotate', '2deg', 0, 4, '2px', 1, 'none', 'CCCCCC', 'FFFFFF', 0, 80, 'center', 'rotate', '2deg', 'CCCCCC', 'segoe ui', 16, 'bold', '2px', '0px 0px 0px #888888', '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 20, 40, 'DBDBDB', 'bottom', 1, 'none', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '303030', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '5px 10px 5px 10px', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 10, 10, '10px', '292929', 1, '292929', 2, 'FFC933', 60, 'fa-chevron', '2px', '4px', '0', 1, 'none', 'CCCCCC', 'E8E8E8', '', 70, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'A1A1A1', 0, 20, '2px auto', '4px', '2px', 1, 'none', 'E8E8E8', 'E8E8E8', '', 80, 'center', '24px 0px 0px 0px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'E8E8E8', 'center', 14, 'segoe ui', '000000', '4px', '0', 1, 'solid', 'EDEDED', 'FFFFFF', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 12, 'CCCCCC', 'segoe ui', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, '000000', 0, 100, '000000', '20px', 0, 'none', 'FFFFFF', 'FFFFFF', 40, 20, 20, 40, 'CCCCCC', 'fa-chevron', '0.5', 'Arial', 2, 'solid', '5D204F', '000000', 0, 0, 5, 'bold', 14, 'white', 100, '5px', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'wpdiscuz_votes', '1'),
(2, 21, 'wpdiscuz_votes', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr WordPress', '', 'https://wordpress.org/', '', '2015-08-06 18:51:28', '2015-08-06 18:51:28', 'Hola, esto es un comentario.\nPara borrar un comentario simplemente accede y revisa los comentarios de la entrada. Ahí tendrás la opción de editarlo o borrarlo.', 0, 'post-trashed', '', '', 0, 0),
(2, 175, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:03:51', '2015-08-24 18:03:51', 'Hola', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(3, 194, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:04:24', '2015-08-24 18:04:24', 'Hola como estas', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(4, 179, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:09:00', '2015-08-24 18:09:00', 'Excelente Restaurant 100% recomendado', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(5, 176, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:34:56', '2015-08-24 18:34:56', 'Excelente Restaurant!!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(6, 176, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:35:12', '2015-08-24 18:35:12', 'Si es el mejor', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(7, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:43:45', '2015-08-24 18:43:45', 'Hola\n', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(8, 196, 'Juan', 'asdasd@gasdad.com', '', '::1', '2015-08-24 18:44:26', '2015-08-24 18:44:26', 'EXCELENTE TODO', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 0),
(9, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:20', '2015-08-24 18:45:20', 'asd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(10, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:22', '2015-08-24 18:45:22', 'asdasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(11, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:26', '2015-08-24 18:45:26', 'fsdfsdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(12, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:28', '2015-08-24 18:45:28', 'asdasdasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(13, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:32', '2015-08-24 18:45:32', 'faasdasdasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(14, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:35', '2015-08-24 18:45:35', 'afsasdasdasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(15, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:43', '2015-08-24 18:45:43', 'asdasdasdfdfdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(16, 196, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:45:46', '2015-08-24 18:45:46', 'asdasdasvxvzxv', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(17, 175, 'Juan', 'anonymous_4a30eaa90627375a2ccfa33e271e0626@example.com', '', '::1', '2015-08-24 18:47:50', '2015-08-24 18:47:50', 'Probando', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 0),
(18, 175, 'JUan', 'anonymous_e877b243190f7675382f761f5a538755@example.com', '', '::1', '2015-08-24 18:49:24', '2015-08-24 18:49:24', 'Estas loco Vladimir', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 2, 0),
(19, 175, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 18:51:10', '2015-08-24 18:51:10', 'Excelente man', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 17, 1),
(20, 175, 'asd', 'anonymous_a8e24fea7aa66cb5911f93aa512eab29@example.com', '', '::1', '2015-08-24 18:55:57', '2015-08-24 18:55:57', 'asdasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 0),
(21, 175, 'Galicia', 'anonymous_ea00929e985067ed1552aa31a4c81b72@example.com', '', '::1', '2015-08-24 18:57:42', '2015-08-24 18:57:42', 'Quien eres ty', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 0),
(22, 201, 'Chequeate', 'leonardogalicia18@gmail.com', '', '::1', '2015-08-24 20:06:14', '2015-08-24 20:06:14', 'PRIMER COMENTARIo', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 1),
(23, 184, 'asdasdasd', 'anonymous_42e72a7a8a521589a4a232bb344bc7ef@example.com', '', '::1', '2015-08-24 20:29:51', '2015-08-24 20:29:51', 'gdgdfgfdgd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=807 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'leonardogalicia18@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:2;s:19:"jetpack/jetpack.php";i:3;s:31:"photo-gallery/photo-gallery.php";i:4;s:42:"wordpress-social-login/wp-social-login.php";i:5;s:15:"wpdiscuz/wc.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'chequear', 'yes'),
(42, 'stylesheet', 'chequear', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'identicon', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'es_ES', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:6:{i:1440455031;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1440485489;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440488280;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440528702;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1440528889;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, '_transient_random_seed', '4e3b959d7aae72db627eadda7744be0d', 'yes'),
(116, 'can_compress_scripts', '1', 'yes'),
(117, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(124, 'current_theme', '', 'yes'),
(125, 'theme_mods_chequear', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:6;}}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(127, 'recently_activated', 'a:0:{}', 'yes'),
(130, 'acf_version', '4.4.2', 'yes'),
(131, 'cptui_post_types', 'a:7:{s:12:"restaurantes";a:23:{s:4:"name";s:12:"restaurantes";s:5:"label";s:12:"restaurantes";s:14:"singular_label";s:12:"restaurantes";s:11:"description";s:50:"Los Mejores Restaurantes Solo Aquí En ¡Chequea!.";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:6:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:13:"custom-fields";i:3;s:8:"comments";i:4;s:9:"thumbnail";i:5;s:15:"page-attributes";}s:10:"taxonomies";a:3:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:7:"bwg_tag";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:17:"hoteles y posadas";a:23:{s:4:"name";s:17:"hoteles y posadas";s:5:"label";s:17:"Hoteles y Posadas";s:14:"singular_label";s:17:"Hoteles y Posadas";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:19:"centros comerciales";a:23:{s:4:"name";s:19:"centros comerciales";s:5:"label";s:19:"Centros Comerciales";s:14:"singular_label";s:19:"Centros Comerciales";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:1:{i:0;s:8:"category";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:9:"farmacias";a:23:{s:4:"name";s:9:"farmacias";s:5:"label";s:9:"Farmacias";s:14:"singular_label";s:9:"Farmacias";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:1:{i:0;s:5:"title";}s:10:"taxonomies";a:1:{i:0;s:8:"category";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:15:"hotelesyposadas";a:23:{s:4:"name";s:15:"hotelesyposadas";s:5:"label";s:17:"Hoteles y Posadas";s:14:"singular_label";s:17:"Hoteles y Posadas";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:18:"centroscomerciales";a:23:{s:4:"name";s:18:"centroscomerciales";s:5:"label";s:19:"Centros Comerciales";s:14:"singular_label";s:19:"Centros Comerciales";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:1:{i:0;s:8:"category";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:16:"localesnocturnos";a:23:{s:4:"name";s:16:"localesnocturnos";s:5:"label";s:17:"Locales Nocturnos";s:14:"singular_label";s:17:"Locales Nocturnos";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:1:{i:0;s:8:"category";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(140, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(150, '_site_transient_timeout_browser_909560e93cdca5be38f19205f346d485', '1439572440', 'yes'),
(151, '_site_transient_browser_909560e93cdca5be38f19205f346d485', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.130";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(215, 'cptui_taxonomies', 'a:2:{s:6:"estado";a:14:{s:4:"name";s:6:"estado";s:5:"label";s:6:"Estado";s:14:"singular_label";s:6:"Estado";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:6:"labels";a:15:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";}s:12:"object_types";a:6:{i:0;s:4:"page";i:1;s:12:"restaurantes";i:2;s:15:"hotelesyposadas";i:3;s:18:"centroscomerciales";i:4;s:9:"farmacias";i:5;s:16:"localesnocturnos";}}s:8:"ciudades";a:14:{s:4:"name";s:8:"ciudades";s:5:"label";s:8:"ciudades";s:14:"singular_label";s:8:"ciudades";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:6:"labels";a:15:{s:9:"menu_name";s:8:"Ciudades";s:9:"all_items";s:18:"Todas las ciudades";s:9:"edit_item";s:13:"Editar ciudad";s:9:"view_item";s:10:"Ver ciudad";s:11:"update_item";s:17:"Actualizar Ciudad";s:12:"add_new_item";s:20:"Agregar nueva Ciudad";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";}s:12:"object_types";a:1:{i:0;s:16:"localesnocturnos";}}}', 'yes'),
(278, 'discotecas_children', 'a:0:{}', 'yes'),
(279, 'ciudades_children', 'a:0:{}', 'yes'),
(369, '_transient_twentyfifteen_categories', '2', 'yes'),
(373, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1439353826;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(376, '_transient_twentyfourteen_category_count', '17', 'yes'),
(379, '_site_transient_timeout_wporg_theme_feature_list', '1439365312', 'yes'),
(380, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(382, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1439354597;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(383, 'theme_mods_tavisha', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1439354708;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(407, '_site_transient_timeout_browser_d222b6a854d35c9c9584e695b623c468', '1440524477', 'yes'),
(408, '_site_transient_browser_d222b6a854d35c9c9584e695b623c468', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.155";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(564, 'estado_children', 'a:4:{i:12;a:2:{i:0;i:42;i:1;i:44;}i:25;a:1:{i:0;i:45;}i:47;a:1:{i:0;i:67;}i:49;a:1:{i:0;i:69;}}', 'yes'),
(577, '_site_transient_timeout_browser_229c156fb8caef6704dc9bd068964647', '1440822045', 'yes'),
(578, '_site_transient_browser_229c156fb8caef6704dc9bd068964647', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.157";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(644, 'category_children', 'a:3:{i:14;a:12:{i:0;i:16;i:1;i:22;i:2;i:23;i:3;i:24;i:4;i:28;i:5;i:29;i:6;i:30;i:7;i:31;i:8;i:32;i:9;i:34;i:10;i:41;i:11;i:75;}i:35;a:5:{i:0;i:36;i:1;i:37;i:2;i:38;i:3;i:39;i:4;i:40;}i:72;a:2:{i:0;i:73;i:1;i:74;}}', 'yes'),
(675, '_transient_timeout_plugin_slugs', '1440534233', 'no'),
(676, '_transient_plugin_slugs', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:9:"hello.php";i:4;s:19:"jetpack/jetpack.php";i:5;s:31:"photo-gallery/photo-gallery.php";i:6;s:42:"wordpress-social-login/wp-social-login.php";i:7;s:15:"wpdiscuz/wc.php";}', 'no'),
(697, 'wd_bwg_version', '1.2.53', 'no'),
(698, 'wd_bwg_theme_version', '1.0.0', 'no'),
(702, '_site_transient_timeout_available_translations', '1440450105', 'yes'),
(703, '_site_transient_available_translations', 'a:59:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-28 10:19:19";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-16 13:32:19";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-09 05:25:37";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-08 11:08:34";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-29 07:26:05";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-28 16:26:14";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 10:52:32";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-24 12:08:43";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 11:12:13";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-04 18:19:10";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-10 14:16:27";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.7/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 11:07:42";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-07 17:26:35";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-23 11:42:14";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-14 05:23:17";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-04 17:21:56";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-27 01:39:56";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-02 17:06:22";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 12:07:26";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-29 10:11:53";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-01 08:03:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2.4/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-15 10:19:18";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.7/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-22 10:25:51";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 11:05:21";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-26 00:43:12";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-30 17:27:24";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-03 18:34:59";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-06 10:10:09";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-24 13:30:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-11 11:08:44";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-13 13:38:55";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(704, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1440483167', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(705, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Aug 2015 13:10:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:39:"http://wordpress.org/?v=4.4-alpha-33717";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.3 “Billie”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2015/08/billie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/08/billie/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Aug 2015 19:12:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3845";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:352:"Version 4.3 of WordPress, named &#8220;Billie&#8221; in honor of jazz singer Billie Holiday, is available for download or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site. Menus in the Customizer Create your menu, update it, and assign it, all while live-previewing in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:21786:"<p style="margin: 0;height: 0"><img src="https://wordpress.org/news/files/2015/08/WordPress-4-3-billie-1024x574.png" alt="WordPress 4.3 - &quot;Billie&quot;" width="692" height="388" class="alignnone size-large wp-image-3896" style="height:0px;width: 0px;margin: 0" /></p>\n<p>Version 4.3 of WordPress, named &#8220;Billie&#8221; in honor of jazz singer <a href="https://en.wikipedia.org/wiki/Billie_Holiday">Billie Holiday</a>, is available for <a href="https://wordpress.org/download/">download</a> or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site.</p>\n<p><iframe width=''692'' height=''389'' src=''https://videopress.com/embed/T54Iy7Tw?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<hr />\n<h2>Menus in the Customizer</h2>\n<div><img src="//s.w.org/images/core/4.3/menu-customizer.png" alt="" /></div>\n<p>Create your menu, update it, and assign it, all while live-previewing in the customizer. The streamlined customizer design provides a mobile-friendly and accessible interface. With every release, it becomes easier and faster to make your site just the way you want it.</p>\n<hr />\n<h2>Formatting Shortcuts</h2>\n<div style="margin-bottom: 0"><div style="width: 640px; " class="wp-video"><!--[if lt IE 9]><script>document.createElement(''video'');</script><![endif]-->\n<video class="wp-video-shortcode" id="video-3845-1" width="640" height="360" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="//s.w.org/images/core/4.3/formatting.mp4?_=1" /><source type="video/webm" src="//s.w.org/images/core/4.3/formatting.webm?_=1" /><source type="video/ogg" src="//s.w.org/images/core/4.3/formatting.ogv?_=1" /><a href="//s.w.org/images/core/4.3/formatting.mp4">//s.w.org/images/core/4.3/formatting.mp4</a></video></div></div>\n<p>Your writing flow just got faster with new formatting shortcuts in WordPress 4.3. Use asterisks to create lists and number signs to make a heading. No more breaking your flow; your text looks great with a <code>*</code> and a <code>#</code>.</p>\n<hr />\n<h2>Site Icons</h2>\n<p><img src="//s.w.org/images/core/4.3/site-icon-customizer.png" alt="" /><br />\n&nbsp;<br />\nSite icons represent your site in browser tabs, bookmark menus, and on the home screen of mobile devices. Add your unique site icon in the customizer; it will even stay in place when you switch themes. Make your whole site reflect your brand.</p>\n<hr />\n<h2>Better Passwords</h2>\n<p><img src="//s.w.org/images/core/4.3/better-passwords.png" alt="" /><br />\n&nbsp;<br />\nKeep your site more secure with WordPress’ improved approach to passwords. Instead of receiving passwords via email, you’ll get a password reset link. When you add new users to your site or edit a user profile, WordPress will automatically generate a secure password.</p>\n<hr />\n<h2>Other improvements</h2>\n<ul>\n<li><strong>A smoother admin experience</strong> &#8211; Refinements to the list view across the admin make your WordPress more accessible and easier to work with on any device.</li>\n<li><strong>Comments turned off on pages</strong> &#8211; All new pages that you create will have comments turned off. Keep discussions to your blog, right where they’re supposed to happen.</li>\n<li><strong>Customize your site quickly</strong> &#8211; Wherever you are on the front-end, you can click the customize link in the toolbar to swiftly make changes to your site.</li>\n</ul>\n<hr />\n<h2>The Team</h2>\n<p><a class="alignleft" href="https://profiles.wordpress.org/obenland"><img src="https://www.gravatar.com/avatar/2370ea5912750f4cb0f3c51ae1cbca55?d=mm&amp;s=180&amp;r=G" alt="Konstantin Obenland" width="80" height="80" /></a>This release was led by <a href="http://konstantin.obenland.it/">Konstantin Obenland</a>, with the help of these fine individuals. There are 246 contributors with props in this release. Pull up some Billie Holiday on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/mercime">@mercime</a>, <a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamkheckler">Adam Heckler</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bjorklund</a>, <a href="https://profiles.wordpress.org/akirk">Alex Kirk</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/tellyworth">Alex Shiels</a>, <a href="https://profiles.wordpress.org/deconf">Alin Marcu</a>, <a href="https://profiles.wordpress.org/andfinally">andfinally</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/antpb">Anthony Burchell</a>, <a href="https://profiles.wordpress.org/anubisthejackle">anubisthejackle</a>, <a href="https://profiles.wordpress.org/aramzs">Aram Zucker-Scharff</a>, <a href="https://profiles.wordpress.org/arjunskumar">Arjun S Kumar</a>, <a href="https://profiles.wordpress.org/avnarun">avnarun</a>, <a href="https://profiles.wordpress.org/brad2dabone">Bad Feather</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/binarykitten">BinaryKitten</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornjohansen">Bjorn Johansen</a>, <a href="https://profiles.wordpress.org/bolo1988">bolo1988</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/bramd">Bram Duvigneau</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/brianlayman">Brian Layman</a>, <a href="https://profiles.wordpress.org/icaleb">Caleb Burks</a>, <a href="https://profiles.wordpress.org/calevans">CalEvans</a>, <a href="https://profiles.wordpress.org/chasewiseman">Chase Wiseman</a>, <a href="https://profiles.wordpress.org/chipbennett">Chip Bennett</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/posykrat">Clement Biron</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Mte90 Scasciafratte</a>, <a href="https://profiles.wordpress.org/daniluk4000">daniluk4000</a>, <a href="https://profiles.wordpress.org/dmchale">Dave McHale</a>, <a href="https://profiles.wordpress.org/daveal">DaveAl</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/daxelrod">daxelrod</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipesh.kakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/kucrut">Dzikri Aziz</a>, <a href="https://profiles.wordpress.org/eclev91">eclev91</a>, <a href="https://profiles.wordpress.org/eligijus">eligijus</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ebinnion">Eric Binnion</a>, <a href="https://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/francoeurdavid">francoeurdavid</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/gabrielperezs">gabrielperezs</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/glennm">glennm</a>, <a href="https://profiles.wordpress.org/gtuk">gtuk</a>, <a href="https://profiles.wordpress.org/hailin">hailin</a>, <a href="https://profiles.wordpress.org/hauvong">hauvong</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrikakselsen">henrikakselsen</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hrishiv90">Hrishikesh Vaipurkar</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/isaacchapman">isaacchapman</a>, <a href="https://profiles.wordpress.org/izem">izem</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jacklenox">Jack Lenox</a>, <a href="https://profiles.wordpress.org/jadpm">jadpm</a>, <a href="https://profiles.wordpress.org/jamesgol">jamesgol</a>, <a href="https://profiles.wordpress.org/jancbeck">jancbeck</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">jipmoors</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/jkudish">Joey Kudish</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/picard102">John Leschinski</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/jpyper">Jpyper</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/ungestaltbar">Kai</a>, <a href="https://profiles.wordpress.org/karinchristen">karinchristen</a>, <a href="https://profiles.wordpress.org/karpstrucking">karpstrucking</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/kevkoeh">Kevin Koehler</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leogopal">Leo Gopal</a>, <a href="https://profiles.wordpress.org/loushou">loushou</a>, <a href="https://profiles.wordpress.org/lumaraf">Lumaraf</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/nofearinc">Mario Peshev</a>, <a href="https://profiles.wordpress.org/clorith">Marius (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/marsjaninzmarsa">marsjaninzmarsa</a>, <a href="https://profiles.wordpress.org/martinsachse">martinsachse</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maxxsnake">maxxsnake</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/nikonratm">Michael</a>, <a href="https://profiles.wordpress.org/mdawaffe">Michael Adams (mdawaffe)</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelryanmcneill">michaelryanmcneill</a>, <a href="https://profiles.wordpress.org/mcguive7">Mickey Kay</a>, <a href="https://profiles.wordpress.org/mihai">mihai</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mnelson4">Mike Nelson</a>, <a href="https://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinic</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mrutz">mrutz</a>, <a href="https://profiles.wordpress.org/nabil_kadimi">nabil_kadimi</a>, <a href="https://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="https://profiles.wordpress.org/nazmulhossainnihal">Nazmul Hossain Nihal</a>, <a href="https://profiles.wordpress.org/nicholas_io">nicholas_io</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nickmomrik">Nick Momrik</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/onnimonni">Onni Hakala</a>, <a href="https://profiles.wordpress.org/ozh">Ozh</a>, <a href="https://profiles.wordpress.org/pareshradadiya-1">Paresh Radadiya</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/djpaul">Paul Gibbs</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/gungeekatx">Pete Nelson</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/philiparthurmoore">Philip Arthur Moore</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/pragunbhutani">pragunbhutani</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rarylson">rarylson</a>, <a href="https://profiles.wordpress.org/lamosty">Rastislav Lamos</a>, <a href="https://profiles.wordpress.org/rauchg">rauchg</a>, <a href="https://profiles.wordpress.org/ravinderk">Ravinder Kumar</a>, <a href="https://profiles.wordpress.org/rclations">RC Lations</a>, <a href="https://profiles.wordpress.org/greuben">Reuben Gunday</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/ritteshpatel">Ritesh Patel</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/rdall">Robert Dall</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/rhurling">Rouven Hurling</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/rmarks">Ryan Marks</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ohryan">Ryan Neudorf</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sagarjadhav">Sagar Jadhav</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/santagada">santagada</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/scruffian">scruffian</a>, <a href="https://profiles.wordpress.org/seanchayes">Sean Hayes</a>, <a href="https://profiles.wordpress.org/sebastiantiede">Sebastian</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shooper">Shawn Hooper</a>, <a href="https://profiles.wordpress.org/designsimply">Sheri Bigelow</a>, <a href="https://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stevegrunwell">Steve Grunwell</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stuartshields">stuartshields</a>, <a href="https://profiles.wordpress.org/sudar">Sudar</a>, <a href="https://profiles.wordpress.org/sunnyratilal">Sunny Ratilal</a>, <a href="https://profiles.wordpress.org/taka2">taka2</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/thorbrink">Thor Brink</a>, <a href="https://profiles.wordpress.org/creativeinfusion">Tim Smith</a>, <a href="https://profiles.wordpress.org/tlexcellent">tlexcellent</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="https://profiles.wordpress.org/tomasm">Tomas Mackevicius</a>, <a href="https://profiles.wordpress.org/tomharrigan">TomHarrigan</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/liljimmi">Tracy (LilJimmi) Levesque</a>, <a href="https://profiles.wordpress.org/tryon">Tryon Eggleston</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/desaiuditd">Udit Desai</a>, <a href="https://profiles.wordpress.org/vivekbhusal">vivekbhusal</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/willnorris">Will Norris</a>, <a href="https://profiles.wordpress.org/willgladstone">willgladstone</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/willstedt">willstedt</a>, <a href="https://profiles.wordpress.org/eltobiano">WPMU DEV Jose</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/ysalame">Yuri Salame</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/katzwebdesign">Zack Katz</a>, and <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="http://siobhanmckeown.com/">Siobhan McKeown</a> for producing the release video, <a href="http://hugobaeta.com/">Hugo Baeta</a> for the design, and <a href="http://jacklenox.com/">Jack Lenox</a> for the voice-over.</p>\n<p>Finally, thanks to all of the contributors who provided subtitles for the release video, which at last count had been translated into 30 languages!</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.4!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wordpress.org/news/2015/08/billie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.4 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Aug 2015 12:10:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3827";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:397:"WordPress 4.2.4 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses six issues, including three cross-site scripting vulnerabilities and a potential SQL injection that could be used to compromise a site, which were discovered by Marc-Alexandre Montpas of Sucuri, Helen Hou-Sandí [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2011:"<p>WordPress 4.2.4 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>This release addresses six issues, including three cross-site scripting vulnerabilities and a potential SQL injection that could be used to compromise a site, which were discovered by <a href="https://sucuri.net/">Marc-Alexandre Montpas</a> of Sucuri, <a href="http://helenhousandi.com/">Helen Hou-Sandí</a> of the WordPress security team, <a href="http://www.checkpoint.com/">Netanel Rubin</a> of Check Point, and <a href="https://hackerone.com/reactors08">Ivan Grigorov</a>. It also includes a fix for a potential timing side-channel attack, discovered by <a href="http://www.scrutinizer-ci.com/">Johannes Schmitt</a> of Scrutinizer, and prevents an attacker from locking a post from being edited, discovered by <a href="https://www.linkedin.com/in/symbiansymoh">Mohamed A. Baset</a>.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.4 also fixes four bugs. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.4">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=33573&amp;stop_rev=33396">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.4</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.4.</p>\n<p><em>Already testing WordPress 4.3? The second release candidate is now available (<a href="https://wordpress.org/wordpress-4.3-RC2.zip">zip</a>) and it contains these fixes. For more on 4.3, see <a href="https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/">the RC 1 announcement post</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.3 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2015 23:50:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3817";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:340:"The release candidate for WordPress 4.3 is now available. We&#8217;ve made more than 100 changes since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.3 on Tuesday, August 18, but we [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2256:"<p>The release candidate for WordPress 4.3 is now available.</p>\n<p>We&#8217;ve made more than <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33512&amp;stop_rev=33372&amp;limit=120">100 changes</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.3 on <strong>Tuesday, August 18</strong>, but we need your help to get there.</p>\n<p>If you haven’t tested 4.3 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.3 RC1, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.3-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.3 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.3 before next week. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p>Be sure to <a href="https://make.wordpress.org/core/">follow along the core development blog</a>, where we&#8217;ll continue to post <a href="https://make.wordpress.org/core/tag/dev-notes+4-3/">notes for developers</a> for 4.3.</p>\n<p><em>Drei Monate Arbeit</em><br />\n<em>Endlich das Ziel vor Augen</em><br />\n<em>Bald hab ich Urlaub!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.3 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/07/wordpress-4-2-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2015/07/wordpress-4-2-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Jul 2015 11:21:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3807";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:380:"WordPress 4.2.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.2.2 and earlier are affected by a cross-site scripting vulnerability, which could allow users with the Contributor or Author role to compromise a site. This was initially reported by Jon Cave and [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2708:"<p>WordPress 4.2.3 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.2.2 and earlier are affected by a cross-site scripting vulnerability, which could allow users with the Contributor or Author role to compromise a site. This was initially reported by <a href="https://profiles.wordpress.org/duck_">Jon Cave</a> and fixed by <a href="http://www.miqrogroove.com/">Robert Chapin</a>, both of the WordPress security team, and later reported by <a href="http://klikki.fi/">Jouko Pynnönen</a>.</p>\n<p>We also fixed an issue where it was possible for a user with Subscriber permissions to create a draft through Quick Draft. Reported by Netanel Rubin from <a href="https://www.checkpoint.com/">Check Point Software Technologies</a>.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.3 also contains fixes for 20 bugs from 4.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=33382&amp;stop_rev=32430">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.3.</p>\n<p>Thanks to everyone who contributed to 4.2.3:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/gabrielperezs">Gabriel Pérez</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/mdawaffe">Mike Adams</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, and <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-2-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Jul 2015 21:55:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3796";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2212:"<p>WordPress 4.3 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/">Beta 3</a> blog posts. Some of the changes in Beta 4 include:</p>\n<ul>\n<li><span class="s1">Fixed several bugs and broken flows in the </span><span class="s1"><strong>publish box </strong></span><span class="s1">in the edit screen.</span></li>\n<li>Addressed a number of edge cases for word count in the <strong>editor</strong>.</li>\n<li><span class="s1"><strong>Site icons</strong> </span><span class="s1">can now be previewed within the customizer. The feature has been removed from general settings.</span></li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33369&amp;stop_rev=33289">more than 60 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a>.</p>\n<p><em>Few Tickets Remain</em><br />\n<em>Edge Cases Disappearing</em><br />\n<em>You Must Test Today</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Jul 2015 21:49:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3787";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2529:"<p>WordPress 4.3 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a> blog posts. Some of the changes in Beta 3 include:</p>\n<ul>\n<li>Performance improvements for <strong>Menus in the Customizer</strong>, as well as bug fixes and visual enhancements.</li>\n<li>Added <strong>Site Icon</strong> to the Customizer. The feature is now complete and requires lots of testing. Please help us ensure the site icon feature works well in both Settings and the Customizer.</li>\n<li>The improvements to <strong>Passwords</strong> have been added to the installation flow. When installing and setting up WordPress, a strong password will be suggested to site administrators. Please test and let us know if you encounter issues.</li>\n<li>Improved <strong>accessibility of comments and media list tables</strong>. If you use a screen reader, please let us know if you encounter any issues.</li>\n<li>Lots and lots of code documentation improvements.</li>\n<li><strong>Various other bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33286&amp;stop_rev=33141&amp;limit=150">more than 140 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a>.</p>\n<p><em>Want to test new things?</em><br />\n<em>Wonder how four three shapes up?</em><br />\n<em>Answer: beta three</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jul 2015 22:04:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3769";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2876:"<p>WordPress 4.3 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>\n<ul>\n<li>Fixed an issue in beta 1 where an alert appeared when saving or publishing a new post/page for the first time.</li>\n<li><strong><strong>Customizer</strong></strong> improvements including enhanced accessibility, smoother menu creation and location assignment, and the ability to handle nameless menus. Please help us test menus in the Customizer to fix any remaining edge cases!</li>\n<li>More robust<strong> list tables</strong> with full content support on small screens and a fallback for the primary column for custom list tables. We&#8217;d love to know how these list tables, such as All Posts and Comments, work for you now on small screen devices.</li>\n<li>The <strong>Site Icon</strong> feature has been improved so that cropping is skipped if the image is the exact size (512px square) and the media modal now suggests a minimum icon size. Please let us know how the flow feels and if you encounter any glitches!</li>\n<li>The <strong>toolbar</strong> now has a direct link to the customizer, along with quick access to themes, widgets, and menus in the dashboard.</li>\n<li>We enabled <strong>utf8mb4 for MySQL</strong> extension users, which was previously unintentionally limited to MySQLi users. Please let us know if you run into any issues.</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33138&amp;stop_rev=33046">almost 100 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.3&amp;group=component&amp;order=priority">everything we’ve fixed</a>.</p>\n<p><em>Edges polished up</em><br />\n<em>Features meliorated</em><br />\n<em>Beta Two: go test!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordCamps Update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/news/2015/07/wordcamps-update/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordcamps-update/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jul 2015 16:13:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"Events";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3758";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:311:"Last week saw the halfway point for 2015, yay! This seems like a good time to update you on WordCamp happenings in the first half of this year. There have been 39 WordCamps in 2015 so far, with events organized in 17 different countries and on 5 continents. More than 14,000 people have registered for [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:9419:"<p>Last week saw the halfway point for 2015, yay! This seems like a good time to update you on WordCamp happenings in the first half of this year.</p>\n<p>There have been <a href="https://central.wordcamp.org/schedule/past-wordcamps/">39 WordCamps in 2015</a> so far, with events organized in 17 different countries and on 5 continents. More than 14,000 people have registered for WordCamp tickets so far this year, isn&#8217;t that amazing?</p>\n<p><a href="https://europe.wordcamp.org/2015/">WordCamp Europe</a> was held in Seville, Spain just a few weeks ago, with close to 1,000 registered participants and over 500 live stream participants. You can watch  <a href="http://wordpress.tv/2015/07/04/matt-mullenweg-keynote-qanda-wordcamp-europe-2015/">Matt Mullenweg’s keynote Q&amp;A</a> session from WordCamp Europe right now on WordPress.tv.</p>\n<p>WordPress.tv has published 537 videos so far in 2015 from WordCamps around the world. Some of the more popular 2015 WordCamp talks on WordPress.tv include <a href="http://wordpress.tv/2015/03/13/tammie-lister-theme-dont-be-my-everything/">Tammie Lister: Theme, Don’t Be My Everything </a>from WordCamp Maui, <a href="http://wordpress.tv/2015/04/17/jenny-munn-seo-for-2015-whats-in-whats-out-and-how-to-be-in-it-to-win-it-for-good/">Jenny Munn: SEO for 2015 – What’s In, What’s Out and How to Be In It to Win It (For Good)</a> from WordCamp Atlanta, <a href="http://wordpress.tv/2015/02/27/fabrice-ducarme-les-constructeurs-de-page-pour-wordpress/">Fabrice Ducarme: Les Constructeurs de Page pour WordPress</a> from WordCamp Paris, <a href="http://wordpress.tv/2015/06/02/ben-furfie-how-to-value-price-websites/">Ben Furfie: How to Value Price Websites</a> from WordCamp London, and <a href="http://wordpress.tv/2015/06/09/morten-rand-hendriksen-building-themes-from-scratch-using-underscores-_s/">Morten Rand-Hendriksen: Building Themes From Scratch Using Underscores (_S)</a> from WordCamp Seattle. Check them out!</p>\n<h3>Lots of great WordCamps are still to come</h3>\n<p><a href="http://ma.tt/2015/06/wordcamp-us-survey/">WordCamp US</a> is currently in pre-planning, in the process of deciding on a host city. The following cities have proposed themselves as a great place to host the first WordCamp US: Chattanooga, Chicago, Detroit, Orlando, Philadelphia, and Phoenix. It&#8217;s possible the first WordCamp US will be held in 2016 so we can organize the best first WordCamp US imaginable.</p>\n<p>At this time, there are 28 <a href="https://central.wordcamp.org/schedule/">WordCamps</a>, in 9 different countries, that have announced their dates for the rest of 2015. Twelve of these have tickets on sale:</p>\n<ul>\n<li><a href="https://columbus.wordcamp.org/2015/">WordCamp Columbus</a>, Columbus, Ohio: July 17-18</li>\n<li><a href="https://scranton.wordcamp.org/2015/">WordCamp Scranton</a>, Scranton, Pennsylvania: July 18</li>\n<li><a href="https://boston.wordcamp.org/2015/">WordCamp Boston</a>, Boston, Massachussetts: July 18-19</li>\n<li><a href="https://milwaukee.wordcamp.org/2015/">WordCamp Milwaukee</a>, Milwaukee, Wisconsin: July 24-26</li>\n<li><a href="https://asheville.wordcamp.org/2015/">WordCamp Asheville</a>, Asheville, North Carolina: July 24-26</li>\n<li><a href="https://kansai.wordcamp.org/2015/">WordCamp Kansai</a>, Kansai, Japan: July 25-26</li>\n<li><a href="https://fayetteville.wordcamp.org/2015/">WordCamp Fayetteville</a>, Fayetteville, Arkansas: July 31-August 2</li>\n<li><a href="https://brighton.buddycamp.org/2015/">BuddyCamp Brighton</a>,  Brighton, UK: August 8</li>\n<li><a href="https://vancouver.wordcamp.org/2015/">WordCamp Vancouver, BC,</a> Vancouver, BC, Canada: August 15-16</li>\n<li><a href="https://russia.wordcamp.org/2015/">WordCamp Russia</a>, Moscow, Russia: August 15</li>\n<li><a href="https://norrkoping.wordcamp.org/2015/">WordCamp Norrköping</a>, Norrköping, Sweden: August 28-29</li>\n<li><a href="https://croatia.wordcamp.org/2015/">WordCamp Croatia</a>, Rijeka, Croatia: September 5-6</li>\n<li><a href="https://krakow.wordcamp.org/2015/">WordCamp Krakow,</a>  Krakow, Poland: September 12-13</li>\n<li><a href="https://nyc.wordcamp.org/2015/">WordCamp NYC</a>, New York City, New York: October 30-November 1</li>\n</ul>\n<p>The other 16 events don’t have tickets on sale yet, but they’ve set their dates! Subscribe to the sites to find out when registration opens:</p>\n<ul>\n<li><a href="https://pune.wordcamp.org/2015/">WordCamp Pune</a>, Pune, India: September 6</li>\n<li><a href="https://capetown.wordcamp.org/2015/">WordCamp Cape Town</a>, Cape Town, South Africa: September 10-11</li>\n<li><a href="https://baltimore.wordcamp.org/2015/">WordCamp Baltimore</a>, Baltimore, Maryland: September 12</li>\n<li><a href="https://slc.wordcamp.org/2015/">WordCamp Salt Lake City</a>, Salt Lake City, Utah: September 12</li>\n<li><a href="https://lithuania.wordcamp.org/2015/">WordCamp Lithuania</a>, Vilnius, Lithuania: September 19</li>\n<li><a href="https://vegas.wordcamp.org/2015">WordCamp Vegas</a>, Las Vegas, Nevada: September 19-20</li>\n<li><a href="https://switzerland.wordcamp.org/2015/">WordCamp Switzerland</a>, Zurich, Switzerland: September 19-20</li>\n<li><a href="https://tampa.wordcamp.org/2015/">WordCamp Tampa</a>, Tampa, Florida: September 25-27</li>\n<li><a href="https://rhodeisland.wordcamp.org/2015/">WordCamp Rhode Island</a>,  Providence, Rhode Island: September 25-26</li>\n<li><a href="https://la.wordcamp.org/2015/">WordCamp Los Angeles</a>, Los Angeles, California: September 26-27</li>\n<li><a href="https://denmark.wordcamp.org/2015/">WordCamp Denmark,</a>  Copenhagen, Denmark: October 3-4</li>\n<li><a href="https://toronto.wordcamp.org/2015">WordCamp Toronto</a>, Toronto, Ontario, Canada: October 3-4</li>\n<li><a href="https://hamptonroads.wordcamp.org/2015/">WordCamp Hampton Roads, </a>  Virginia Beach, VA, USA: October 17</li>\n<li><a href="https://annarbor.wordcamp.org/2015">WordCamp Ann Arbor</a>, Ann Arbor, Michigan: October 24</li>\n<li><a href="https://portland.wordcamp.org/2015/">WordCamp Portland</a>,  Portland, OR: October 24-25</li>\n</ul>\n<p>On top of all those exciting community events, there are 26 WordCamps in pre-planning as they look for the right event space.  If you have a great idea for a free or cheap WordCamp venue in any of the below locations, get in touch with the organizers through the WordCamp sites:</p>\n<ul>\n<li><a href="https://dfw.wordcamp.org/2015/">WordCamp DFW</a>:  Dallas/Fort Worth, Texas</li>\n<li><a href="https://riodejaneiro.wordcamp.org/2015/">WordCamp Rio</a>: Rio de Janeiro, Brazil</li>\n<li><a href="https://saratoga.wordcamp.org/2015/">WordCamp Saratoga</a>:  Saratoga Springs, New York</li>\n<li><a href="https://sofia.wordcamp.org/2015">WordCamp Sofia</a>:  Sofia, Bulgaria</li>\n<li><a href="https://austin.wordcamp.org/2015/">WordCamp Austin</a>:  Austin, TX</li>\n<li><a href="https://ottawa.wordcamp.org/2015/">WordCamp Ottawa</a>:  Ottawa, Canada</li>\n<li><a href="https://charleston.wordcamp.org/2015/">WordCamp Charleston</a>:  Charleston, South Carolina</li>\n<li><a href="https://chicago.wordcamp.org/2015/">WordCamp Chicago</a>:  Chicago, Illinois</li>\n<li><a href="https://albuquerque.wordcamp.org/2015/">WordCamp Albuquerque</a>:  Albuquerque, New Mexico</li>\n<li><a href="https://prague.wordcamp.org/2015/">WordCamp Prague</a>:  Prague, Czech Republic</li>\n<li><a href="https://seoul.wordcamp.org/2014/">WordCamp Seoul: </a>Seoul, South Korea</li>\n<li><a href="https://louisville.wordcamp.org/2014/">WordCamp Louisville</a>: Louisville, Kentucky</li>\n<li><a href="https://omaha.wordcamp.org/2015/">WordCamp Omaha</a>:  Omaha, Nebraska</li>\n<li><a href="https://grandrapids.wordcamp.org/2015/">WordCamp Grand Rapids</a>:  Grand Rapids, Michigan</li>\n<li><a href="https://easttroy.wordcamp.org/2015/">WordCamp East Troy</a>:  East Troy, Wisconsin</li>\n<li><a href="https://palmademallorca.wordcamp.org/2015">WordCamp Mallorca</a>: Palma de Mallorca, Spain</li>\n<li><a href="https://edinburgh.wordcamp.org/2015/">WordCamp Edinburgh</a>:  Edinburgh, United Kingdom</li>\n<li><a href="https://orlando.wordcamp.org/2015/">WordCamp Orlando</a>:  Orlando, Florida</li>\n<li><a href="https://mexico.wordcamp.org/2015/">WordCamp Mexico City</a>:  Mexico City, Mexico</li>\n<li><a href="https://netherlands.wordcamp.org/2015/">WordCamp Netherlands</a>:  Utrecht, Netherlands</li>\n<li><a href="https://phoenix.wordcamp.org/2016/">WordCamp Phoenix</a>:  Phoenix, Arizona</li>\n<li><a href="https://saopaulo.wordcamp.org/2015/">WordCamp São Paulo</a>:  São Paulo, Brazil</li>\n<li><a href="https://manchester.wordcamp.org/2015/">WordCamp Manchester</a>:  Manchester, United Kingdom</li>\n<li><a href="https://tokyo.wordcamp.org/2015/">WordCamp Tokyo</a>:  Tokyo, Japan</li>\n<li><a href="https://lima.wordcamp.org/2015/">WordCamp Lima</a>:  Lima, Peru</li>\n<li><a href="https://seattle.wordcamp.org/2015-beginner/">WordCamp Seattle: Beginner</a>: Seattle, WA</li>\n</ul>\n<p>Don’t see your city on the list, but yearning for a local WordCamp? WordCamps are organized by local volunteers from the WordPress community, and we have a whole team of people to support new organizers setting up a first-time WordCamp. If you want to bring WordCamp to town, check out how you can <a href="https://central.wordcamp.org/become-an-organizer/">become a WordCamp organizer</a>!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/news/2015/07/wordcamps-update/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Jul 2015 01:30:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3738";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.3 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4352:"<p>WordPress 4.3 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.3-beta1.zip">download the beta here</a> (zip).</p>\n<p>4.3 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>\n<ul>\n<li><strong>Menus</strong> can now be managed with the <strong>Customizer</strong>, which allows you to live preview changes you’re making without changing your site for visitors until you’re ready. We&#8217;re especially interested to know if this helps streamline the process of setting up your site (<a href="https://core.trac.wordpress.org/ticket/32576">#32576</a>).</li>\n<li>Take control of another piece of your site with the <strong>Site Icon</strong> feature. You can now manage your site’s favicon and app icon from the admin area (<a href="https://core.trac.wordpress.org/ticket/16434">#16434</a>).</li>\n<li>We put a lot of work into <strong>Better Passwords</strong> throughout WordPress. Now, WordPress will limit the life time of password resets, no longer send passwords via email, and generate and suggest secure passwords for you. Try it out and let us know what you think! (<a href="https://core.trac.wordpress.org/ticket/32589">#32589</a>)</li>\n<li>We’ve also added <strong>Editor Improvements</strong>. Certain text patterns are automatically transformed as you type, including <code>*</code> and <code>-</code> transforming into unordered lists, <code>1.</code> and <code>1)</code> for ordered lists, <code>&gt;</code> for blockquotes and two to six number signs (<code>#</code>) for headings (<a href="https://core.trac.wordpress.org/ticket/31441">#31441</a>).</li>\n<li>We’ve improved the <strong>list view</strong> across the admin dashboard. Now, when you view your posts and pages <strong>on small screen devices</strong>, columns are not truncated and can be toggled into view (<a href="https://core.trac.wordpress.org/ticket/32395">#32395</a>).</li>\n</ul>\n<p><strong>Developers</strong>: There have been a few of changes for you to test as well, including:</p>\n<ul>\n<li><strong>Taxonomy Roadmap:</strong> Terms shared across multiple taxonomies will <a href="https://make.wordpress.org/core/2015/06/09/eliminating-shared-taxonomy-terms-in-wordpress-4-3/">now be split</a> into separate terms on update to 4.3. Please let us know if you hit any snags (<a href="https://core.trac.wordpress.org/ticket/30261">#30261</a>).</li>\n<li>Added <code>singular.php</code> to the template hierarchy as a fallback for <code>single.php</code> and <code>page.php</code>. (<a href="https://core.trac.wordpress.org/ticket/22314">#22314</a>).</li>\n<li>The old Distraction Free Writing code was removed (<a href="https://core.trac.wordpress.org/ticket/30949">#30949</a>).</li>\n<li>List tables now can (and often should) have a primary column defined. We’re working on a fallback for existing custom list tables but right now they likely have some breakage in the aforementioned responsive view (<a href="https://core.trac.wordpress.org/ticket/25408">#25408</a>).</li>\n</ul>\n<p>If you want a more in-depth view of what changes have made it into 4.3, <a href="https://make.wordpress.org/core/tag/4-3/">check out all 4.3-tagged posts</a> on the main development blog.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a> so far.</p>\n<p>Happy testing!</p>\n<p><em>Site icons for all</em><br />\n<em>Live preview menu changes</em><br />\n<em>Four three beta now</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.2 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/05/wordpress-4-2-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2015/05/wordpress-4-2-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 07 May 2015 02:24:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3718";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:355:"WordPress 4.2.2 is now available. This is a critical security release for all previous versions and we strongly encourage you to update your sites immediately. Version 4.2.2 addresses two security issues: The Genericons icon font package, which is used in a number of popular themes and plugins, contained an HTML file vulnerable to a cross-site [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3213:"<p>WordPress 4.2.2 is now available. This is a <strong>critical security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>Version 4.2.2 addresses two security issues:</p>\n<ul>\n<li>The Genericons icon font package, which is used in a number of popular themes and plugins, contained an HTML file vulnerable to a cross-site scripting attack. All affected themes and plugins hosted on <a href="https://wordpress.org/">WordPress.org</a> (including the Twenty Fifteen default theme) have been updated today by the WordPress security team to address this issue by removing this nonessential file. To help protect other Genericons usage, WordPress 4.2.2 proactively scans the wp-content directory for this HTML file and removes it. Reported by Robert Abela of <a href="http://netsparker.com">Netsparker</a>.</li>\n<li>WordPress versions 4.2 and earlier are affected by a <a href="https://wordpress.org/news/2015/04/wordpress-4-2-1/">critical cross-site scripting vulnerability</a>, which could enable anonymous users to compromise a site. WordPress 4.2.2 includes a comprehensive fix for this issue. Reported separately by Rice Adu and Tong Shi from Baidu[X-team].</li>\n</ul>\n<p>The release also includes hardening for a potential cross-site scripting vulnerability when using the visual editor. This issue was reported by Mahadev Subedi.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.2 also contains fixes for 13 bugs from 4.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.2">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=32418&amp;stop_rev=32324">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.2</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.2.</p>\n<p>Thanks to everyone who contributed to 4.2.2:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/mdawaffe">Mike Adams</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/taka2">taka2</a>, and <a href="https://profiles.wordpress.org/willstedt">willstedt</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/05/wordpress-4-2-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 24 Aug 2015 18:06:44 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:25:"strict-transport-security";s:11:"max-age=360";s:10:"x-pingback";s:37:"https://wordpress.org/news/xmlrpc.php";s:13:"last-modified";s:29:"Wed, 19 Aug 2015 13:10:24 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20150807165844";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(706, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1440483167', 'no'),
(707, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1440439967', 'no'),
(708, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1440483179', 'no'),
(709, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 24 Aug 2015 17:55:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 13 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Protect your WordPress site by hiding vital areas of your site, protecting access to important files, preventing brute-force login attempts, detecting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"http://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Google Analytics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/googleanalytics/#post-11199";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 09 Jun 2009 22:09:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"11199@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:38:"Enables google analytics on all pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Kevin Sylvestre";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:12:"WP-DB-Backup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/plugins/wp-db-backup/#post-472";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 17 Mar 2007 04:41:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"472@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:44:"On-demand backup of your WordPress database.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"ringmaster";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:45:"http://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 24 Aug 2015 18:06:58 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Mon, 24 Aug 2015 18:30:44 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Mon, 24 Aug 2015 17:55:44 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20150807165844";}', 'no'),
(710, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1440483179', 'no'),
(711, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1440439979', 'no'),
(712, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1440483180', 'no'),
(713, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/08/billie/''>WordPress 4.3 “Billie”</a> <span class="rss-date">18 agosto, 2015</span><div class="rssSummary">Version 4.3 of WordPress, named “Billie” in honor of jazz singer Billie Holiday, is available for download or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site. Menus in the Customizer Create your menu, update it, and assign it, all while live-previewing in [&hellip;]</div></li></ul></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Resolving timed out after 10531 milliseconds</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Plugin popular:</span> <a href=''http://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=c53c64654f&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Instalar</a>)</span></li></ul></div>', 'no'),
(714, 'jetpack_options', 'a:4:{s:7:"version";s:16:"3.6.1:1440440804";s:11:"old_version";s:16:"3.6.1:1440440804";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:-361;}', 'yes'),
(715, 'jetpack_activated', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(716, 'jetpack_file_data', 'a:1:{s:5:"3.6.1";a:48:{s:32:"897a2742e7839607c0023b456ed14758";a:13:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:89:"Check your spelling, style, and grammar with the After the Deadline proofreading service.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"6";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"c870c79f222cdc3114d210d3a3502a79";a:13:{s:4:"name";s:8:"Carousel";s:11:"description";s:63:"Transform standard image galleries into full-screen slideshows.";s:14:"jumpstart_desc";s:79:"brings your photos and images to life as full-size, easily navigable galleries.";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:9:"Jumpstart";}s:32:"5626c5d4355e483f5d4356630646d742";a:13:{s:4:"name";s:16:"Jetpack Comments";s:11:"description";s:79:"Let readers comment with WordPress.com, Twitter, Facebook, or Google+ accounts.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";}s:32:"24c526e6c78dd2c097eee51c33d627ee";a:13:{s:4:"name";s:12:"Contact Form";s:11:"description";s:44:"Insert a contact form anywhere on your site.";s:14:"jumpstart_desc";s:111:"adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:9:"Jumpstart";}s:32:"be64897c0a578ee6cadb1a459021fbbe";a:13:{s:4:"name";s:20:"Custom Content Types";s:11:"description";s:92:"Organize and display different types of content on your site, separate from posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"6735e720fe2e3f6f2c48fcaf0fe0a157";a:13:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:57:"Customize your site’s CSS without modifying your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";}s:32:"3abad4b5ddebf37a03f03331b17c1e1b";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"e30ae0161f5ef7955a2e22021602969b";a:13:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:74:"Share your public posts and comments to search engines and other services.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"e4e461477edd64344126af366b33ae7c";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"1e285572509707836075afa0b7a0d17a";a:13:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:14:"jumpstart_desc";s:131:"let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:9:"Jumpstart";}s:32:"2a62f28abd5ac11bea3ce7a8e9c4d893";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:8:"2.0.3 ??";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"fd2cbe6ae10ff814cc269d51b32baad9";a:13:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:46:"Add support for infinite scroll to your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";}s:32:"931a7a94c663547c5cb6cc430e98dd30";a:13:{s:4:"name";s:8:"JSON API";s:11:"description";s:69:"Allow applications to securely access your content through the cloud.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:0:"";}s:32:"dd442dc05f950526d584e15e54628bfb";a:13:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:85:"Use LaTeX markup language in posts and pages for complex equations and other geekery.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"96f2d1988c22688e9e3d8a8cc5ee1b5b";a:13:{s:4:"name";s:5:"Likes";s:11:"description";s:70:"Give visitors an easy way to show their appreciation for your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";}s:32:"f79ea51a248d9f624e0936ef023cffe1";a:13:{s:4:"name";s:6:"Manage";s:11:"description";s:76:"Manage all your sites from a centralized place, https://wordpress.com/sites.";s:14:"jumpstart_desc";s:151:"helps you remotely manage plugins, turn on automated updates, and more from <a href="https://wordpress.com/plugins/" target="_blank">wordpress.com</a>.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"3";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:35:"Centralized Management, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"46da83c7358c834dcb193789272f7858";a:13:{s:4:"name";s:8:"Markdown";s:11:"description";s:51:"Write posts or pages in plain-text Markdown syntax.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"c189740a3e69c5f42f12a191a15c3dbf";a:13:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:64:"Optimize your site with a mobile-friendly theme for smartphones.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:11:"Recommended";}s:32:"0f9fdc374b00a8d5ca816aac44e6d3f6";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"6f1872535dd77713441708214388213c";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"65f2f0936d11bffe8cd447696054f38e";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"a8ff13dae8129c451116dea8803b23da";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"0a38341a9df2d2cb6f90e4faf65b4d64";a:13:{s:4:"name";s:7:"Monitor";s:11:"description";s:88:"Receive notifications from Jetpack if your site goes offline — and when it it returns.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:11:"Recommended";}s:32:"1c8f61fb80e0f6dd697e6d995431161a";a:13:{s:4:"name";s:13:"Notifications";s:11:"description";s:84:"Receive notification of site activity via the admin toolbar and your Mobile devices.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:0:"";}s:32:"4ca0a2f31843f3b2a4522fa8b9fb18d3";a:13:{s:4:"name";s:10:"Omnisearch";s:11:"description";s:66:"Search your entire database from a single field in your Dashboard.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"16";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:0:"";}s:32:"1f1289f469fe089a9ea32024df083f74";a:13:{s:4:"name";s:6:"Photon";s:11:"description";s:66:"Accelerate your site by loading images from the WordPress.com CDN.";s:14:"jumpstart_desc";s:141:"mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"53eb2f9dfe4e9d9b7203d47ab3a0c58e";a:13:{s:4:"name";s:13:"Post by Email";s:11:"description";s:58:"Publish posts by email, using any device and email client.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"df74d4db35fc795c9bf4b7b2e769116d";a:13:{s:4:"name";s:7:"Protect";s:11:"description";s:70:"Adds brute force protection to your login page. Formerly BruteProtect.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:11:"Recommended";}s:32:"e8b7c9d9b0be70888c41e139c34eb448";a:13:{s:4:"name";s:9:"Publicize";s:11:"description";s:55:"Share new posts on social media networks automatically.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:11:"Recommended";}s:32:"04c7eedf95290d03db05e2fc8682a8da";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"f36c13c725ee67f8fbb85d85b4fa8bdb";a:13:{s:4:"name";s:13:"Related Posts";s:11:"description";s:60:"Display links to your related content under posts and pages.";s:14:"jumpstart_desc";s:113:"keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"4034d694a22b9864b7d9dbcc291a01f5";a:13:{s:4:"name";s:7:"Sharing";s:11:"description";s:81:"Allow visitors to share your content on Facebook, Twitter, and more with a click.";s:14:"jumpstart_desc";s:116:"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"a260ebaa113e875bbbe59b54cd2475b1";a:13:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:77:"Embed content from YouTube, Vimeo, SlideShare, and more, no coding necessary.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:0:"";}s:32:"48e6f4cc58711b5d627931f72a4f55a2";a:13:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:56:"Enable WP.me-powered shortlinks for all posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";}s:32:"0361b51d6b8957ba15a90c8893085e51";a:13:{s:4:"name";s:9:"Site Icon";s:11:"description";s:29:"Add a site icon to your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:5:"Other";s:7:"feature";s:0:"";}s:32:"03045ecc30a51f072431bd2f6ccffc37";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"2e89d8cf494aa4cc028023de2662b571";a:13:{s:4:"name";s:22:"Jetpack Single Sign On";s:11:"description";s:62:"Allow your users to log in using their WordPress.com accounts.";s:14:"jumpstart_desc";s:97:"lets you login to all your Jetpack-enabled sites with one click using your WordPress.com account.";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:9:"Jumpstart";}s:32:"caf240bf1da3b6f8ec449d7477ac383e";a:13:{s:4:"name";s:19:"WordPress.com Stats";s:11:"description";s:85:"Monitor your stats with clear, concise reports and no additional load on your server.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:32:"WordPress.com Stats, Recommended";s:7:"feature";s:11:"Recommended";}s:32:"b6ef488128505d6cf819d8a6508a081f";a:13:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:88:"Allow users to subscribe to your posts and comments and receive notifications via email.";s:14:"jumpstart_desc";s:126:"give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:9:"Jumpstart";}s:32:"6c0c9cebc91c7aee0de35562fcb8d0b0";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"f354e2a9f6f0823a628e741e7aa88906";a:13:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:73:"Display your image galleries in a variety of sleek, graphic arrangements.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:0:"";}s:32:"fb806f9c3f633a466076615f99329d22";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"c6908213746b1364a541c3fde961936f";a:13:{s:4:"name";s:10:"VaultPress";s:11:"description";s:85:"Protect your site with automatic backups and security scans. (Subscription required.)";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"df97f3fe6750f6490164e710152d5946";a:13:{s:4:"name";s:17:"Site Verification";s:11:"description";s:78:"Verify your site or domain with Google Webmaster Tools, Pinterest, and others.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"5e000fbc427cecaed6e1b8dbf2732462";a:13:{s:4:"name";s:10:"VideoPress";s:11:"description";s:68:"Upload and embed videos right on your site. (Subscription required.)";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:0:"";}s:32:"86f746acdf5d11f8fe753092aec6f619";a:13:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:57:"Specify which widgets appear on which pages of your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";}s:32:"b91d486b68701c78e5f2776144c546f4";a:13:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:79:"Add images, Twitter streams, your site’s RSS links, and more to your sidebar.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:0:"";}s:32:"98a767d5a9377cc7b8d08fda01d960c0";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}}}', 'yes'),
(718, 'jetpack_available_modules', 'a:1:{s:5:"3.6.1";a:36:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:10:"omnisearch";s:3:"2.3";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:9:"site-icon";s:3:"3.2";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";}}', 'yes'),
(719, 'jetpack_security_report', 'a:0:{}', 'yes'),
(722, '_transient_timeout_jetpack_https_test', '1440527208', 'no'),
(723, '_transient_jetpack_https_test', '1', 'no'),
(724, '_transient_timeout_jetpack_site_is_vcs', '1440527470', 'no'),
(725, '_transient_jetpack_site_is_vcs', '1', 'no'),
(726, 'jetpack_updates', 'a:8:{s:7:"plugins";i:3;s:6:"themes";i:0;s:9:"wordpress";i:1;s:12:"translations";i:1;s:5:"total";i:5;s:10:"wp_version";s:5:"4.2.4";s:17:"wp_update_version";s:3:"4.3";s:26:"site_is_version_controlled";b:1;}', 'yes'),
(728, 'wc_options', 's:1873:"a:43:{s:13:"wc_post_types";a:5:{i:0;s:4:"post";i:1;s:12:"restaurantes";i:2;s:15:"hotelesyposadas";i:3;s:18:"centroscomerciales";i:4;s:16:"localesnocturnos";}s:21:"wc_comment_list_order";s:4:"desc";s:27:"wc_comment_list_update_type";s:1:"0";s:28:"wc_comment_list_update_timer";s:2:"30";s:24:"wc_comment_editable_time";s:3:"900";s:22:"wpdiscuz_redirect_page";s:1:"0";s:20:"wc_is_guest_can_vote";s:1:"1";s:20:"wc_load_all_comments";i:0;s:27:"wc_voting_buttons_show_hide";i:0;s:26:"wc_share_buttons_show_hide";i:0;s:20:"wc_captcha_show_hide";s:1:"1";s:19:"wc_weburl_show_hide";s:1:"1";s:24:"wc_header_text_show_hide";i:0;s:19:"wc_avatar_show_hide";i:0;s:26:"wc_user_must_be_registered";s:1:"0";s:25:"wc_is_name_field_required";s:1:"1";s:26:"wc_is_email_field_required";i:0;s:30:"wc_show_hide_loggedin_username";s:1:"1";s:32:"wc_reply_button_guests_show_hide";i:0;s:33:"wc_reply_button_members_show_hide";i:0;s:26:"wc_author_titles_show_hide";i:0;s:16:"wc_comment_count";s:1:"5";s:21:"wc_comments_max_depth";s:1:"3";s:22:"wc_simple_comment_date";i:0;s:43:"wc_comment_reply_checkboxes_default_checked";i:0;s:29:"wc_show_hide_comment_checkbox";s:1:"1";s:31:"wc_show_hide_all_reply_checkbox";s:1:"1";s:27:"wc_show_hide_reply_checkbox";s:1:"1";s:41:"wc_use_postmatic_for_comment_notification";i:0;s:20:"wc_comment_text_size";s:4:"14px";s:16:"wc_form_bg_color";s:7:"#2b6af0";s:19:"wc_comment_bg_color";s:7:"#ffffff";s:17:"wc_reply_bg_color";s:7:"#f8f8f8";s:21:"wc_comment_text_color";s:4:"#555";s:21:"wc_author_title_color";s:7:"#000000";s:19:"wc_vote_reply_color";s:7:"#666666";s:21:"wc_input_border_color";s:7:"#000000";s:30:"wc_new_loaded_comment_bg_color";s:16:"rgb(255,250,214)";s:13:"wc_custom_css";s:27:".comments-area{width:auto;}";s:25:"wc_show_plugin_powerid_by";i:0;s:15:"wc_is_use_po_mo";i:0;s:26:"wc_comment_text_max_length";i:120;s:22:"wc_load_js_css_on_home";s:1:"1";}";', 'yes'),
(729, 'wc_plugin_version', '2.2.9', 'yes'),
(733, 'wsl_settings_welcome_panel_enabled', '1', 'yes'),
(734, 'wsl_settings_redirect_url', 'http://localhost/wordpress', 'yes'),
(735, 'wsl_settings_force_redirect_url', '2', 'yes'),
(736, 'wsl_settings_connect_with_label', 'Ingresar con:', 'yes'),
(737, 'wsl_settings_users_avatars', '1', 'yes'),
(738, 'wsl_settings_use_popup', '2', 'yes'),
(739, 'wsl_settings_widget_display', '1', 'yes'),
(740, 'wsl_settings_authentication_widget_css', '.wp-social-login-connect-with {}\r\n.wp-social-login-provider-list {}\r\n.wp-social-login-provider-list a {}\r\n.wp-social-login-provider-list img {}\r\n.wsl_connect_with_provider {}', 'yes'),
(741, 'wsl_settings_bouncer_registration_enabled', '1', 'yes'),
(742, 'wsl_settings_bouncer_authentication_enabled', '1', 'yes'),
(743, 'wsl_settings_bouncer_profile_completion_require_email', '2', 'yes'),
(744, 'wsl_settings_bouncer_profile_completion_change_username', '2', 'yes'),
(745, 'wsl_settings_bouncer_new_users_moderation_level', '1', 'yes'),
(746, 'wsl_settings_bouncer_new_users_membership_default_role', 'default', 'yes'),
(747, 'wsl_settings_bouncer_new_users_restrict_domain_enabled', '2', 'yes'),
(748, 'wsl_settings_bouncer_new_users_restrict_domain_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn''t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(749, 'wsl_settings_bouncer_new_users_restrict_email_enabled', '2', 'yes'),
(750, 'wsl_settings_bouncer_new_users_restrict_email_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn''t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(751, 'wsl_settings_bouncer_new_users_restrict_profile_enabled', '2', 'yes'),
(752, 'wsl_settings_bouncer_new_users_restrict_profile_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn''t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(753, 'wsl_settings_contacts_import_facebook', '2', 'yes'),
(754, 'wsl_settings_contacts_import_google', '2', 'yes'),
(755, 'wsl_settings_contacts_import_twitter', '2', 'yes'),
(756, 'wsl_settings_contacts_import_live', '2', 'yes'),
(757, 'wsl_settings_contacts_import_linkedin', '2', 'yes'),
(758, 'wsl_settings_buddypress_enable_mapping', '2', 'yes'),
(759, 'wsl_settings_buddypress_xprofile_map', '', 'yes'),
(760, 'wsl_settings_Facebook_enabled', '1', 'yes'),
(761, 'wsl_settings_Google_enabled', '1', 'yes'),
(762, 'wsl_settings_Twitter_enabled', '1', 'yes'),
(763, 'wsl_components_core_enabled', '1', 'yes'),
(764, 'wsl_components_networks_enabled', '1', 'yes'),
(765, 'wsl_components_login-widget_enabled', '1', 'yes'),
(766, 'wsl_components_bouncer_enabled', '1', 'yes'),
(767, 'wsl_settings_Facebook_app_scope', 'email, public_profile, user_friends', 'yes'),
(768, 'wsl_settings_Google_app_scope', 'profile https://www.googleapis.com/auth/plus.profile.emails.read', 'yes'),
(769, 'wsl_settings_GitHub_app_scope', 'user:email', 'yes'),
(783, 'jetpack_unique_connection', 'a:1:{s:12:"disconnected";i:1;}', 'yes'),
(784, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1440453814', 'yes'),
(785, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(786, 'wsl_settings_social_icon_set', 'wpzoom', 'yes'),
(787, 'wsl_settings_users_notification', '0', 'yes'),
(792, '_site_transient_timeout_theme_roots', '1440446943', 'yes'),
(793, '_site_transient_theme_roots', 'a:1:{s:8:"chequear";s:7:"/themes";}', 'yes'),
(795, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/es_ES/wordpress-4.3.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/es_ES/wordpress-4.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.3";s:7:"version";s:3:"4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.3.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.3-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.3";s:7:"version";s:3:"4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/es_ES/wordpress-4.3.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/es_ES/wordpress-4.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.3";s:7:"version";s:3:"4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1440445148;s:15:"version_checked";s:5:"4.2.4";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 11:12:13";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(796, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1440445149;s:7:"checked";a:1:{s:8:"chequear";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(797, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1440447825;s:7:"checked";a:8:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.2";s:19:"akismet/akismet.php";s:5:"3.1.1";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.1.1";s:9:"hello.php";s:3:"1.6";s:19:"jetpack/jetpack.php";s:5:"3.6.1";s:31:"photo-gallery/photo-gallery.php";s:6:"1.2.53";s:42:"wordpress-social-login/wp-social-login.php";s:5:"2.2.3";s:15:"wpdiscuz/wc.php";s:5:"2.2.9";}s:8:"response";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.3";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":7:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.1.2.zip";s:14:"upgrade_notice";s:284:"Change export value to plural label for taxonomies.\nProperly select a post type or taxonomy after deleting an existing value.\nUpdated screenshots\nAdded target=&quot;_blank&quot; attribute to one of the inline help links for Menu position. Thanks @JulieKuehl\nFixed potential XSS issue.";}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:19:"jetpack/jetpack.php";O:8:"stdClass":6:{s:2:"id";s:5:"20101";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:5:"3.6.1";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/jetpack.3.6.1.zip";}s:31:"photo-gallery/photo-gallery.php";O:8:"stdClass":6:{s:2:"id";s:5:"47473";s:4:"slug";s:13:"photo-gallery";s:6:"plugin";s:31:"photo-gallery/photo-gallery.php";s:11:"new_version";s:6:"1.2.53";s:3:"url";s:44:"https://wordpress.org/plugins/photo-gallery/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/photo-gallery.1.2.53.zip";}s:42:"wordpress-social-login/wp-social-login.php";O:8:"stdClass":6:{s:2:"id";s:5:"27354";s:4:"slug";s:22:"wordpress-social-login";s:6:"plugin";s:42:"wordpress-social-login/wp-social-login.php";s:11:"new_version";s:5:"2.2.3";s:3:"url";s:53:"https://wordpress.org/plugins/wordpress-social-login/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/wordpress-social-login.2.2.3.zip";}s:15:"wpdiscuz/wc.php";O:8:"stdClass":6:{s:2:"id";s:5:"55672";s:4:"slug";s:8:"wpdiscuz";s:6:"plugin";s:15:"wpdiscuz/wc.php";s:11:"new_version";s:5:"2.2.9";s:3:"url";s:39:"https://wordpress.org/plugins/wpdiscuz/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wpdiscuz.2.2.9.zip";}}}', 'yes'),
(803, '_site_transient_timeout_security_report_performed_recently', '1440450641', 'yes'),
(804, '_site_transient_security_report_performed_recently', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(805, 'rewrite_rules', 'a:190:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"bwg_tag/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"bwg_tag/([^/]+)/trackback/?$";s:34:"index.php?bwg_tag=$matches[1]&tb=1";s:36:"bwg_tag/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?bwg_tag=$matches[1]&paged=$matches[2]";s:43:"bwg_tag/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?bwg_tag=$matches[1]&cpage=$matches[2]";s:28:"bwg_tag/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?bwg_tag=$matches[1]&page=$matches[2]";s:24:"bwg_tag/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"bwg_tag/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"estado/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?estado=$matches[1]&feed=$matches[2]";s:42:"estado/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?estado=$matches[1]&feed=$matches[2]";s:35:"estado/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?estado=$matches[1]&paged=$matches[2]";s:17:"estado/([^/]+)/?$";s:28:"index.php?estado=$matches[1]";s:49:"ciudades/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?ciudades=$matches[1]&feed=$matches[2]";s:44:"ciudades/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?ciudades=$matches[1]&feed=$matches[2]";s:37:"ciudades/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?ciudades=$matches[1]&paged=$matches[2]";s:19:"ciudades/([^/]+)/?$";s:30:"index.php?ciudades=$matches[1]";s:40:"restaurantes/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"restaurantes/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"restaurantes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"restaurantes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"restaurantes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"restaurantes/([^/]+)/trackback/?$";s:39:"index.php?restaurantes=$matches[1]&tb=1";s:41:"restaurantes/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?restaurantes=$matches[1]&paged=$matches[2]";s:48:"restaurantes/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?restaurantes=$matches[1]&cpage=$matches[2]";s:33:"restaurantes/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?restaurantes=$matches[1]&page=$matches[2]";s:29:"restaurantes/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"restaurantes/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"restaurantes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"restaurantes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"restaurantes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"hotelesyposadas/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"hotelesyposadas/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"hotelesyposadas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"hotelesyposadas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"hotelesyposadas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"hotelesyposadas/([^/]+)/trackback/?$";s:42:"index.php?hotelesyposadas=$matches[1]&tb=1";s:44:"hotelesyposadas/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?hotelesyposadas=$matches[1]&paged=$matches[2]";s:51:"hotelesyposadas/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?hotelesyposadas=$matches[1]&cpage=$matches[2]";s:36:"hotelesyposadas/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?hotelesyposadas=$matches[1]&page=$matches[2]";s:32:"hotelesyposadas/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"hotelesyposadas/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"hotelesyposadas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"hotelesyposadas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"hotelesyposadas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"centroscomerciales/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"centroscomerciales/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"centroscomerciales/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"centroscomerciales/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"centroscomerciales/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"centroscomerciales/([^/]+)/trackback/?$";s:45:"index.php?centroscomerciales=$matches[1]&tb=1";s:47:"centroscomerciales/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?centroscomerciales=$matches[1]&paged=$matches[2]";s:54:"centroscomerciales/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?centroscomerciales=$matches[1]&cpage=$matches[2]";s:39:"centroscomerciales/([^/]+)(/[0-9]+)?/?$";s:57:"index.php?centroscomerciales=$matches[1]&page=$matches[2]";s:35:"centroscomerciales/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"centroscomerciales/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"centroscomerciales/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"centroscomerciales/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"centroscomerciales/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"farmacias/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"farmacias/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"farmacias/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"farmacias/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"farmacias/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"farmacias/([^/]+)/trackback/?$";s:36:"index.php?farmacias=$matches[1]&tb=1";s:38:"farmacias/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?farmacias=$matches[1]&paged=$matches[2]";s:45:"farmacias/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?farmacias=$matches[1]&cpage=$matches[2]";s:30:"farmacias/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?farmacias=$matches[1]&page=$matches[2]";s:26:"farmacias/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"farmacias/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"farmacias/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"farmacias/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"farmacias/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"localesnocturnos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"localesnocturnos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"localesnocturnos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"localesnocturnos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"localesnocturnos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"localesnocturnos/([^/]+)/trackback/?$";s:43:"index.php?localesnocturnos=$matches[1]&tb=1";s:45:"localesnocturnos/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?localesnocturnos=$matches[1]&paged=$matches[2]";s:52:"localesnocturnos/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?localesnocturnos=$matches[1]&cpage=$matches[2]";s:37:"localesnocturnos/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?localesnocturnos=$matches[1]&page=$matches[2]";s:33:"localesnocturnos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"localesnocturnos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"localesnocturnos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"localesnocturnos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"localesnocturnos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"bwg_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"bwg_gallery/([^/]+)/trackback/?$";s:38:"index.php?bwg_gallery=$matches[1]&tb=1";s:40:"bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?bwg_gallery=$matches[1]&paged=$matches[2]";s:47:"bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]";s:32:"bwg_gallery/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?bwg_gallery=$matches[1]&page=$matches[2]";s:28:"bwg_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"bwg_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"bwg_album/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"bwg_album/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"bwg_album/([^/]+)/trackback/?$";s:36:"index.php?bwg_album=$matches[1]&tb=1";s:38:"bwg_album/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?bwg_album=$matches[1]&paged=$matches[2]";s:45:"bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?bwg_album=$matches[1]&cpage=$matches[2]";s:30:"bwg_album/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?bwg_album=$matches[1]&page=$matches[2]";s:26:"bwg_album/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"bwg_album/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=1416 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1438888698:1'),
(12, 11, '_wp_attached_file', '2015/08/lobby2.jpg'),
(13, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:450;s:4:"file";s:18:"2015/08/lobby2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"lobby2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"lobby2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14, 12, '_wp_attached_file', '2015/08/Focaccia-210x130.jpg'),
(15, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:130;s:4:"file";s:28:"2015/08/Focaccia-210x130.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Focaccia-210x130-150x130.jpg";s:5:"width";i:150;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(19, 15, '_wp_attached_file', '2015/08/images.jpg'),
(20, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:333;s:6:"height";i:151;s:4:"file";s:18:"2015/08/images.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"images-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"images-300x136.jpg";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(24, 18, '_wp_attached_file', '2015/08/004-210x130.jpg'),
(25, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:130;s:4:"file";s:23:"2015/08/004-210x130.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"004-210x130-150x130.jpg";s:5:"width";i:150;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(27, 20, '_wp_attached_file', '2015/08/Damascus-10-210x130.jpg'),
(28, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:130;s:4:"file";s:31:"2015/08/Damascus-10-210x130.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Damascus-10-210x130-150x130.jpg";s:5:"width";i:150;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(33, 23, '_menu_item_type', 'custom'),
(34, 23, '_menu_item_menu_item_parent', '0'),
(35, 23, '_menu_item_object_id', '23'),
(36, 23, '_menu_item_object', 'custom'),
(37, 23, '_menu_item_target', ''),
(38, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 23, '_menu_item_xfn', ''),
(40, 23, '_menu_item_url', ''),
(42, 24, '_menu_item_type', 'custom'),
(43, 24, '_menu_item_menu_item_parent', '0'),
(44, 24, '_menu_item_object_id', '24'),
(45, 24, '_menu_item_object', 'custom'),
(46, 24, '_menu_item_target', ''),
(47, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 24, '_menu_item_xfn', ''),
(49, 24, '_menu_item_url', 'http://localhost/wordpress/'),
(51, 25, '_menu_item_type', 'post_type'),
(52, 25, '_menu_item_menu_item_parent', '23'),
(53, 25, '_menu_item_object_id', '7'),
(54, 25, '_menu_item_object', 'page'),
(55, 25, '_menu_item_target', ''),
(56, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 25, '_menu_item_xfn', ''),
(58, 25, '_menu_item_url', ''),
(60, 27, '_edit_last', '1'),
(61, 27, '_edit_lock', '1438967688:1'),
(62, 29, '_edit_last', '1'),
(63, 29, '_edit_lock', '1438967991:1'),
(64, 30, '_edit_last', '1'),
(65, 30, '_edit_lock', '1438973532:1'),
(66, 34, '_edit_last', '1'),
(67, 34, '_edit_lock', '1438973538:1'),
(68, 36, '_edit_last', '1'),
(69, 36, '_edit_lock', '1438974062:1'),
(70, 36, '_wp_trash_meta_status', 'publish'),
(71, 36, '_wp_trash_meta_time', '1438974229'),
(72, 34, '_wp_trash_meta_status', 'publish'),
(73, 34, '_wp_trash_meta_time', '1438974229'),
(74, 27, '_wp_trash_meta_status', 'publish'),
(75, 27, '_wp_trash_meta_time', '1438974246'),
(76, 7, '_wp_trash_meta_status', 'publish'),
(77, 7, '_wp_trash_meta_time', '1438974246'),
(78, 38, '_edit_last', '1'),
(79, 38, '_edit_lock', '1438974112:1'),
(80, 40, '_edit_last', '1'),
(81, 40, '_edit_lock', '1438974124:1'),
(82, 40, '_wp_trash_meta_status', 'publish'),
(83, 40, '_wp_trash_meta_time', '1438974289'),
(84, 38, '_wp_trash_meta_status', 'publish'),
(85, 38, '_wp_trash_meta_time', '1438974289'),
(86, 43, '_edit_last', '1'),
(87, 43, '_edit_lock', '1439096039:1'),
(88, 45, '_edit_last', '1'),
(89, 45, '_edit_lock', '1439092568:1'),
(90, 47, '_edit_last', '1'),
(91, 47, '_edit_lock', '1439092552:1'),
(92, 49, '_edit_last', '1'),
(93, 49, '_edit_lock', '1439082557:1'),
(94, 51, '_edit_last', '1'),
(95, 51, '_edit_lock', '1439082520:1'),
(96, 53, '_edit_last', '1'),
(97, 53, '_edit_lock', '1439157057:1'),
(98, 55, '_edit_last', '1'),
(99, 55, '_edit_lock', '1439082226:1'),
(100, 57, '_edit_last', '1'),
(101, 57, '_edit_lock', '1439157238:1'),
(102, 63, '_edit_last', '1'),
(103, 63, '_edit_lock', '1438979828:1'),
(104, 65, '_edit_last', '1'),
(105, 65, '_edit_lock', '1438978275:1'),
(106, 67, '_edit_last', '1'),
(107, 67, '_edit_lock', '1439080384:1'),
(108, 69, '_wp_attached_file', '2015/08/negocios.jpg'),
(109, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:281;s:6:"height";i:179;s:4:"file";s:20:"2015/08/negocios.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"negocios-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(110, 57, '_thumbnail_id', '69'),
(111, 70, '_wp_attached_file', '2015/08/cc.jpg'),
(112, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:194;s:4:"file";s:14:"2015/08/cc.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"cc-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"cc-259x170.jpg";s:5:"width";i:259;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(113, 55, '_thumbnail_id', '70'),
(114, 71, '_wp_attached_file', '2015/08/rest.jpg'),
(115, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:16:"2015/08/rest.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"rest-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"rest-275x170.jpg";s:5:"width";i:275;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(116, 53, '_thumbnail_id', '71'),
(117, 72, '_wp_attached_file', '2015/08/disco.jpg'),
(118, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:276;s:6:"height";i:183;s:4:"file";s:17:"2015/08/disco.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"disco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"disco-276x170.jpg";s:5:"width";i:276;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(119, 51, '_thumbnail_id', '72'),
(120, 73, '_wp_attached_file', '2015/08/cc1.jpg'),
(121, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:194;s:4:"file";s:15:"2015/08/cc1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"cc1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:15:"cc1-259x170.jpg";s:5:"width";i:259;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(122, 49, '_thumbnail_id', '73'),
(123, 47, '_thumbnail_id', '74'),
(126, 74, '_wp_attached_file', '2015/08/farmacias.jpg'),
(127, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:335;s:6:"height";i:151;s:4:"file";s:21:"2015/08/farmacias.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"farmacias-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"farmacias-300x135.jpg";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"farmacias-335x150.jpg";s:5:"width";i:335;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(128, 75, '_wp_attached_file', '2015/08/medico.jpg'),
(129, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:307;s:6:"height";i:164;s:4:"file";s:18:"2015/08/medico.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"medico-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"medico-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"medico-307x150.jpg";s:5:"width";i:307;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(130, 45, '_thumbnail_id', '75'),
(131, 76, '_wp_attached_file', '2015/08/taxis.jpg'),
(132, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:165;s:4:"file";s:17:"2015/08/taxis.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"taxis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"taxis-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"taxis-306x150.jpg";s:5:"width";i:306;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(133, 43, '_thumbnail_id', '76'),
(134, 65, '_wp_trash_meta_status', 'publish'),
(135, 65, '_wp_trash_meta_time', '1439096198'),
(136, 63, '_wp_trash_meta_status', 'publish'),
(137, 63, '_wp_trash_meta_time', '1439096198'),
(138, 77, '_edit_last', '1'),
(139, 77, '_edit_lock', '1439097250:1'),
(140, 79, '_edit_last', '1'),
(141, 79, '_edit_lock', '1439097388:1'),
(142, 80, '_edit_last', '1'),
(143, 80, '_edit_lock', '1439147387:1'),
(144, 82, '_edit_last', '1'),
(145, 82, '_edit_lock', '1439097695:1'),
(146, 84, '_edit_last', '1'),
(147, 84, '_edit_lock', '1440220313:1'),
(148, 86, '_edit_last', '1'),
(149, 86, 'field_55c6e50fe4419', 'a:14:{s:3:"key";s:19:"field_55c6e50fe4419";s:5:"label";s:9:"Direccion";s:4:"name";s:9:"direccion";s:4:"type";s:4:"text";s:12:"instructions";s:23:"Introduzca la direccion";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:9:"Direccion";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(150, 86, 'field_55c6e52ee441a', 'a:14:{s:3:"key";s:19:"field_55c6e52ee441a";s:5:"label";s:8:"Telefono";s:4:"name";s:8:"telefono";s:4:"type";s:4:"text";s:12:"instructions";s:29:"Introduzca numero de telefono";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:17:"Numero telefonico";s:7:"prepend";s:3:"+58";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(151, 86, 'field_55c6e588e441b', 'a:14:{s:3:"key";s:19:"field_55c6e588e441b";s:5:"label";s:3:"Rif";s:4:"name";s:3:"rif";s:4:"type";s:4:"text";s:12:"instructions";s:17:"Introduzca el rif";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:3:"Rif";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(152, 86, 'field_55c6e5ace441c', 'a:14:{s:3:"key";s:19:"field_55c6e5ace441c";s:5:"label";s:11:"coordenadas";s:4:"name";s:11:"coordenadas";s:4:"type";s:4:"text";s:12:"instructions";s:30:"Introduzca coordenadas del gps";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:3:"gps";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(154, 86, 'position', 'normal'),
(155, 86, 'layout', 'default'),
(156, 86, 'hide_on_screen', 'a:6:{i:0;s:7:"excerpt";i:1;s:9:"revisions";i:2;s:6:"author";i:3;s:6:"format";i:4;s:4:"tags";i:5;s:15:"send-trackbacks";}'),
(157, 86, '_edit_lock', '1440442969:1'),
(182, 86, 'field_55c6e82853d2d', 'a:14:{s:3:"key";s:19:"field_55c6e82853d2d";s:5:"label";s:7:"resumen";s:4:"name";s:7:"resumen";s:4:"type";s:4:"text";s:12:"instructions";s:15:"Agregar Resumen";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:7:"Resumen";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:2:"80";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(243, 80, 'rif', ''),
(244, 80, '_rif', 'field_55c6e588e441b'),
(245, 80, 'resumen', ''),
(246, 80, '_resumen', 'field_55c6e82853d2d'),
(247, 80, 'direccion', ''),
(248, 80, '_direccion', 'field_55c6e50fe4419'),
(249, 80, 'telefono', ''),
(250, 80, '_telefono', 'field_55c6e52ee441a'),
(251, 80, 'coordenadas', ''),
(252, 80, '_coordenadas', 'field_55c6e5ace441c'),
(253, 1, '_wp_trash_meta_status', 'publish'),
(254, 1, '_wp_trash_meta_time', '1439147008'),
(255, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(256, 86, 'field_55c7aab91e46e', 'a:10:{s:3:"key";s:19:"field_55c7aab91e46e";s:5:"label";s:7:"premium";s:4:"name";s:7:"premium";s:4:"type";s:10:"true_false";s:12:"instructions";s:10:"¿Premium?";s:8:"required";s:1:"0";s:7:"message";s:15:"Usuario Premium";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(280, 102, '_edit_last', '1'),
(281, 102, '_edit_lock', '1440091785:1'),
(282, 102, '_thumbnail_id', '12'),
(283, 102, 'rif', '52874154'),
(284, 102, '_rif', 'field_55c6e588e441b'),
(285, 102, 'resumen', ''),
(286, 102, '_resumen', 'field_55c6e82853d2d'),
(287, 102, 'direccion', 'Av 5 de JUlio'),
(288, 102, '_direccion', 'field_55c6e50fe4419'),
(289, 102, 'telefono', '56456441'),
(290, 102, '_telefono', 'field_55c6e52ee441a'),
(291, 102, 'coordenadas', '526286465'),
(292, 102, '_coordenadas', 'field_55c6e5ace441c'),
(293, 102, 'premium', '1'),
(294, 102, '_premium', 'field_55c7aab91e46e'),
(395, 110, '_edit_last', '1'),
(396, 110, '_edit_lock', '1440037608:1'),
(397, 110, 'rif', ''),
(398, 110, '_rif', 'field_55c6e588e441b'),
(399, 110, 'resumen', ''),
(400, 110, '_resumen', 'field_55c6e82853d2d'),
(401, 110, 'direccion', ''),
(402, 110, '_direccion', 'field_55c6e50fe4419'),
(403, 110, 'telefono', ''),
(404, 110, '_telefono', 'field_55c6e52ee441a'),
(405, 110, 'coordenadas', ''),
(406, 110, '_coordenadas', 'field_55c6e5ace441c'),
(407, 110, 'premium', '0'),
(408, 110, '_premium', 'field_55c7aab91e46e'),
(451, 114, '_wp_attached_file', '2015/08/1.jpg'),
(452, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:13:"2015/08/1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"1-275x150.jpg";s:5:"width";i:275;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(453, 115, '_wp_attached_file', '2015/08/2.jpg'),
(454, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:285;s:6:"height";i:177;s:4:"file";s:13:"2015/08/2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"2-285x150.jpg";s:5:"width";i:285;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(455, 116, '_wp_attached_file', '2015/08/3.jpg'),
(456, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:291;s:6:"height";i:173;s:4:"file";s:13:"2015/08/3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"3-291x150.jpg";s:5:"width";i:291;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(457, 117, '_wp_attached_file', '2015/08/4.jpg'),
(458, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:13:"2015/08/4.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"4-275x150.jpg";s:5:"width";i:275;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(459, 118, '_wp_attached_file', '2015/08/5.jpg'),
(460, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:13:"2015/08/5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"5-275x150.jpg";s:5:"width";i:275;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(461, 119, '_wp_attached_file', '2015/08/6.jpg'),
(462, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:273;s:6:"height";i:185;s:4:"file";s:13:"2015/08/6.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"6-273x150.jpg";s:5:"width";i:273;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(465, 110, '_thumbnail_id', '118'),
(466, 120, '_wp_attached_file', '2015/08/7.jpg'),
(467, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:276;s:6:"height";i:183;s:4:"file";s:13:"2015/08/7.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"7-276x150.jpg";s:5:"width";i:276;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(470, 121, '_wp_attached_file', '2015/08/8.jpg'),
(471, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:199;s:6:"height";i:240;s:4:"file";s:13:"2015/08/8.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"8-199x150.jpg";s:5:"width";i:199;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(473, 122, '_wp_attached_file', '2015/08/9.jpg'),
(474, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1685;s:6:"height";i:1123;s:4:"file";s:13:"2015/08/9.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"9-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"9-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"9-380x150.jpg";s:5:"width";i:380;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-thumbnail";a:4:{s:4:"file";s:13:"9-360x300.jpg";s:5:"width";i:360;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:7.0999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1382388818;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(477, 123, '_wp_attached_file', '2015/08/10.jpg'),
(478, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:350;s:4:"file";s:14:"2015/08/10.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"10-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:14:"10-380x150.jpg";s:5:"width";i:380;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-thumbnail";a:4:{s:4:"file";s:14:"10-360x300.jpg";s:5:"width";i:360;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(483, 80, '_wp_trash_meta_status', 'publish'),
(484, 80, '_wp_trash_meta_time', '1439240068'),
(485, 126, '_edit_last', '1'),
(486, 126, '_edit_lock', '1439240359:1'),
(487, 127, '_wp_attached_file', '2015/08/maruma.jpg'),
(488, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:194;s:4:"file";s:18:"2015/08/maruma.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"maruma-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"maruma-259x150.jpg";s:5:"width";i:259;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(489, 126, '_thumbnail_id', '127'),
(490, 128, 'rif', '254125412'),
(491, 128, '_rif', 'field_55c6e588e441b'),
(492, 128, 'resumen', ''),
(493, 128, '_resumen', 'field_55c6e82853d2d'),
(494, 128, 'direccion', 'Maracaibo'),
(495, 128, '_direccion', 'field_55c6e50fe4419'),
(496, 128, 'telefono', '0424-54521451'),
(497, 128, '_telefono', 'field_55c6e52ee441a'),
(498, 128, 'coordenadas', '123456789'),
(499, 128, '_coordenadas', 'field_55c6e5ace441c'),
(500, 128, 'premium', '0'),
(501, 128, '_premium', 'field_55c7aab91e46e'),
(502, 126, 'rif', '254125412'),
(503, 126, '_rif', 'field_55c6e588e441b'),
(504, 126, 'resumen', ''),
(505, 126, '_resumen', 'field_55c6e82853d2d'),
(506, 126, 'direccion', 'Maracaibo'),
(507, 126, '_direccion', 'field_55c6e50fe4419'),
(508, 126, 'telefono', '0424-54521451'),
(509, 126, '_telefono', 'field_55c6e52ee441a'),
(510, 126, 'coordenadas', '123456789'),
(511, 126, '_coordenadas', 'field_55c6e5ace441c'),
(512, 126, 'premium', '0'),
(513, 126, '_premium', 'field_55c7aab91e46e'),
(514, 129, '_wp_attached_file', '2015/08/disco1.jpg'),
(515, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:90;s:4:"file";s:18:"2015/08/disco1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(516, 84, '_thumbnail_id', '129'),
(517, 130, 'rif', '252541241'),
(518, 130, '_rif', 'field_55c6e588e441b'),
(519, 130, 'resumen', ''),
(520, 130, '_resumen', 'field_55c6e82853d2d'),
(521, 130, 'direccion', 'Av.Prolongacion'),
(522, 130, '_direccion', 'field_55c6e50fe4419'),
(523, 130, 'telefono', '0268-2521241'),
(524, 130, '_telefono', 'field_55c6e52ee441a'),
(525, 130, 'coordenadas', '2521241252'),
(526, 130, '_coordenadas', 'field_55c6e5ace441c'),
(527, 130, 'premium', '0'),
(528, 130, '_premium', 'field_55c7aab91e46e'),
(529, 84, 'rif', '252541241'),
(530, 84, '_rif', 'field_55c6e588e441b'),
(531, 84, 'resumen', ''),
(532, 84, '_resumen', 'field_55c6e82853d2d'),
(533, 84, 'direccion', 'Av.Prolongacion'),
(534, 84, '_direccion', 'field_55c6e50fe4419'),
(535, 84, 'telefono', '0268-2521241'),
(536, 84, '_telefono', 'field_55c6e52ee441a'),
(537, 84, 'coordenadas', '2521241252'),
(538, 84, '_coordenadas', 'field_55c6e5ace441c'),
(539, 84, 'premium', '0'),
(540, 84, '_premium', 'field_55c7aab91e46e'),
(556, 133, '_edit_last', '1'),
(559, 133, '_edit_lock', '1439352366:1'),
(560, 135, '_edit_last', '1'),
(563, 135, '_edit_lock', '1439352397:1'),
(564, 138, '_edit_last', '1'),
(567, 138, '_edit_lock', '1439352536:1'),
(568, 140, '_edit_last', '1'),
(571, 140, '_edit_lock', '1439353600:1'),
(572, 142, '_edit_last', '1'),
(575, 142, '_edit_lock', '1439353676:1'),
(576, 144, '_edit_last', '1'),
(577, 144, '_edit_lock', '1440172377:1'),
(578, 144, 'rif', ''),
(579, 144, '_rif', 'field_55c6e588e441b'),
(580, 144, 'resumen', ''),
(581, 144, '_resumen', 'field_55c6e82853d2d'),
(582, 144, 'direccion', ''),
(583, 144, '_direccion', 'field_55c6e50fe4419'),
(584, 144, 'telefono', ''),
(585, 144, '_telefono', 'field_55c6e52ee441a'),
(586, 144, 'coordenadas', ''),
(587, 144, '_coordenadas', 'field_55c6e5ace441c'),
(588, 144, 'premium', '1'),
(589, 144, '_premium', 'field_55c7aab91e46e'),
(601, 144, '_', 'field_55d53c198c95b'),
(664, 157, '_edit_last', '1'),
(665, 157, '_edit_lock', '1440397235:1'),
(666, 158, 'rif', ''),
(667, 158, '_rif', 'field_55c6e588e441b'),
(668, 158, 'resumen', ''),
(669, 158, '_resumen', 'field_55c6e82853d2d'),
(670, 158, 'direccion', ''),
(671, 158, '_direccion', 'field_55c6e50fe4419'),
(672, 158, 'telefono', ''),
(673, 158, '_telefono', 'field_55c6e52ee441a'),
(674, 158, 'coordenadas', ''),
(675, 158, '_coordenadas', 'field_55c6e5ace441c'),
(676, 158, 'premium', '1'),
(677, 158, '_premium', 'field_55c7aab91e46e'),
(678, 158, '_', 'field_55d53c198c95b'),
(679, 157, 'rif', ''),
(680, 157, '_rif', 'field_55c6e588e441b'),
(681, 157, 'resumen', ''),
(682, 157, '_resumen', 'field_55c6e82853d2d'),
(683, 157, 'direccion', ''),
(684, 157, '_direccion', 'field_55c6e50fe4419'),
(685, 157, 'telefono', ''),
(686, 157, '_telefono', 'field_55c6e52ee441a'),
(687, 157, 'coordenadas', ''),
(688, 157, '_coordenadas', 'field_55c6e5ace441c'),
(689, 157, 'premium', '1'),
(690, 157, '_premium', 'field_55c7aab91e46e'),
(691, 157, '_', 'field_55d53c198c95b'),
(692, 84, '_', 'field_55d53c198c95b'),
(926, 144, '_wp_trash_meta_status', 'publish'),
(927, 144, '_wp_trash_meta_time', '1440281591'),
(936, 110, '_wp_trash_meta_status', 'publish'),
(937, 110, '_wp_trash_meta_time', '1440281592'),
(950, 102, '_wp_trash_meta_status', 'publish'),
(951, 102, '_wp_trash_meta_time', '1440281593'),
(978, 174, '_edit_last', '1'),
(979, 174, '_edit_lock', '1440281963:1'),
(980, 174, '_thumbnail_id', '71'),
(981, 174, 'rif', '456'),
(982, 174, '_rif', 'field_55c6e588e441b'),
(983, 174, 'resumen', '1'),
(984, 174, '_resumen', 'field_55c6e82853d2d'),
(985, 174, 'direccion', '2'),
(986, 174, '_direccion', 'field_55c6e50fe4419'),
(987, 174, 'telefono', '3'),
(988, 174, '_telefono', 'field_55c6e52ee441a'),
(989, 174, 'coordenadas', '546456'),
(990, 174, '_coordenadas', 'field_55c6e5ace441c'),
(991, 174, 'premium', '0'),
(992, 174, '_premium', 'field_55c7aab91e46e'),
(993, 174, '_', 'field_55d53c198c95b'),
(994, 175, '_edit_last', '1'),
(995, 175, '_edit_lock', '1440442870:1'),
(996, 175, 'rif', '254975456'),
(997, 175, '_rif', 'field_55c6e588e441b'),
(998, 175, 'resumen', 'Esto es un resumen'),
(999, 175, '_resumen', 'field_55c6e82853d2d'),
(1000, 175, 'direccion', 'Avenida Pinto Salinas'),
(1001, 175, '_direccion', 'field_55c6e50fe4419'),
(1002, 175, 'telefono', '0426-52514151'),
(1003, 175, '_telefono', 'field_55c6e52ee441a'),
(1004, 175, 'coordenadas', '2312356+456'),
(1005, 175, '_coordenadas', 'field_55c6e5ace441c'),
(1006, 175, 'premium', '1'),
(1007, 175, '_premium', 'field_55c7aab91e46e'),
(1008, 175, '_', 'field_55db3b59ba0d6'),
(1009, 176, '_edit_last', '1'),
(1010, 176, '_edit_lock', '1440283210:1'),
(1011, 176, '_thumbnail_id', '119'),
(1012, 176, 'rif', '123'),
(1013, 176, '_rif', 'field_55c6e588e441b'),
(1014, 176, 'resumen', '123'),
(1015, 176, '_resumen', 'field_55c6e82853d2d'),
(1016, 176, 'direccion', '123'),
(1017, 176, '_direccion', 'field_55c6e50fe4419'),
(1018, 176, 'telefono', '123'),
(1019, 176, '_telefono', 'field_55c6e52ee441a'),
(1020, 176, 'coordenadas', '123'),
(1021, 176, '_coordenadas', 'field_55c6e5ace441c'),
(1022, 176, 'premium', '1'),
(1023, 176, '_premium', 'field_55c7aab91e46e'),
(1024, 176, '_', 'field_55d53c198c95b'),
(1025, 177, '_edit_last', '1'),
(1026, 177, '_edit_lock', '1440282044:1'),
(1027, 177, '_thumbnail_id', '115'),
(1028, 177, 'rif', '123'),
(1029, 177, '_rif', 'field_55c6e588e441b'),
(1030, 177, 'resumen', '123'),
(1031, 177, '_resumen', 'field_55c6e82853d2d'),
(1032, 177, 'direccion', '123'),
(1033, 177, '_direccion', 'field_55c6e50fe4419'),
(1034, 177, 'telefono', '123'),
(1035, 177, '_telefono', 'field_55c6e52ee441a'),
(1036, 177, 'coordenadas', '123'),
(1037, 177, '_coordenadas', 'field_55c6e5ace441c'),
(1038, 177, 'premium', '0'),
(1039, 177, '_premium', 'field_55c7aab91e46e'),
(1040, 177, '_', 'field_55d53c198c95b'),
(1041, 178, '_edit_last', '1'),
(1042, 178, '_edit_lock', '1440311181:1'),
(1043, 178, '_thumbnail_id', '120'),
(1044, 178, 'rif', '123'),
(1045, 178, '_rif', 'field_55c6e588e441b'),
(1046, 178, 'resumen', '123'),
(1047, 178, '_resumen', 'field_55c6e82853d2d'),
(1048, 178, 'direccion', '123'),
(1049, 178, '_direccion', 'field_55c6e50fe4419'),
(1050, 178, 'telefono', '123'),
(1051, 178, '_telefono', 'field_55c6e52ee441a'),
(1052, 178, 'coordenadas', '123'),
(1053, 178, '_coordenadas', 'field_55c6e5ace441c'),
(1054, 178, 'premium', '0'),
(1055, 178, '_premium', 'field_55c7aab91e46e'),
(1056, 178, '_', 'field_55d53c198c95b'),
(1057, 179, '_edit_last', '1'),
(1058, 179, '_edit_lock', '1440311176:1'),
(1059, 179, '_thumbnail_id', '120'),
(1060, 179, 'rif', '123'),
(1061, 179, '_rif', 'field_55c6e588e441b'),
(1062, 179, 'resumen', '123'),
(1063, 179, '_resumen', 'field_55c6e82853d2d'),
(1064, 179, 'direccion', '123'),
(1065, 179, '_direccion', 'field_55c6e50fe4419'),
(1066, 179, 'telefono', '123'),
(1067, 179, '_telefono', 'field_55c6e52ee441a'),
(1068, 179, 'coordenadas', '123'),
(1069, 179, '_coordenadas', 'field_55c6e5ace441c'),
(1070, 179, 'premium', '1'),
(1071, 179, '_premium', 'field_55c7aab91e46e'),
(1072, 179, '_', 'field_55d53c198c95b'),
(1073, 180, '_edit_last', '1'),
(1074, 180, '_edit_lock', '1440283514:1'),
(1075, 180, '_thumbnail_id', '123'),
(1076, 180, 'rif', '123'),
(1077, 180, '_rif', 'field_55c6e588e441b'),
(1078, 180, 'resumen', '123'),
(1079, 180, '_resumen', 'field_55c6e82853d2d'),
(1080, 180, 'direccion', '123'),
(1081, 180, '_direccion', 'field_55c6e50fe4419'),
(1082, 180, 'telefono', '123'),
(1083, 180, '_telefono', 'field_55c6e52ee441a'),
(1084, 180, 'coordenadas', '123123'),
(1085, 180, '_coordenadas', 'field_55c6e5ace441c'),
(1086, 180, 'premium', '0'),
(1087, 180, '_premium', 'field_55c7aab91e46e'),
(1088, 180, '_', 'field_55d53c198c95b'),
(1105, 182, '_edit_last', '1'),
(1106, 182, '_edit_lock', '1440311170:1'),
(1107, 182, 'rif', '125642374'),
(1108, 182, '_rif', 'field_55c6e588e441b'),
(1109, 182, 'resumen', ''),
(1110, 182, '_resumen', 'field_55c6e82853d2d'),
(1111, 182, 'direccion', 'Avenida los Medanos frente al Banco Bicentenario'),
(1112, 182, '_direccion', 'field_55c6e50fe4419'),
(1113, 182, 'telefono', '0424-5254524'),
(1114, 182, '_telefono', 'field_55c6e52ee441a'),
(1115, 182, 'coordenadas', '2213154213'),
(1116, 182, '_coordenadas', 'field_55c6e5ace441c'),
(1117, 182, 'premium', '0'),
(1118, 182, '_premium', 'field_55c7aab91e46e'),
(1119, 182, '_', 'field_55d53c198c95b'),
(1120, 183, '_edit_last', '1'),
(1121, 183, '_edit_lock', '1440311211:1'),
(1122, 183, 'rif', '252124556'),
(1123, 183, '_rif', 'field_55c6e588e441b'),
(1124, 183, 'resumen', ''),
(1125, 183, '_resumen', 'field_55c6e82853d2d'),
(1126, 183, 'direccion', 'asdadasdad'),
(1127, 183, '_direccion', 'field_55c6e50fe4419'),
(1128, 183, 'telefono', '0416-25214154'),
(1129, 183, '_telefono', 'field_55c6e52ee441a'),
(1130, 183, 'coordenadas', '25212454212'),
(1131, 183, '_coordenadas', 'field_55c6e5ace441c'),
(1132, 183, 'premium', '1'),
(1133, 183, '_premium', 'field_55c7aab91e46e'),
(1134, 183, '_', 'field_55d53c198c95b'),
(1135, 184, '_edit_last', '1'),
(1136, 184, '_edit_lock', '1440311308:1'),
(1137, 184, 'rif', '123123'),
(1138, 184, '_rif', 'field_55c6e588e441b'),
(1139, 184, 'resumen', '123123'),
(1140, 184, '_resumen', 'field_55c6e82853d2d'),
(1141, 184, 'direccion', '123123'),
(1142, 184, '_direccion', 'field_55c6e50fe4419'),
(1143, 184, 'telefono', '123123'),
(1144, 184, '_telefono', 'field_55c6e52ee441a'),
(1145, 184, 'coordenadas', '123123123'),
(1146, 184, '_coordenadas', 'field_55c6e5ace441c'),
(1147, 184, 'premium', '1'),
(1148, 184, '_premium', 'field_55c7aab91e46e'),
(1149, 184, '_', 'field_55d53c198c95b'),
(1150, 185, '_edit_last', '1'),
(1151, 185, '_edit_lock', '1440311255:1'),
(1152, 185, 'rif', '123123'),
(1153, 185, '_rif', 'field_55c6e588e441b'),
(1154, 185, 'resumen', '123213'),
(1155, 185, '_resumen', 'field_55c6e82853d2d'),
(1156, 185, 'direccion', '123123'),
(1157, 185, '_direccion', 'field_55c6e50fe4419'),
(1158, 185, 'telefono', '123123213'),
(1159, 185, '_telefono', 'field_55c6e52ee441a'),
(1160, 185, 'coordenadas', '123123123123'),
(1161, 185, '_coordenadas', 'field_55c6e5ace441c'),
(1162, 185, 'premium', '0'),
(1163, 185, '_premium', 'field_55c7aab91e46e'),
(1164, 185, '_', 'field_55d53c198c95b'),
(1165, 186, '_edit_last', '1'),
(1166, 186, '_edit_lock', '1440311236:1'),
(1167, 186, 'rif', '2127454242'),
(1168, 186, '_rif', 'field_55c6e588e441b'),
(1169, 186, 'resumen', ''),
(1170, 186, '_resumen', 'field_55c6e82853d2d'),
(1171, 186, 'direccion', 'asdasdasd'),
(1172, 186, '_direccion', 'field_55c6e50fe4419'),
(1173, 186, 'telefono', '45646456456'),
(1174, 186, '_telefono', 'field_55c6e52ee441a'),
(1175, 186, 'coordenadas', '4564645645'),
(1176, 186, '_coordenadas', 'field_55c6e5ace441c'),
(1177, 186, 'premium', '0'),
(1178, 186, '_premium', 'field_55c7aab91e46e'),
(1179, 186, '_', 'field_55d53c198c95b'),
(1240, 191, '_edit_last', '1'),
(1241, 191, '_edit_lock', '1440283388:1'),
(1242, 191, 'rif', ''),
(1243, 191, '_rif', 'field_55c6e588e441b'),
(1244, 191, 'resumen', ''),
(1245, 191, '_resumen', 'field_55c6e82853d2d'),
(1246, 191, 'direccion', ''),
(1247, 191, '_direccion', 'field_55c6e50fe4419'),
(1248, 191, 'telefono', ''),
(1249, 191, '_telefono', 'field_55c6e52ee441a'),
(1250, 191, 'coordenadas', ''),
(1251, 191, '_coordenadas', 'field_55c6e5ace441c'),
(1252, 191, 'premium', '0'),
(1253, 191, '_premium', 'field_55c7aab91e46e'),
(1254, 191, '_', 'field_55d53c198c95b'),
(1255, 192, '_edit_last', '1'),
(1256, 192, '_edit_lock', '1440283881:1'),
(1257, 192, 'rif', ''),
(1258, 192, '_rif', 'field_55c6e588e441b'),
(1259, 192, 'resumen', ''),
(1260, 192, '_resumen', 'field_55c6e82853d2d'),
(1261, 192, 'direccion', ''),
(1262, 192, '_direccion', 'field_55c6e50fe4419'),
(1263, 192, 'telefono', ''),
(1264, 192, '_telefono', 'field_55c6e52ee441a'),
(1265, 192, 'coordenadas', ''),
(1266, 192, '_coordenadas', 'field_55c6e5ace441c'),
(1267, 192, 'premium', '0'),
(1268, 192, '_premium', 'field_55c7aab91e46e'),
(1269, 192, '_', 'field_55d53c198c95b'),
(1270, 193, '_edit_last', '1'),
(1271, 193, '_edit_lock', '1440288187:1'),
(1272, 193, 'rif', ''),
(1273, 193, '_rif', 'field_55c6e588e441b'),
(1274, 193, 'resumen', ''),
(1275, 193, '_resumen', 'field_55c6e82853d2d'),
(1276, 193, 'direccion', ''),
(1277, 193, '_direccion', 'field_55c6e50fe4419'),
(1278, 193, 'telefono', ''),
(1279, 193, '_telefono', 'field_55c6e52ee441a'),
(1280, 193, 'coordenadas', ''),
(1281, 193, '_coordenadas', 'field_55c6e5ace441c'),
(1282, 193, 'premium', '0'),
(1283, 193, '_premium', 'field_55c7aab91e46e'),
(1284, 193, '_', 'field_55d53c198c95b'),
(1285, 194, '_edit_last', '1'),
(1286, 194, '_edit_lock', '1440313613:1'),
(1287, 194, 'rif', '123456123'),
(1288, 194, '_rif', 'field_55c6e588e441b'),
(1289, 194, 'resumen', ''),
(1290, 194, '_resumen', 'field_55c6e82853d2d'),
(1291, 194, 'direccion', 'Av.5 de Julio con Calle Uno y tres'),
(1292, 194, '_direccion', 'field_55c6e50fe4419'),
(1293, 194, 'telefono', '0426-5854141 / 0269-52458494'),
(1294, 194, '_telefono', 'field_55c6e52ee441a'),
(1295, 194, 'coordenadas', '12345697874215'),
(1296, 194, '_coordenadas', 'field_55c6e5ace441c'),
(1297, 194, 'premium', '1'),
(1298, 194, '_premium', 'field_55c7aab91e46e'),
(1299, 194, '_', 'field_55d53c198c95b'),
(1300, 195, '_wp_attached_file', '2015/08/tony_romas.jpg'),
(1301, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:419;s:6:"height";i:378;s:4:"file";s:22:"2015/08/tony_romas.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"tony_romas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"tony_romas-300x271.jpg";s:5:"width";i:300;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"tony_romas-380x150.jpg";s:5:"width";i:380;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-thumbnail";a:4:{s:4:"file";s:22:"tony_romas-360x300.jpg";s:5:"width";i:360;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1302, 194, '_thumbnail_id', '195'),
(1303, 196, '_edit_last', '1'),
(1304, 196, '_edit_lock', '1440430336:1'),
(1305, 196, 'rif', '123541234123'),
(1306, 196, '_rif', 'field_55c6e588e441b'),
(1307, 196, 'resumen', ''),
(1308, 196, '_resumen', 'field_55c6e82853d2d'),
(1309, 196, 'direccion', 'Avenida 3H Entre calle 73 y 74 '),
(1310, 196, '_direccion', 'field_55c6e50fe4419'),
(1311, 196, 'telefono', ' +58 0414.639.55.35 / 0261.793.65.84 / 792.20.49	'),
(1312, 196, '_telefono', 'field_55c6e52ee441a'),
(1313, 196, 'coordenadas', '12345654123123'),
(1314, 196, '_coordenadas', 'field_55c6e5ace441c'),
(1315, 196, 'premium', '1'),
(1316, 196, '_premium', 'field_55c7aab91e46e'),
(1317, 196, '_', 'field_55d53c198c95b'),
(1318, 196, '_thumbnail_id', '117'),
(1319, 197, '_edit_last', '1'),
(1320, 197, '_edit_lock', '1440449753:1'),
(1321, 197, 'rif', '1234123123'),
(1322, 197, '_rif', 'field_55c6e588e441b'),
(1323, 197, 'resumen', ''),
(1324, 197, '_resumen', 'field_55c6e82853d2d'),
(1325, 197, 'direccion', 'Avenida 24 con calle 28 en la esquina inferior izquierda'),
(1326, 197, '_direccion', 'field_55c6e50fe4419'),
(1327, 197, 'telefono', '0426-58541541 / 0424-525141 / 0412-52145104'),
(1328, 197, '_telefono', 'field_55c6e52ee441a'),
(1329, 197, 'coordenadas', '254152963981'),
(1330, 197, '_coordenadas', 'field_55c6e5ace441c'),
(1331, 197, 'premium', '1'),
(1332, 197, '_premium', 'field_55c7aab91e46e'),
(1333, 197, '_', 'field_55d53c198c95b'),
(1334, 197, '_thumbnail_id', '118'),
(1335, 193, '_wp_trash_meta_status', 'publish'),
(1336, 193, '_wp_trash_meta_time', '1440311033'),
(1337, 192, '_wp_trash_meta_status', 'publish'),
(1338, 192, '_wp_trash_meta_time', '1440311033'),
(1339, 191, '_wp_trash_meta_status', 'publish'),
(1340, 191, '_wp_trash_meta_time', '1440311033'),
(1349, 175, '_thumbnail_id', '121'),
(1350, 182, '_thumbnail_id', '116'),
(1351, 183, '_thumbnail_id', '118'),
(1352, 186, '_thumbnail_id', '120'),
(1353, 185, '_thumbnail_id', '122'),
(1354, 184, '_thumbnail_id', '71'),
(1355, 142, '_wp_trash_meta_status', 'publish'),
(1356, 142, '_wp_trash_meta_time', '1440396834'),
(1357, 140, '_wp_trash_meta_status', 'publish'),
(1358, 140, '_wp_trash_meta_time', '1440396834'),
(1359, 138, '_wp_trash_meta_status', 'publish'),
(1360, 138, '_wp_trash_meta_time', '1440396834'),
(1361, 135, '_wp_trash_meta_status', 'publish'),
(1362, 135, '_wp_trash_meta_time', '1440396834'),
(1363, 133, '_wp_trash_meta_status', 'publish'),
(1364, 133, '_wp_trash_meta_time', '1440396834'),
(1365, 86, 'field_55db3af8ba0d5', 'a:12:{s:3:"key";s:19:"field_55db3af8ba0d5";s:5:"label";s:9:"ubicacion";s:4:"name";s:9:"ubicacion";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:6:"215121";s:10:"center_lng";s:7:"303230.";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55c7aab91e46e";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(1372, 175, 'ubicacion', ''),
(1373, 175, '_ubicacion', 'field_55db3af8ba0d5'),
(1380, 86, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"restaurantes";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1381, 86, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:15:"hotelesyposadas";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(1382, 86, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:18:"centroscomerciales";s:8:"order_no";i:0;s:8:"group_no";i:2;}'),
(1383, 86, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"farmacias";s:8:"order_no";i:0;s:8:"group_no";i:3;}'),
(1384, 86, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:16:"localesnocturnos";s:8:"order_no";i:0;s:8:"group_no";i:4;}'),
(1385, 201, '_edit_last', '1'),
(1386, 201, '_edit_lock', '1440446875:1'),
(1387, 201, '_thumbnail_id', '20'),
(1388, 202, 'rif', '2525415145'),
(1389, 202, '_rif', 'field_55c6e588e441b'),
(1390, 202, 'resumen', '25415412541'),
(1391, 202, '_resumen', 'field_55c6e82853d2d'),
(1392, 202, 'direccion', 'asdasdasdasdasd'),
(1393, 202, '_direccion', 'field_55c6e50fe4419'),
(1394, 202, 'telefono', '0268-252451/0414-52251415'),
(1395, 202, '_telefono', 'field_55c6e52ee441a'),
(1396, 202, 'coordenadas', '154515225451525'),
(1397, 202, '_coordenadas', 'field_55c6e5ace441c'),
(1398, 202, 'premium', '1'),
(1399, 202, '_premium', 'field_55c7aab91e46e'),
(1400, 202, 'ubicacion', ''),
(1401, 202, '_ubicacion', 'field_55db3af8ba0d5'),
(1402, 201, 'rif', '2525415145'),
(1403, 201, '_rif', 'field_55c6e588e441b'),
(1404, 201, 'resumen', '25415412541'),
(1405, 201, '_resumen', 'field_55c6e82853d2d'),
(1406, 201, 'direccion', 'asdasdasdasdasd'),
(1407, 201, '_direccion', 'field_55c6e50fe4419'),
(1408, 201, 'telefono', '0268-252451/0414-52251415'),
(1409, 201, '_telefono', 'field_55c6e52ee441a'),
(1410, 201, 'coordenadas', '154515225451525'),
(1411, 201, '_coordenadas', 'field_55c6e5ace441c'),
(1412, 201, 'premium', '1'),
(1413, 201, '_premium', 'field_55c7aab91e46e'),
(1414, 201, 'ubicacion', ''),
(1415, 201, '_ubicacion', 'field_55db3af8ba0d5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-06 18:51:28', '2015-08-06 18:51:28', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo', '', '', '2015-08-09 19:03:28', '2015-08-09 19:03:28', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(7, 1, '2015-08-06 18:58:16', '2015-08-06 18:58:16', 'Los Mejores Restaurantes Solo Aquí En ¡Chequea!.', 'Restaurantes', '', 'trash', 'open', 'open', '', 'restaurantes', '', '', '2015-08-07 19:04:06', '2015-08-07 19:04:06', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-08-06 18:58:16', '2015-08-06 18:58:16', 'Los Mejores Restaurantes Solo Aquí En ¡Chequea!.', 'Restaurantes', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-08-06 18:58:16', '2015-08-06 18:58:16', '', 7, 'http://localhost/wordpress/index.php/2015/08/06/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-08-06 19:13:37', '2015-08-06 19:13:37', '', 'lobby2', '', 'inherit', 'open', 'open', '', 'lobby2', '', '', '2015-08-06 19:13:37', '2015-08-06 19:13:37', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/lobby2.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2015-08-06 19:13:55', '2015-08-06 19:13:55', '', 'Focaccia-210x130', '', 'inherit', 'open', 'open', '', 'focaccia-210x130', '', '', '2015-08-06 19:13:55', '2015-08-06 19:13:55', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/Focaccia-210x130.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2015-08-06 19:15:38', '2015-08-06 19:15:38', '', 'images', '', 'inherit', 'open', 'open', '', 'images', '', '', '2015-08-06 19:15:38', '2015-08-06 19:15:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2015-08-06 19:16:39', '2015-08-06 19:16:39', '', '004-210x130', '', 'inherit', 'open', 'open', '', '004-210x130', '', '', '2015-08-06 19:16:39', '2015-08-06 19:16:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/004-210x130.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-08-06 19:18:21', '2015-08-06 19:18:21', '', 'Damascus-10-210x130', '', 'inherit', 'open', 'open', '', 'damascus-10-210x130', '', '', '2015-08-06 19:18:21', '2015-08-06 19:18:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/Damascus-10-210x130.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2015-08-06 19:24:05', '2015-08-06 19:24:05', '', 'Categorías', 'Seleccione una Categoría', 'publish', 'open', 'open', '', 'categorias', '', '', '2015-08-06 19:25:09', '2015-08-06 19:25:09', '', 0, 'http://localhost/wordpress/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2015-08-06 19:24:05', '2015-08-06 19:24:05', '', 'Inicio', 'Ir al Inicio', 'publish', 'open', 'open', '', 'inicio', '', '', '2015-08-06 19:25:09', '2015-08-06 19:25:09', '', 0, 'http://localhost/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2015-08-06 19:24:23', '2015-08-06 19:24:23', ' ', '', '', 'publish', 'open', 'open', '', '25', '', '', '2015-08-06 19:25:09', '2015-08-06 19:25:09', '', 0, 'http://localhost/wordpress/?p=25', 3, 'nav_menu_item', '', 0),
(27, 1, '2015-08-07 17:14:41', '2015-08-07 17:14:41', '', 'Hoteles', '', 'trash', 'open', 'open', '', 'hoteles', '', '', '2015-08-07 19:04:06', '2015-08-07 19:04:06', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2015-08-07 17:14:41', '2015-08-07 17:14:41', '', 'Hoteles', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-08-07 17:14:41', '2015-08-07 17:14:41', '', 27, 'http://localhost/wordpress/index.php/2015/08/07/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-08-07 17:19:51', '0000-00-00 00:00:00', '', 'maruma', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-07 17:19:51', '2015-08-07 17:19:51', '', 0, 'http://localhost/wordpress/?post_type=hoteles&#038;p=29', 0, 'hoteles', '', 0),
(30, 1, '2015-08-07 17:21:14', '2015-08-07 17:21:14', 'uyguyfgty', 'Maruma', '', 'publish', 'open', 'open', '', 'maruma', '', '', '2015-08-07 17:24:46', '2015-08-07 17:24:46', '', 0, 'http://localhost/wordpress/?post_type=hoteles&#038;p=30', 0, 'hoteles', '', 0),
(31, 1, '2015-08-07 17:21:14', '2015-08-07 17:21:14', '', 'Maruma', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-08-07 17:21:14', '2015-08-07 17:21:14', '', 30, 'http://localhost/wordpress/index.php/2015/08/07/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-08-07 17:24:46', '2015-08-07 17:24:46', 'uyguyfgty', 'Maruma', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-08-07 17:24:46', '2015-08-07 17:24:46', '', 30, 'http://localhost/wordpress/index.php/2015/08/07/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-08-07 17:25:47', '2015-08-07 17:25:47', 'uyguyfgty', 'Maruma', 'prueba', 'inherit', 'open', 'open', '', '30-autosave-v1', '', '', '2015-08-07 17:25:47', '2015-08-07 17:25:47', '', 30, 'http://localhost/wordpress/index.php/2015/08/07/30-autosave-v1/', 0, 'revision', '', 0),
(34, 1, '2015-08-07 18:54:41', '2015-08-07 18:54:41', '', 'Negocio', '', 'trash', 'open', 'open', '', 'negocio', '', '', '2015-08-07 19:03:49', '2015-08-07 19:03:49', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-08-07 18:54:41', '2015-08-07 18:54:41', '', 'Negocio', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-08-07 18:54:41', '2015-08-07 18:54:41', '', 34, 'http://localhost/wordpress/index.php/2015/08/07/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-08-07 18:54:46', '2015-08-07 18:54:46', '', 'Medicos', '', 'trash', 'open', 'open', '', 'medicos', '', '', '2015-08-07 19:03:49', '2015-08-07 19:03:49', '', 0, 'http://localhost/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2015-08-07 18:54:46', '2015-08-07 18:54:46', '', 'Medicos', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-08-07 18:54:46', '2015-08-07 18:54:46', '', 36, 'http://localhost/wordpress/index.php/2015/08/07/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-08-07 19:04:15', '2015-08-07 19:04:15', '', 'Negocios', '', 'trash', 'open', 'open', '', 'negocios', '', '', '2015-08-07 19:04:49', '2015-08-07 19:04:49', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2015-08-07 19:04:15', '2015-08-07 19:04:15', '', 'Negocios', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2015-08-07 19:04:15', '2015-08-07 19:04:15', '', 38, 'http://localhost/wordpress/index.php/2015/08/07/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-08-07 19:04:27', '2015-08-07 19:04:27', '', 'Centros Comerciales', '', 'trash', 'open', 'open', '', 'centros-comerciales', '', '', '2015-08-07 19:04:49', '2015-08-07 19:04:49', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2015-08-07 19:04:27', '2015-08-07 19:04:27', '', 'Centros Comerciales', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2015-08-07 19:04:27', '2015-08-07 19:04:27', '', 40, 'http://localhost/wordpress/index.php/2015/08/07/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-08-07 19:05:03', '2015-08-07 19:05:03', '', 'Lineas de Taxi', '', 'publish', 'open', 'closed', '', 'lineas-de-taxi', '', '', '2015-08-09 03:58:46', '2015-08-09 03:58:46', '', 67, 'http://localhost/wordpress/?page_id=43', 8, 'page', '', 0),
(44, 1, '2015-08-07 19:05:03', '2015-08-07 19:05:03', '', 'Lineas de Taxi', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2015-08-07 19:05:03', '2015-08-07 19:05:03', '', 43, 'http://localhost/wordpress/index.php/2015/08/07/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-08-07 19:05:10', '2015-08-07 19:05:10', '', 'Servicios Medicos', '', 'publish', 'open', 'closed', '', 'servicios-medicos', '', '', '2015-08-09 03:58:31', '2015-08-09 03:58:31', '', 67, 'http://localhost/wordpress/?page_id=45', 7, 'page', '', 0),
(46, 1, '2015-08-07 19:05:10', '2015-08-07 19:05:10', '', 'Servicios Medicos', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-08-07 19:05:10', '2015-08-07 19:05:10', '', 45, 'http://localhost/wordpress/index.php/2015/08/07/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-08-07 19:05:23', '2015-08-07 19:05:23', '', 'Farmacias', '', 'publish', 'open', 'closed', '', 'farmacias', '', '', '2015-08-09 03:58:16', '2015-08-09 03:58:16', '', 67, 'http://localhost/wordpress/?page_id=47', 6, 'page', '', 0),
(48, 1, '2015-08-07 19:05:23', '2015-08-07 19:05:23', '', 'Farmacias', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-08-07 19:05:23', '2015-08-07 19:05:23', '', 47, 'http://localhost/wordpress/index.php/2015/08/07/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2015-08-07 19:05:32', '2015-08-07 19:05:32', '5', 'Hoteles y Posadas', '', 'publish', 'open', 'closed', '', 'hoteles-y-posadas', '', '', '2015-08-09 01:11:17', '2015-08-09 01:11:17', '', 67, 'http://localhost/wordpress/?page_id=49', 5, 'page', '', 0),
(50, 1, '2015-08-07 19:05:32', '2015-08-07 19:05:32', '', 'Hoteles y Posadas', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-08-07 19:05:32', '2015-08-07 19:05:32', '', 49, 'http://localhost/wordpress/index.php/2015/08/07/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-08-07 19:05:41', '2015-08-07 19:05:41', '4', 'Locales Nocturnos', '', 'publish', 'open', 'closed', '', 'locales-nocturnos', '', '', '2015-08-09 01:07:29', '2015-08-09 01:07:29', '', 67, 'http://localhost/wordpress/?page_id=51', 4, 'page', '', 0),
(52, 1, '2015-08-07 19:05:41', '2015-08-07 19:05:41', '', 'Locales Nocturnos', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-08-07 19:05:41', '2015-08-07 19:05:41', '', 51, 'http://localhost/wordpress/index.php/2015/08/07/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-08-07 19:05:51', '2015-08-07 19:05:51', '33', 'Restaurantes', '', 'publish', 'open', 'closed', '', 'restaurantes-2', '', '', '2015-08-09 21:52:46', '2015-08-09 21:52:46', '', 67, 'http://localhost/wordpress/?page_id=53', 3, 'page', '', 0),
(54, 1, '2015-08-07 19:05:51', '2015-08-07 19:05:51', '', 'Restaurantes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-08-07 19:05:51', '2015-08-07 19:05:51', '', 53, 'http://localhost/wordpress/index.php/2015/08/07/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-08-07 19:05:59', '2015-08-07 19:05:59', '1', 'Centros Comerciales', '', 'publish', 'open', 'closed', '', 'centros-comerciales-2', '', '', '2015-08-09 01:06:09', '2015-08-09 01:06:09', '', 67, 'http://localhost/wordpress/?page_id=55', 1, 'page', '', 0),
(56, 1, '2015-08-07 19:05:59', '2015-08-07 19:05:59', '', 'Centros Comerciales', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-08-07 19:05:59', '2015-08-07 19:05:59', '', 55, 'http://localhost/wordpress/index.php/2015/08/07/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-08-07 19:06:05', '2015-08-07 19:06:05', '', 'Negocios', '', 'publish', 'open', 'closed', '', 'negocios-2', '', '', '2015-08-09 00:26:23', '2015-08-09 00:26:23', '', 67, 'http://localhost/wordpress/?page_id=57', 0, 'page', '', 0),
(58, 1, '2015-08-07 19:06:05', '2015-08-07 19:06:05', '', 'Negocios', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-08-07 19:06:05', '2015-08-07 19:06:05', '', 57, 'http://localhost/wordpress/index.php/2015/08/07/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-08-07 19:07:37', '2015-08-07 19:07:37', '1', 'Centros Comerciales', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-08-07 19:07:37', '2015-08-07 19:07:37', '', 55, 'http://localhost/wordpress/index.php/2015/08/07/55-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-08-07 19:08:38', '2015-08-07 19:08:38', '33', 'Restaurantes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-08-07 19:08:38', '2015-08-07 19:08:38', '', 53, 'http://localhost/wordpress/index.php/2015/08/07/53-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-08-07 19:08:48', '2015-08-07 19:08:48', '4', 'Locales Nocturnos', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-08-07 19:08:48', '2015-08-07 19:08:48', '', 51, 'http://localhost/wordpress/index.php/2015/08/07/51-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-08-07 19:08:59', '2015-08-07 19:08:59', '5', 'Hoteles y Posadas', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-08-07 19:08:59', '2015-08-07 19:08:59', '', 49, 'http://localhost/wordpress/index.php/2015/08/07/49-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-08-07 19:58:22', '2015-08-07 19:58:22', '', 'TEST', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-08-09 04:56:38', '2015-08-09 04:56:38', '', 0, 'http://localhost/wordpress/?post_type=hotelesyposadas&#038;p=63', 0, 'hotelesyposadas', '', 0),
(64, 1, '2015-08-07 19:58:22', '2015-08-07 19:58:22', '', 'TEST', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2015-08-07 19:58:22', '2015-08-07 19:58:22', '', 63, 'http://localhost/wordpress/index.php/2015/08/07/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-08-07 20:11:02', '2015-08-07 20:11:02', 'asd', 'AASDSDSD', 'TESTING', 'trash', 'open', 'open', '', 'aasdsdsd', '', '', '2015-08-09 04:56:38', '2015-08-09 04:56:38', '', 0, 'http://localhost/wordpress/?post_type=hotelesyposadas&#038;p=65', 0, 'hotelesyposadas', '', 0),
(66, 1, '2015-08-07 20:11:02', '2015-08-07 20:11:02', 'asd', 'AASDSDSD', 'TESTING', 'inherit', 'open', 'open', '', '65-revision-v1', '', '', '2015-08-07 20:11:02', '2015-08-07 20:11:02', '', 65, 'http://localhost/wordpress/index.php/2015/08/07/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-08-08 23:59:28', '2015-08-08 23:59:28', '', 'Secciones', '', 'publish', 'open', 'open', '', 'secciones', '', '', '2015-08-08 23:59:28', '2015-08-08 23:59:28', '', 0, 'http://localhost/wordpress/?page_id=67', 0, 'page', '', 0),
(68, 1, '2015-08-08 23:59:28', '2015-08-08 23:59:28', '', 'Secciones', '', 'inherit', 'open', 'open', '', '67-revision-v1', '', '', '2015-08-08 23:59:28', '2015-08-08 23:59:28', '', 67, 'http://localhost/wordpress/index.php/2015/08/08/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2015-08-09 00:26:14', '2015-08-09 00:26:14', '', 'negocios', '', 'inherit', 'open', 'open', '', 'negocios-3', '', '', '2015-08-09 00:26:14', '2015-08-09 00:26:14', '', 57, 'http://localhost/wordpress/wp-content/uploads/2015/08/negocios.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2015-08-09 01:06:03', '2015-08-09 01:06:03', '', 'cc', '', 'inherit', 'open', 'open', '', 'cc', '', '', '2015-08-09 01:06:03', '2015-08-09 01:06:03', '', 55, 'http://localhost/wordpress/wp-content/uploads/2015/08/cc.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2015-08-09 01:06:22', '2015-08-09 01:06:22', '', 'rest', '', 'inherit', 'open', 'open', '', 'rest', '', '', '2015-08-09 01:06:22', '2015-08-09 01:06:22', '', 53, 'http://localhost/wordpress/wp-content/uploads/2015/08/rest.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2015-08-09 01:07:24', '2015-08-09 01:07:24', '', 'disco', '', 'inherit', 'open', 'open', '', 'disco', '', '', '2015-08-09 01:07:24', '2015-08-09 01:07:24', '', 51, 'http://localhost/wordpress/wp-content/uploads/2015/08/disco.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2015-08-09 01:11:15', '2015-08-09 01:11:15', '', 'cc', '', 'inherit', 'open', 'open', '', 'cc-2', '', '', '2015-08-09 01:11:15', '2015-08-09 01:11:15', '', 49, 'http://localhost/wordpress/wp-content/uploads/2015/08/cc1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2015-08-09 03:58:12', '2015-08-09 03:58:12', '', 'farmacias', '', 'inherit', 'open', 'open', '', 'farmacias-2', '', '', '2015-08-09 03:58:12', '2015-08-09 03:58:12', '', 47, 'http://localhost/wordpress/wp-content/uploads/2015/08/farmacias.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2015-08-09 03:58:29', '2015-08-09 03:58:29', '', 'medico', '', 'inherit', 'open', 'open', '', 'medico', '', '', '2015-08-09 03:58:29', '2015-08-09 03:58:29', '', 45, 'http://localhost/wordpress/wp-content/uploads/2015/08/medico.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2015-08-09 03:58:44', '2015-08-09 03:58:44', '', 'taxis', '', 'inherit', 'open', 'open', '', 'taxis', '', '', '2015-08-09 03:58:44', '2015-08-09 03:58:44', '', 43, 'http://localhost/wordpress/wp-content/uploads/2015/08/taxis.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2015-08-09 04:57:32', '2015-08-09 04:57:32', '', 'Costa Azul', '', 'publish', 'open', 'open', '', 'costa-azul', '', '', '2015-08-09 04:57:32', '2015-08-09 04:57:32', '', 0, 'http://localhost/wordpress/?post_type=centroscomerciales&#038;p=77', 0, 'centroscomerciales', '', 0),
(78, 1, '2015-08-09 04:57:32', '2015-08-09 04:57:32', '', 'Costa Azul', '', 'inherit', 'open', 'open', '', '77-revision-v1', '', '', '2015-08-09 04:57:32', '2015-08-09 04:57:32', '', 77, 'http://localhost/wordpress/index.php/2015/08/09/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2015-08-09 05:17:18', '2015-08-09 05:17:18', '', 'Santa Cruz', '', 'publish', 'closed', 'closed', '', 'santa-cruz', '', '', '2015-08-09 05:17:18', '2015-08-09 05:17:18', '', 0, 'http://localhost/wordpress/?post_type=farmacias&#038;p=79', 0, 'farmacias', '', 0),
(80, 1, '2015-08-09 05:19:35', '2015-08-09 05:19:35', '', 'El Bunker', '', 'trash', 'open', 'open', '', 'el-bunker', '', '', '2015-08-10 20:54:28', '2015-08-10 20:54:28', '', 0, 'http://localhost/wordpress/?post_type=hotelesyposadas&#038;p=80', 0, 'hotelesyposadas', '', 0),
(81, 1, '2015-08-09 05:19:35', '2015-08-09 05:19:35', '', 'El Bunker', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-08-09 05:19:35', '2015-08-09 05:19:35', '', 80, 'http://localhost/wordpress/index.php/2015/08/09/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2015-08-09 05:22:29', '2015-08-09 05:22:29', '', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2015-08-09 05:22:29', '2015-08-09 05:22:29', '', 0, 'http://localhost/wordpress/?post_type=centroscomerciales&#038;p=82', 0, 'centroscomerciales', '', 0),
(83, 1, '2015-08-09 05:22:29', '2015-08-09 05:22:29', '', 'test', '', 'inherit', 'open', 'open', '', '82-revision-v1', '', '', '2015-08-09 05:22:29', '2015-08-09 05:22:29', '', 82, 'http://localhost/wordpress/index.php/2015/08/09/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-08-09 05:28:08', '2015-08-09 05:28:08', '', 'Rain', '', 'publish', 'open', 'open', '', 'rain', '', '', '2015-08-22 04:34:24', '2015-08-22 04:34:24', '', 0, 'http://localhost/wordpress/?post_type=localesnocturnos&#038;p=84', 0, 'localesnocturnos', '', 0),
(85, 1, '2015-08-09 05:28:08', '2015-08-09 05:28:08', '', 'Rain', '', 'inherit', 'open', 'open', '', '84-revision-v1', '', '', '2015-08-09 05:28:08', '2015-08-09 05:28:08', '', 84, 'http://localhost/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2015-08-09 05:32:08', '2015-08-09 05:32:08', '', 'Chequeate info', '', 'publish', 'closed', 'closed', '', 'acf_chequeate-info', '', '', '2015-08-24 19:05:04', '2015-08-24 19:05:04', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=86', 0, 'acf', '', 0),
(100, 1, '2015-08-09 19:03:28', '2015-08-09 19:03:28', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-08-09 19:03:28', '2015-08-09 19:03:28', '', 1, 'http://localhost/wordpress/?p=100', 0, 'revision', '', 0),
(102, 1, '2015-08-09 21:53:53', '2015-08-09 21:53:53', '', 'Tony Romas', '', 'trash', 'open', 'closed', '', 'tony-romas', '', '', '2015-08-22 22:13:13', '2015-08-22 22:13:13', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=102', 0, 'restaurantes', '', 0),
(110, 1, '2015-08-10 18:21:11', '2015-08-10 18:21:11', '', 'Salomon', '', 'trash', 'open', 'closed', '', 'salomon', '', '', '2015-08-22 22:13:12', '2015-08-22 22:13:12', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=110', 0, 'restaurantes', '', 0),
(114, 1, '2015-08-10 20:36:12', '2015-08-10 20:36:12', '', '1', '', 'inherit', 'open', 'open', '', '1', '', '', '2015-08-10 20:36:12', '2015-08-10 20:36:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2015-08-10 20:36:12', '2015-08-10 20:36:12', '', '2', '', 'inherit', 'open', 'open', '', '2', '', '', '2015-08-10 20:36:12', '2015-08-10 20:36:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2015-08-10 20:36:13', '2015-08-10 20:36:13', '', '3', '', 'inherit', 'open', 'open', '', '3', '', '', '2015-08-10 20:36:13', '2015-08-10 20:36:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2015-08-10 20:36:14', '2015-08-10 20:36:14', '', '4', '', 'inherit', 'open', 'open', '', '4', '', '', '2015-08-10 20:36:14', '2015-08-10 20:36:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2015-08-10 20:36:14', '2015-08-10 20:36:14', '', '5', '', 'inherit', 'open', 'open', '', '5', '', '', '2015-08-10 20:36:14', '2015-08-10 20:36:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2015-08-10 20:36:14', '2015-08-10 20:36:14', '', '6', '', 'inherit', 'open', 'open', '', '6', '', '', '2015-08-10 20:36:14', '2015-08-10 20:36:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2015-08-10 20:37:15', '2015-08-10 20:37:15', '', '7', '', 'inherit', 'open', 'open', '', '7', '', '', '2015-08-10 20:37:15', '2015-08-10 20:37:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2015-08-10 20:38:04', '2015-08-10 20:38:04', '', '8', '', 'inherit', 'open', 'open', '', '8', '', '', '2015-08-10 20:38:04', '2015-08-10 20:38:04', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2015-08-10 20:39:28', '2015-08-10 20:39:28', '', '9', '', 'inherit', 'open', 'open', '', '9', '', '', '2015-08-10 20:39:28', '2015-08-10 20:39:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2015-08-10 20:41:31', '2015-08-10 20:41:31', '', '10', '', 'inherit', 'open', 'open', '', '10', '', '', '2015-08-10 20:41:31', '2015-08-10 20:41:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2015-08-10 20:56:29', '2015-08-10 20:56:29', '', 'Hotel Maruma', '', 'publish', 'open', 'open', '', 'hotel-maruma', '', '', '2015-08-10 20:59:18', '2015-08-10 20:59:18', '', 0, 'http://localhost/wordpress/?post_type=hotelesyposadas&#038;p=126', 0, 'hotelesyposadas', '', 0),
(127, 1, '2015-08-10 20:56:05', '2015-08-10 20:56:05', '', 'maruma', '', 'inherit', 'open', 'open', '', 'maruma-2', '', '', '2015-08-10 20:56:05', '2015-08-10 20:56:05', '', 126, 'http://localhost/wordpress/wp-content/uploads/2015/08/maruma.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2015-08-10 20:56:29', '2015-08-10 20:56:29', '', 'Hotel Maruma', '', 'inherit', 'open', 'open', '', '126-revision-v1', '', '', '2015-08-10 20:56:29', '2015-08-10 20:56:29', '', 126, 'http://localhost/wordpress/?p=128', 0, 'revision', '', 0),
(129, 1, '2015-08-10 20:57:43', '2015-08-10 20:57:43', '', 'disco', '', 'inherit', 'open', 'open', '', 'disco-2', '', '', '2015-08-10 20:57:43', '2015-08-10 20:57:43', '', 84, 'http://localhost/wordpress/wp-content/uploads/2015/08/disco1.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2015-08-10 20:58:22', '2015-08-10 20:58:22', '', 'Rain', '', 'inherit', 'open', 'open', '', '84-revision-v1', '', '', '2015-08-10 20:58:22', '2015-08-10 20:58:22', '', 84, 'http://localhost/wordpress/?p=130', 0, 'revision', '', 0),
(133, 1, '2015-08-12 04:07:51', '2015-08-12 04:07:51', 'asd', 'PRueba', '', 'trash', 'open', 'open', '', 'prueba', '', '', '2015-08-24 06:13:54', '2015-08-24 06:13:54', '', 0, 'http://localhost/wordpress/?p=133', 0, 'post', '', 0),
(134, 1, '2015-08-12 04:07:51', '2015-08-12 04:07:51', 'asd', 'PRueba', '', 'inherit', 'open', 'open', '', '133-revision-v1', '', '', '2015-08-12 04:07:51', '2015-08-12 04:07:51', '', 133, 'http://localhost/wordpress/?p=134', 0, 'revision', '', 0),
(135, 1, '2015-08-12 04:08:34', '2015-08-12 04:08:34', '', 'Prueba 2', '', 'trash', 'open', 'open', '', 'prueba-2', '', '', '2015-08-24 06:13:54', '2015-08-24 06:13:54', '', 0, 'http://localhost/wordpress/?p=135', 0, 'post', '', 0),
(136, 1, '2015-08-12 04:08:34', '2015-08-12 04:08:34', '', 'Prueba 2', '', 'inherit', 'open', 'open', '', '135-revision-v1', '', '', '2015-08-12 04:08:34', '2015-08-12 04:08:34', '', 135, 'http://localhost/wordpress/?p=136', 0, 'revision', '', 0),
(138, 1, '2015-08-12 04:09:07', '2015-08-12 04:09:07', '', 'Prueba 3', '', 'trash', 'open', 'open', '', 'prueba-3', '', '', '2015-08-24 06:13:54', '2015-08-24 06:13:54', '', 0, 'http://localhost/wordpress/?p=138', 0, 'post', '', 0),
(139, 1, '2015-08-12 04:09:07', '2015-08-12 04:09:07', '', 'Prueba 3', '', 'inherit', 'open', 'open', '', '138-revision-v1', '', '', '2015-08-12 04:09:07', '2015-08-12 04:09:07', '', 138, 'http://localhost/wordpress/?p=139', 0, 'revision', '', 0),
(140, 1, '2015-08-12 04:29:01', '2015-08-12 04:29:01', '', 'prueba 4', '', 'trash', 'open', 'open', '', 'prueba-4', '', '', '2015-08-24 06:13:54', '2015-08-24 06:13:54', '', 0, 'http://localhost/wordpress/?p=140', 0, 'post', '', 0),
(141, 1, '2015-08-12 04:29:01', '2015-08-12 04:29:01', '', 'prueba 4', '', 'inherit', 'open', 'open', '', '140-revision-v1', '', '', '2015-08-12 04:29:01', '2015-08-12 04:29:01', '', 140, 'http://localhost/wordpress/?p=141', 0, 'revision', '', 0),
(142, 1, '2015-08-12 04:29:09', '2015-08-12 04:29:09', '', 'prueba 5', '', 'trash', 'open', 'open', '', 'prueba-5', '', '', '2015-08-24 06:13:54', '2015-08-24 06:13:54', '', 0, 'http://localhost/wordpress/?p=142', 0, 'post', '', 0),
(143, 1, '2015-08-12 04:29:09', '2015-08-12 04:29:09', '', 'prueba 5', '', 'inherit', 'open', 'open', '', '142-revision-v1', '', '', '2015-08-12 04:29:09', '2015-08-12 04:29:09', '', 142, 'http://localhost/wordpress/?p=143', 0, 'revision', '', 0),
(144, 1, '2015-08-12 07:02:05', '2015-08-12 07:02:05', '', 'Tu punto ligth', '', 'trash', 'open', 'closed', '', 'tu-punto-ligth', '', '', '2015-08-22 22:13:11', '2015-08-22 22:13:11', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=144', 0, 'restaurantes', '', 0),
(145, 1, '2015-08-18 17:41:17', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-18 17:41:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=145', 0, 'post', '', 0),
(146, 1, '2015-08-18 17:46:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-18 17:46:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&p=146', 0, 'restaurantes', '', 0),
(147, 1, '2015-08-18 17:48:35', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-18 17:48:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&p=147', 0, 'restaurantes', '', 0),
(148, 1, '2015-08-20 02:31:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-20 02:31:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf&p=148', 0, 'acf', '', 0),
(149, 1, '2015-08-20 02:32:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-20 02:32:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&p=149', 0, 'restaurantes', '', 0),
(152, 1, '2015-08-21 05:54:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-21 05:54:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=152', 0, 'post', '', 0),
(154, 1, '2015-08-21 16:28:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-21 16:28:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&p=154', 0, 'restaurantes', '', 0),
(155, 1, '2015-08-21 16:28:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-21 16:28:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&p=155', 0, 'restaurantes', '', 0),
(157, 1, '2015-08-22 04:21:13', '2015-08-22 04:21:13', '', 'Boulevard', '', 'publish', 'open', 'open', '', 'boulevard', '', '', '2015-08-22 04:34:16', '2015-08-22 04:34:16', '', 0, 'http://localhost/wordpress/?post_type=localesnocturnos&#038;p=157', 0, 'localesnocturnos', '', 0),
(158, 1, '2015-08-22 04:21:13', '2015-08-22 04:21:13', '', 'Boulevard', '', 'inherit', 'open', 'open', '', '157-revision-v1', '', '', '2015-08-22 04:21:13', '2015-08-22 04:21:13', '', 157, 'http://localhost/wordpress/?p=158', 0, 'revision', '', 0),
(159, 1, '2015-08-22 04:24:11', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-22 04:24:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=centroscomerciales&p=159', 0, 'centroscomerciales', '', 0),
(174, 1, '2015-08-22 22:21:45', '2015-08-22 22:21:45', '', 'Ole Plaza', '', 'publish', 'open', 'open', '', 'ole-plaza-2', '', '', '2015-08-22 22:21:45', '2015-08-22 22:21:45', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=174', 0, 'restaurantes', '', 0),
(175, 1, '2015-08-22 22:22:04', '2015-08-22 22:22:04', '', 'Geralds', '', 'publish', 'open', 'open', '', 'geralds-2', '', '', '2015-08-24 16:35:00', '2015-08-24 16:35:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=175', 0, 'restaurantes', '', 6),
(176, 1, '2015-08-22 22:22:28', '2015-08-22 22:22:28', '', 'A las Brasas', '', 'publish', 'open', 'closed', '', 'a-las-brasas', '', '', '2015-08-22 22:40:10', '2015-08-22 22:40:10', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=176', 0, 'restaurantes', '', 2),
(177, 1, '2015-08-22 22:23:07', '2015-08-22 22:23:07', '', 'El Gaitero', '', 'publish', 'open', 'open', '', 'el-gaitero', '', '', '2015-08-22 22:23:07', '2015-08-22 22:23:07', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=177', 0, 'restaurantes', '', 0),
(178, 1, '2015-08-22 22:23:28', '2015-08-22 22:23:28', '', 'Kokoro Sushi', '', 'publish', 'open', 'open', '', 'kokoro-sushi-2', '', '', '2015-08-22 22:23:28', '2015-08-22 22:23:28', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=178', 0, 'restaurantes', '', 0),
(179, 1, '2015-08-22 22:23:56', '2015-08-22 22:23:56', '', 'Maki Sushi', '', 'publish', 'open', 'open', '', 'maki-sushi', '', '', '2015-08-22 22:23:56', '2015-08-22 22:23:56', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=179', 0, 'restaurantes', '', 1),
(180, 1, '2015-08-22 22:24:19', '2015-08-22 22:24:19', '', 'La Mega', '', 'publish', 'open', 'open', '', 'la-mega', '', '', '2015-08-22 22:45:51', '2015-08-22 22:45:51', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=180', 0, 'restaurantes', '', 0),
(182, 1, '2015-08-22 22:29:45', '2015-08-22 22:29:45', '', 'El Hispano', '', 'publish', 'open', 'open', '', 'el-hispano-2', '', '', '2015-08-23 06:26:09', '2015-08-23 06:26:09', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=182', 0, 'restaurantes', '', 0),
(183, 1, '2015-08-22 22:38:20', '2015-08-22 22:38:20', '', 'La Trattoria', '', 'publish', 'open', 'open', '', 'la-trattoria', '', '', '2015-08-23 06:29:14', '2015-08-23 06:29:14', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=183', 0, 'restaurantes', '', 0),
(184, 1, '2015-08-22 22:38:46', '2015-08-22 22:38:46', '', 'Pepperonata', '', 'publish', 'open', 'open', '', 'pepperonata-2', '', '', '2015-08-23 06:30:16', '2015-08-23 06:30:16', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=184', 0, 'restaurantes', '', 1),
(185, 1, '2015-08-22 22:41:13', '2015-08-22 22:41:13', '', 'Ole Plaza', '', 'publish', 'open', 'open', '', 'ole-plaza-3', '', '', '2015-08-23 06:29:58', '2015-08-23 06:29:58', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=185', 0, 'restaurantes', '', 0),
(186, 1, '2015-08-22 22:42:01', '2015-08-22 22:42:01', '', 'Super Sushi', '', 'publish', 'open', 'open', '', 'super-sushi', '', '', '2015-08-23 06:29:37', '2015-08-23 06:29:37', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=186', 0, 'restaurantes', '', 0),
(191, 1, '2015-08-22 22:44:38', '2015-08-22 22:44:38', '', 'Punto fijo 5', '', 'trash', 'open', 'open', '', 'punto-fijo-5', '', '', '2015-08-23 06:23:53', '2015-08-23 06:23:53', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=191', 0, 'restaurantes', '', 0),
(192, 1, '2015-08-22 22:47:51', '2015-08-22 22:47:51', '', 'Punto fijo 8', '', 'trash', 'open', 'open', '', 'punto-fijo-8', '', '', '2015-08-23 06:23:53', '2015-08-23 06:23:53', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=192', 0, 'restaurantes', '', 0),
(193, 1, '2015-08-22 22:54:00', '2015-08-22 22:54:00', '', 'Punto fijo 9', '', 'trash', 'open', 'open', '', 'punto-fijo-9', '', '', '2015-08-23 06:23:53', '2015-08-23 06:23:53', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=193', 0, 'restaurantes', '', 0),
(194, 1, '2015-08-23 06:04:49', '2015-08-23 06:04:49', '', 'Tonys Romas', '', 'publish', 'open', 'open', '', 'tonys-romas', '', '', '2015-08-23 06:06:50', '2015-08-23 06:06:50', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=194', 0, 'restaurantes', '', 1),
(195, 1, '2015-08-23 06:05:33', '2015-08-23 06:05:33', '', 'tony_romas', '', 'inherit', 'open', 'open', '', 'tony_romas', '', '', '2015-08-23 06:05:33', '2015-08-23 06:05:33', '', 194, 'http://localhost/wordpress/wp-content/uploads/2015/08/tony_romas.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2015-08-23 06:13:54', '2015-08-23 06:13:54', '', 'Sabor Zuliano', '', 'publish', 'open', 'open', '', 'sabor-zuliano', '', '', '2015-08-23 06:14:06', '2015-08-23 06:14:06', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=196', 0, 'restaurantes', '', 10),
(197, 1, '2015-08-23 06:20:59', '2015-08-23 06:20:59', '', 'Sabor de Barcelona', '', 'publish', 'open', 'open', '', 'sabor-de-barcelona', '', '', '2015-08-23 06:21:13', '2015-08-23 06:21:13', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&#038;p=197', 0, 'restaurantes', '', 0),
(198, 1, '2015-08-24 15:36:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-24 15:36:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=198', 0, 'post', '', 0),
(199, 1, '2015-08-24 17:58:10', '2015-08-24 17:58:10', '[Best_Wordpress_Gallery id="1" gal_title="Select Gallery"]', 'Geralds', '', 'inherit', 'open', 'open', '', '175-autosave-v1', '', '', '2015-08-24 17:58:10', '2015-08-24 17:58:10', '', 175, 'http://localhost/wordpress/?p=199', 0, 'revision', '', 0),
(200, 1, '2015-08-24 19:04:18', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-24 19:04:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=restaurantes&p=200', 0, 'restaurantes', '', 0),
(201, 1, '2015-08-24 20:05:18', '2015-08-24 20:05:18', '', 'Hotel X', '', 'publish', 'open', 'open', '', 'hotel-x', '', '', '2015-08-24 20:05:18', '2015-08-24 20:05:18', '', 0, 'http://localhost/wordpress/?post_type=hotelesyposadas&#038;p=201', 0, 'hotelesyposadas', '', 1),
(202, 1, '2015-08-24 20:05:18', '2015-08-24 20:05:18', '', 'Hotel X', '', 'inherit', 'open', 'open', '', '201-revision-v1', '', '', '2015-08-24 20:05:18', '2015-08-24 20:05:18', '', 201, 'http://localhost/wordpress/?p=202', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoria', 'sin-categoria', 0),
(6, 'Menú', 'menu', 0),
(12, 'Falcon', 'falcon', 0),
(14, 'Restaurantes', 'restaurantes', 0),
(16, 'Americana', 'americana', 0),
(17, 'Premium', 'premium', 0),
(18, 'asdasd', 'asdasd', 0),
(19, 'asdasddasdasd', 'asdasddasdasd', 0),
(20, 'Coro', 'coro', 0),
(21, 'estado', 'estado', 0),
(22, 'Española', 'espanola', 0),
(23, 'Arabe', 'arabe', 0),
(24, 'Mediterranea', 'mediterranea', 0),
(25, 'Zulia', 'zulia', 0),
(26, 'Zulia', 'zulia', 0),
(27, 'Cojedes', 'cojedes', 0),
(28, 'Vietnamita', 'vietnamita', 0),
(29, 'China', 'china', 0),
(30, 'Japonesa', 'japonesa', 0),
(31, 'Alemana', 'alemana', 0),
(32, 'Polaca', 'polaca', 0),
(34, 'Comida Rapida', 'comida-rapida', 0),
(35, 'Hoteles y Posadas', 'hoteles-y-posadas', 0),
(36, '1 Estrella', '1-estrella', 0),
(37, '2 Estrella', '2-estrella', 0),
(38, '3 Estrellas', '3-estrellas', 0),
(39, '4 Estrellas', '4-estrellas', 0),
(40, '5 Estrellas', '5-estrellas', 0),
(41, 'africana', 'africana', 0),
(42, 'Coro', 'coro', 0),
(44, 'Punto Fijo', 'punto-fijo', 0),
(45, 'Maracaibo', 'maracaibo', 0),
(46, 'Amazonas', 'amazonas', 0),
(47, 'Anzoátegui', 'anzoategui', 0),
(48, 'Barinas', 'barinas', 0),
(49, 'Aragua', 'aragua', 0),
(50, 'Carabobo', 'carabobo', 0),
(52, 'Bolivar', 'bolivar', 0),
(53, 'Delta Amacuro', 'delta-amacuro', 0),
(54, 'Distrito Capital', 'distrito-capital', 0),
(55, 'Guárico', 'guarico', 0),
(56, 'Merida', 'merida', 0),
(57, 'Lara', 'lara', 0),
(58, 'Miranda', 'miranda', 0),
(59, 'Monagas', 'monagas', 0),
(60, 'Nueva Esparta', 'nueva-esparta', 0),
(61, 'Portuguesa', 'portuguesa', 0),
(62, 'Sucre', 'sucre', 0),
(63, 'Tachira', 'tachira', 0),
(64, 'Trujillo', 'trujillo', 0),
(65, 'Yaracuy', 'yaracuy', 0),
(66, 'Vargas', 'vargas', 0),
(67, 'Barcelona', 'barcelona', 0),
(68, 'Apure', 'apure', 0),
(69, 'Maracai', 'maracai', 0),
(70, 'Centros Comerciales', 'centros-comerciales', 0),
(71, 'Farmacias', 'farmacias', 0),
(72, 'Locales Nocturnos', 'locales-nocturnos', 0),
(73, 'Disco', 'disco', 0),
(74, 'Bar', 'bar', 0),
(75, 'Italiana', 'italiana', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 6, 0),
(24, 6, 0),
(25, 6, 0),
(29, 1, 0),
(30, 1, 0),
(80, 1, 0),
(80, 12, 0),
(80, 14, 0),
(80, 16, 0),
(84, 42, 0),
(84, 73, 0),
(102, 42, 0),
(110, 12, 0),
(110, 34, 0),
(110, 42, 0),
(126, 25, 0),
(126, 40, 0),
(133, 1, 0),
(135, 1, 0),
(138, 1, 0),
(140, 1, 0),
(142, 1, 0),
(144, 12, 0),
(144, 24, 0),
(144, 42, 0),
(157, 44, 0),
(157, 74, 0),
(174, 16, 0),
(174, 42, 0),
(175, 34, 0),
(175, 42, 0),
(176, 16, 0),
(176, 42, 0),
(177, 16, 0),
(177, 42, 0),
(178, 30, 0),
(178, 42, 0),
(179, 30, 0),
(179, 42, 0),
(180, 34, 0),
(180, 42, 0),
(180, 44, 0),
(182, 22, 0),
(182, 42, 0),
(183, 42, 0),
(183, 75, 0),
(184, 42, 0),
(184, 75, 0),
(185, 16, 0),
(185, 42, 0),
(186, 30, 0),
(186, 42, 0),
(191, 28, 0),
(191, 44, 0),
(192, 32, 0),
(192, 44, 0),
(193, 29, 0),
(193, 44, 0),
(194, 16, 0),
(194, 45, 0),
(196, 45, 0),
(197, 24, 0),
(197, 67, 0),
(201, 40, 0),
(201, 44, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 3),
(12, 12, 'estado', '', 0, 0),
(14, 14, 'category', '', 0, 0),
(16, 16, 'category', '', 14, 5),
(17, 17, 'category', '', 0, 0),
(18, 18, 'discotecas', '', 0, 0),
(19, 19, 'discotecas', '', 0, 0),
(20, 20, 'ciudades', '', 0, 0),
(21, 21, 'post_tag', '', 0, 0),
(22, 22, 'category', '', 14, 1),
(23, 23, 'category', '', 14, 0),
(24, 24, 'category', '', 14, 1),
(25, 25, 'estado', '', 0, 1),
(26, 26, 'post_tag', '', 0, 0),
(27, 27, 'estado', '', 0, 0),
(28, 28, 'category', '', 14, 0),
(29, 29, 'category', '', 14, 0),
(30, 30, 'category', '', 14, 3),
(31, 31, 'category', '', 14, 0),
(32, 32, 'category', '', 14, 0),
(34, 34, 'category', '', 14, 2),
(35, 35, 'category', '', 0, 0),
(36, 36, 'category', '', 35, 0),
(37, 37, 'category', '', 35, 0),
(38, 38, 'category', '', 35, 0),
(39, 39, 'category', '', 35, 0),
(40, 40, 'category', '', 35, 2),
(41, 41, 'category', '', 14, 0),
(42, 42, 'estado', '', 12, 13),
(44, 44, 'estado', '', 12, 3),
(45, 45, 'estado', '', 25, 2),
(46, 46, 'estado', '', 0, 0),
(47, 47, 'estado', '', 0, 0),
(48, 48, 'estado', '', 0, 0),
(49, 49, 'estado', '', 0, 0),
(50, 50, 'estado', '', 0, 0),
(52, 52, 'estado', '', 0, 0),
(53, 53, 'estado', '', 0, 0),
(54, 54, 'estado', '', 0, 0),
(55, 55, 'estado', '', 0, 0),
(56, 56, 'estado', '', 0, 0),
(57, 57, 'estado', '', 0, 0),
(58, 58, 'estado', '', 0, 0),
(59, 59, 'estado', '', 0, 0),
(60, 60, 'estado', '', 0, 0),
(61, 61, 'estado', '', 0, 0),
(62, 62, 'estado', '', 0, 0),
(63, 63, 'estado', '', 0, 0),
(64, 64, 'estado', '', 0, 0),
(65, 65, 'estado', '', 0, 0),
(66, 66, 'estado', '', 0, 0),
(67, 67, 'estado', '', 47, 1),
(68, 68, 'estado', '', 0, 0),
(69, 69, 'estado', '', 49, 0),
(70, 70, 'category', '', 0, 0),
(71, 71, 'category', '', 0, 0),
(72, 72, 'category', '', 0, 0),
(73, 73, 'category', '', 72, 1),
(74, 74, 'category', '', 72, 1),
(75, 75, 'category', '', 14, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Chequeate'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:8:{s:64:"f128721c76fc1fdf16807c40daad26e80ffc3809b668920126a59a3c1baa7e6d";a:4:{s:10:"expiration";i:1441426844;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440217244;}s:64:"75e6e69f0b530cc5759a632655b073f20b324681f919d9cfaa36ea4e0b488496";a:4:{s:10:"expiration";i:1440443270;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440270470;}s:64:"fad8b258fb0c843f1968f1118fc4d816ac0df3db555cd3d7b3af70aa1d59323b";a:4:{s:10:"expiration";i:1440482508;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440309708;}s:64:"257b62cd7764f75233102f3a3d009cb1102737ed18fab4470a9a0994c03398f9";a:4:{s:10:"expiration";i:1440565727;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440392927;}s:64:"0459443c0012d100b6e509f76177df59f23a137d3d48d1c7d137a45b53978101";a:4:{s:10:"expiration";i:1440612762;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440439962;}s:64:"a5bee604dbb4d309926fccd0c9dfb48091b9a0bf1b529a18d9364df41b8bad0b";a:4:{s:10:"expiration";i:1440613003;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440440203;}s:64:"7c1f721cc2e9ac71a42501bb2664c9ab5897d78a6631f51673c145a318387ac7";a:4:{s:10:"expiration";i:1440613982;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440441182;}s:64:"bd81eae73635e86712478e6235837547a2f32fa464473856fcb99dc2c371a9e9";a:4:{s:10:"expiration";i:1440614687;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440441887;}}'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list&editor=tinymce&mfold=o&post_dfw=off&hidetb=0'),
(16, 1, 'wp_user-settings-time', '1440442917'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '145'),
(18, 1, 'closedpostboxes_page', 'a:1:{i:0;s:11:"commentsdiv";}'),
(19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(20, 1, 'closedpostboxes_restaurantes', 'a:2:{i:0;s:16:"tagsdiv-post_tag";i:1;s:13:"pageparentdiv";}'),
(21, 1, 'metaboxhidden_restaurantes', 'a:2:{i:0;s:16:"tagsdiv-post_tag";i:1;s:7:"slugdiv";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:16:"add-restaurantes";i:2;s:12:"add-post_tag";}'),
(24, 1, 'closedpostboxes_localesnocturnos', 'a:0:{}'),
(25, 1, 'metaboxhidden_localesnocturnos', 'a:4:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(26, 1, 'meta-box-order_localesnocturnos', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:55:"tagsdiv-discotecas,submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:78:"acf_86,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_localesnocturnos', '2'),
(28, 1, 'meta-box-order_hotelesyposadas', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:80:"categorydiv,submitdiv,tagsdiv-estado,tagsdiv-post_tag,pageparentdiv,postimagediv";s:6:"normal";s:90:"acf_86,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(29, 1, 'screen_layout_hotelesyposadas', '2'),
(30, 1, 'meta-box-order_restaurantes', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:75:"categorydiv,tagsdiv-post_tag,estadodiv,postimagediv,pageparentdiv,submitdiv";s:6:"normal";s:42:"acf_86,postcustom,commentstatusdiv,slugdiv";s:8:"advanced";s:0:"";}'),
(31, 1, 'screen_layout_restaurantes', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Chequeate', '$P$BgwULkwrYRXln5psOA/XH.Y/fctND4.', 'chequeate', 'leonardogalicia18@gmail.com', '', '2015-08-06 18:51:27', '', 0, 'Chequeate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_comments_subscription`
--

CREATE TABLE IF NOT EXISTS `wp_wc_comments_subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribtion_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `subscribtion_type` varchar(255) NOT NULL,
  `activation_key` varchar(255) NOT NULL,
  `confirm` tinyint(4) DEFAULT '0',
  `subscription_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_phrases`
--

CREATE TABLE IF NOT EXISTS `wp_wc_phrases` (
  `id` int(11) NOT NULL,
  `phrase_key` varchar(255) NOT NULL,
  `phrase_value` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_wc_phrases`
--

INSERT INTO `wp_wc_phrases` (`id`, `phrase_key`, `phrase_value`) VALUES
(1, 'wc_leave_a_reply_text', 'Deja tu comentario'),
(2, 'wc_be_the_first_text', 'Se el primero en comentar!'),
(3, 'wc_header_text', 'Comentario'),
(4, 'wc_header_text_plural', 'Comentarios'),
(5, 'wc_header_on_text', 'on'),
(6, 'wc_comment_start_text', 'Comenzar a comentar'),
(7, 'wc_comment_join_text', 'unete a los comentarios'),
(8, 'wc_email_text', 'Email'),
(9, 'wc_name_text', 'Nombre'),
(10, 'wc_website_text', 'WebSite URL'),
(11, 'wc_captcha_text', 'Por favor rellena el codigo'),
(12, 'wc_submit_text', 'Comentar'),
(13, 'wc_manage_subscribtions', 'Manage Subscriptions'),
(14, 'wc_notify_none', 'None'),
(15, 'wc_notify_on_new_comment', 'Notify of all new follow-up comments'),
(16, 'wc_notify_on_all_new_reply', 'Notify of new replies to all my comments'),
(17, 'wc_notify_on_new_reply', 'Notify of new replies to this comment'),
(18, 'wc_load_more_submit_text', 'Cargar mas comentarios'),
(19, 'wc_load_rest_comments_submit_text', 'Cargar el resto de los comentarios'),
(20, 'wc_reply_text', 'Responder'),
(21, 'wc_share_text', 'Compartir'),
(22, 'wc_edit_text', 'Editar'),
(23, 'wc_share_facebook', 'Compartir en Facebook'),
(24, 'wc_share_twitter', 'Compartir en Twitter'),
(25, 'wc_share_google', 'Compartir en google'),
(26, 'wc_share_vk', 'Compartir en VKontakte'),
(27, 'wc_share_ok', 'Compartir en Odnoklassniki'),
(28, 'wc_hide_replies_text', 'Esconder respuestas'),
(29, 'wc_show_replies_text', 'Mostrar Respuestas'),
(30, 'wc_user_title_guest_text', 'Invitados'),
(31, 'wc_user_title_member_text', 'Miembros'),
(32, 'wc_user_title_author_text', 'Autor'),
(33, 'wc_user_title_admin_text', 'Administrador'),
(34, 'wc_email_subject', 'New Comment'),
(35, 'wc_email_message', 'New comment on the discussion section you\\''ve been interested in'),
(36, 'wc_new_reply_email_subject', 'New Reply'),
(37, 'wc_new_reply_email_message', 'New reply on the discussion section you\\''ve been interested in'),
(38, 'wc_subscribed_on_comment', 'You\\''re subscribed for new replies on this comment'),
(39, 'wc_subscribed_on_all_comment', 'You\\''re subscribed for new replies on all your comments'),
(40, 'wc_subscribed_on_post', 'You\\''re subscribed for new follow-up comments on this post'),
(41, 'wc_unsubscribe', 'Unsubscribe'),
(42, 'wc_ignore_subscription', 'Ignore Subscription'),
(43, 'wc_unsubscribe_message', 'You\\''ve successfully unsubscribed.'),
(44, 'wc_confirm_email', 'Confirm your subscription'),
(45, 'wc_comfirm_success_message', 'You\\''ve successfully confirmed your subscription.'),
(46, 'wc_confirm_email_subject', 'Subscribe Confirmation'),
(47, 'wc_confirm_email_message', 'Hi, <br/> You just subscribed for new comments on our website. This means you will receive an email when new comments are posted according to subscription option you\\''ve chosen. <br/> To activate, click confirm below. If you believe this is an error, ignore this message and we\\''ll never bother you again.'),
(48, 'wc_error_empty_text', 'please fill out this field to comment'),
(49, 'wc_error_email_text', 'email address is invalid'),
(50, 'wc_error_url_text', 'url is invalid'),
(51, 'wc_year_text', 'year'),
(52, 'wc_year_text_plural', 'years'),
(53, 'wc_month_text', 'month'),
(54, 'wc_month_text_plural', 'months'),
(55, 'wc_day_text', 'day'),
(56, 'wc_day_text_plural', 'days'),
(57, 'wc_hour_text', 'hour'),
(58, 'wc_hour_text_plural', 'hours'),
(59, 'wc_minute_text', 'minute'),
(60, 'wc_minute_text_plural', 'minutes'),
(61, 'wc_second_text', 'second'),
(62, 'wc_second_text_plural', 'seconds'),
(63, 'wc_right_now_text', 'right now'),
(64, 'wc_ago_text', 'ago'),
(65, 'wc_posted_today_text', 'Today'),
(66, 'wc_you_must_be_text', 'You must be'),
(67, 'wc_logged_in_as', 'You are logged in as'),
(68, 'wc_log_out', 'Log out'),
(69, 'wc_logged_in_text', 'logged in'),
(70, 'wc_to_post_comment_text', 'to post a comment.'),
(71, 'wc_vote_up', '+1'),
(72, 'wc_vote_down', '-1'),
(73, 'wc_vote_counted', 'Vote Counted'),
(74, 'wc_vote_only_one_time', 'You\\''ve already voted for this comment'),
(75, 'wc_voting_error', 'Voting Error'),
(76, 'wc_login_to_vote', 'You Must Be Logged In To Vote'),
(77, 'wc_self_vote', 'You cannot vote for your comment'),
(78, 'wc_deny_voting_from_same_ip', 'You are not allowed to vote for this comment'),
(79, 'wc_invalid_captcha', 'Invalid Captcha Code'),
(80, 'wc_invalid_field', 'Some of field value is invalid'),
(81, 'wc_new_comment_button_text', 'Nuevo Comentario'),
(82, 'wc_new_comments_button_text', 'Nuevos Comentarios'),
(83, 'wc_held_for_moderate', 'Comment awaiting moderation'),
(84, 'wc_new_reply_button_text', 'new reply on your comment'),
(85, 'wc_new_replies_button_text', 'new replies on your comments'),
(86, 'wc_new_comments_text', 'New'),
(87, 'wc_comment_not_updated', 'Sorry, the comment was not updated'),
(88, 'wc_comment_edit_not_possible', 'Sorry, this comment no longer possible to edit'),
(89, 'wc_comment_not_edited', 'You\\''ve not made any changes'),
(90, 'wc_comment_edit_save_button', 'Guardar'),
(91, 'wc_comment_edit_cancel_button', 'Cancelar'),
(92, 'wc_msg_comment_text_max_length', 'Comment text is too long (maximum %s characters allowed)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_users_voted`
--

CREATE TABLE IF NOT EXISTS `wp_wc_users_voted` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `vote_type` int(11) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_wc_users_voted`
--

INSERT INTO `wp_wc_users_voted` (`id`, `user_id`, `comment_id`, `vote_type`, `is_guest`) VALUES
(1, '1', 17, 1, 0),
(2, '1', 21, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wsluserscontacts`
--

CREATE TABLE IF NOT EXISTS `wp_wsluserscontacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wslusersprofiles`
--

CREATE TABLE IF NOT EXISTS `wp_wslusersprofiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `object_sha` varchar(45) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `profileurl` varchar(255) NOT NULL,
  `websiteurl` varchar(255) NOT NULL,
  `photourl` varchar(255) NOT NULL,
  `displayname` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `age` varchar(10) NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `emailverified` varchar(255) NOT NULL,
  `phone` varchar(75) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(75) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_option`
--
ALTER TABLE `wp_bwg_option`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- Indices de la tabla `wp_wc_comments_subscription`
--
ALTER TABLE `wp_wc_comments_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribtion_id` (`subscribtion_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `confirm` (`confirm`);

--
-- Indices de la tabla `wp_wc_phrases`
--
ALTER TABLE `wp_wc_phrases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phrase_key` (`phrase_key`);

--
-- Indices de la tabla `wp_wc_users_voted`
--
ALTER TABLE `wp_wc_users_voted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `vote_type` (`vote_type`),
  ADD KEY `is_guest` (`is_guest`);

--
-- Indices de la tabla `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_option`
--
ALTER TABLE `wp_bwg_option`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=807;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1416;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_wc_comments_subscription`
--
ALTER TABLE `wp_wc_comments_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_wc_phrases`
--
ALTER TABLE `wp_wc_phrases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `wp_wc_users_voted`
--
ALTER TABLE `wp_wc_users_voted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
