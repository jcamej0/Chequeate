<?php get_header(); ?>


<div  class="pagesecciones">
	<div class="header">
		<h1><?php echo $page_title = $wp_query->post->post_title;?></h1>
    </div>
	SOY UN SINGLEEEE

	
  <article id="single">
          <?php if(have_posts()) : ?><?php while(have_posts()) : the_post(); ?>
 <div class="publicaciones">
<div class="nombre">
	<h1><?php the_title();?></h1>
	<a href="<?php the_permalink(); ?>"><img src="<?php bloginfo('template_url')?>/imagenes/lupa.png" width="50" height="50"></img></a>
    </div>
	<div class="imagen">
	<?php the_post_thumbnail('thumbnail'); ?>
	</div>
	
	<div class="resumen">
	<?php the_excerpt() ?>
	</div>
	<div class="telefono">
     <img src="<?php bloginfo('template_url')?>/imagenes/iconos/telefono.png" height="25" width="25" alt="">
		<span><?php echo the_field('telefono');?></span>
	</div>
	
</div>

<?php endwhile; ?><?php endif; ?>
</div>
	
<?php get_footer();?>