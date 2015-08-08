<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="utf-8>">
	<meta name="viewport" content="width=device-width, minimum-scale=1">
  <link rel="icon" type="image/png" href="<?php bloginfo('template_url')?>/imagenes/chequeate.png">
  <title><?php wp_title(); ?></title>
  <link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('stylesheet_url')?>">
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/estilo/pages-design.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/fonts.css" type="text/css">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="<?php bloginfo('template_url')?>/js/jquery.slides.js"></script>
    <script>
    $(function(){
      $(".slides").slidesjs({
        play: {
          active: true,
            // [boolean] Generate the play and stop buttons.
            // You cannot use your own buttons. Sorry.
          effect: "slide",
            // [string] Can be either "slide" or "fade".
          interval: 3000,
            // [number] Time spent on each slide in milliseconds.
          auto: false,
            // [boolean] Start playing the slideshow on load.
          swap: true,
            // [boolean] show/hide stop and play buttons
          pauseOnHover: false,
            // [boolean] pause a playing slideshow on hover
          restartDelay: 2500
            // [number] restart delay on inactive slideshow
            }
      });
    });
  </script>
	<?php wp_head(); ?>
</head>

<body>
    <header>
        <img src="<?php bloginfo('template_url')?>/imagenes/logo2.png" class="logo"></img>


        <p><?php bloginfo ('nombre'); ?>
            <br> <?php bloginfo ('description'); ?></p>



      <div class="menu2">
            <img src="<?php bloginfo('template_url')?>/imagenes/facebook.png" height="40" width="40" alt="">
            <img src="<?php bloginfo('template_url')?>/imagenes/twitter.png" height="40" width="40" alt="">
            <img src="<?php bloginfo('template_url')?>/imagenes/youtube.png" height="40" width="40" alt="">
            </div>
      <?php get_search_form(); ?>



      <ul id="menu">
      <li><a href="#">Inicio</a></li>
      <li><a href="#">Opcion 1</a>
        <ul>
              <li><a href="#">submenu1</a></li>
              <li><a href="#">submenu1</a></li>
              <li><a href="#">submenu1</a></li>
        </ul>
      </li>
      <li><a href="#">Opcion 2</a>
        <ul>
               <li><a href="#">submenu2</a></li>
               <li><a href="#">submenu2</a></li>
               <li><a href="#">submenu2</a></li>
        </ul>
      </li>
      <li><a href="#">Opcion 3</a>
       <ul>
              <li><a href="#">submenu3</a></li>
              <li><a href="#">submenu3</a></li>
               <li><a href="#">submenu3</a></li>
      </ul>
      <li><a href="#">Contactanos</a></li>
      <li><a href="#">Registro de empresas</a></li>

    </ul>

        <nav>
    </header>
