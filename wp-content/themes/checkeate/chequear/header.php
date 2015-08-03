<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="utf-8>">
	<meta name="viewport" content="width=device-width, minimum-scale=1">

    <link rel="icon" type="image/png" href="<?php bloginfo('template_url')?>/imagenes/chequeate.png">
    <title><?php wp_title(); ?></title>

    <link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('stylesheet_url')?>">
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/estilo/pages-design.css" type="text/css" media="screen" />



	<?php wp_head(); ?>
</head>

<body>
    <header>


        <p><?php bloginfo ('nombre'); ?>
            <br> <?php bloginfo ('description'); ?></p>

			<div class="menu2">
            <img src="<?php bloginfo('template_url')?>/imagenes/facebook.png" height="40" width="40" alt="">
            <img src="<?php bloginfo('template_url')?>/imagenes/twitter.png" height="40" width="40" alt="">
            <img src="<?php bloginfo('template_url')?>/imagenes/youtube.png" height="40" width="40" alt="">
            </div>

			<nav>

        <img src="<?php bloginfo('template_url')?>/imagenes/chequeate.png" class="logo"></img>

        <ul id="menu">
    		<li><a href="#">Home</a></li>
    		<li>
    			<a href="#">About ￬</a>
    			<ul class="hidden">
    				<li><a href="#">Who We Are</a></li>
    				<li><a href="#">What We Do</a></li>
    			</ul>
    		</li>
    		<li>
    			<a href="#">Portfolio ￬</a>
    			<ul class="hidden">
    				<li><a href="#">Photography</a></li>
    				<li><a href="#">Web & User Interface Design</a></li>
    				<li><a href="#">Illustration</a></li>
    			</ul>
    		</li>
    		<li><a href="#">News</a></li>
    		<li><a href="#">Contact</a></li>
    	</ul>




    </header>
