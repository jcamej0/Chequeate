<?php get_header(); ?>


<div  class="pagesecciones">
	<div class="header">
		<h1><?php echo $page_title = $wp_query->post->post_title;?></h1>
    </div>
	
	
<aside class="categorias">
<ul>
<li>
SOY UNA CATEGORIAS
</li>	
</ul>	
</aside>
	

<?php $publicaciones = new WP_QUERY(array(
	'post_type' => $page_title));
while($publicaciones->have_posts()) : $publicaciones->the_post();?>
<div class="publicaciones">
<div class="nombre">
	<h1><?php the_title();?></h1>
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

	
	<?php endwhile; ?>


</div>



	
<?php get_footer();?>