<?php get_header(); ?>


<div  class="pagesecciones">
	<div class="header">
		<h2><?php echo $page_title = $wp_query->post->post_title;?></h2>
    </div>


<aside class="categorias">
<?php 
  $i = get_category_by_slug ($page_title); 
  $s = $i->term_id;
if($s){
    $args = array(
	'show_option_all'    => '',
	'orderby'            => 'name',
	'order'              => 'ASC',
	'style'              => 'ninguno',
	'show_count'         => 0,
	'hide_empty'         => 1,
	'use_desc_for_title' => 1,
	'child_of'           => $s,
	'feed'               => '',
	'feed_type'          => '',
	'feed_image'         => '',
	'exclude'            => '',
	'exclude_tree'       => '',
	'include'            => '',
	'hierarchical'       => 1,
	'title_li'           => ( ''),
	'show_option_none'   => __( '' ),
	'number'             => null,
	'echo'               => 1,
	'depth'              => 0,
	'current_category'   => 0,
	'pad_counts'         => 0,
	'taxonomy'           => 'category',
	'walker'             => null
    );
	
    wp_list_categories( $args ); 
	}else{

		echo "No se poseen categorias";
	}
?>
</aside>
<?php
$args = array('post_type' => $page_title);

 $publicaciones = new WP_Query( $args );
while($publicaciones->have_posts()) : $publicaciones->the_post();?>


<div id="contenedor">
<div class="publicaciones">

	<div class="imagen">
	<?php the_post_thumbnail('thumbnail'); ?>
	</div>
	   <div class="informacion">
     	<div class="nombre">
	    	<a href="<?php the_permalink(); ?>"><h1><?php the_title();?></h1></a>
			
	     </div>
	  	
	  	<div class="rif">

	  	Rif: <?php the_field('rif') ?>
	  		
	  	</div>

	  	<div class="direccion">
	  	Direccion: <?php the_field('direccion') ?>
	  	</div>

	  	<div class="telefono">

	  	Telefonos: <?php the_field('telefono') ?>
	  		
	  	</div>


	  	<div class="gps">
	  	Coordenadas de GPS:
	  	<br>
	  	<?php the_field('coordenadas') ?>
	  		
	  	</div>


    </div>
</div>
</div>
<?php endwhile; ?>
<?php if(function_exists('wp_paginator')) { wp_paginator();}?>
</div>


<?php get_footer();?>
