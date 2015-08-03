<?php get_header(); ?>


<div  class="pagesecciones">
	<div class="header">
		<h1><?php echo $page_title = $wp_query->post_title;?></h1>
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

<div id="contenedor">
<div class="publicaciones">

	<div class="imagen">
	<?php the_post_thumbnail('thumbnail'); ?>
	</div>
	   <div class="informacion">
     	<div class="nombre">
	    	<h5><a href="#" ><?php the_title();?></a></h5>
	     </div>
	    <div class="resumen">
				<p><?php the_excerpt() ?></p>
	   </div>
    </div>
</div>
</div>


	<?php endwhile; ?>


</div>




<?php get_footer();?>
