<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="utf-8>">
	<meta name="viewport" content="width=device-width, minimum-scale=1">
  <link rel="icon" type="image/png" href="<?php bloginfo('template_url')?>/imagenes/chequeate.png">
  <title><?php wp_title(); ?></title>
  <link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('stylesheet_url')?>">
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/estilo/pages-design.css" type="text/css" media="screen" />
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

  <script type="text/javascript" src="<?php bloginfo('template_directory');?>/miscript.js"> </script>
<script type="text/javascript">
    var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";
</script>
  <?php wp_head(); ?>
</head>

<body>
    <header>
        <img src="<?php bloginfo('template_url')?>/imagenes/logo2.png" class="logo"></img>


        <p><?php bloginfo ('nombre'); ?>
            <br> <?php bloginfo ('description'); ?></p>




            <div class="menusuperior">

            <a href="" title="">Inicio</a>
            <a href="" title="">Contacto</a>
            <a href="" title="">Suscribete</a>
            <a href="" title="">Ingresa</a>
              
            </div>


         
      <!--<ul id="menu">
      <?php wp_nav_menu (array ('items_wrap' => '%3$s', 'container_class' => 'my_extra_menu_class')); ?>
      </ul> -->
       

    </header>
