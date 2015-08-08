<?php get_header(); ?>

  <?php
if( is_category() ) {
  $q_cat = get_query_var('cat');
  $cate = get_category( $q_cat );
  $id_categoria = $cate->category_parent;
}?>


<div  class="pagesecciones">
	<div class="header">
		<h2><?php echo single_cat_title("", false);; ?></h2>
      </div>
	
	
	
	
<aside class="categorias">
<?php 
 single_cat_title("", false);
  $d = get_query_var('cat'); 

    $args = array(
	'show_option_all'    => '',
	'orderby'            => 'name',
	'order'              => 'ASC',
	'style'              => 'ninguno',
	'show_count'         => 0,
	'hide_empty'         => 1,
	'use_desc_for_title' => 1,
	'child_of'           => $id_categoria,
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
?>
</aside>

<?php 

$args = array ('post_type' => get_cat_name($id_categoria), 'cat' => $d);
$loop = new WP_Query ($args);
while($loop->have_posts()) : $loop->the_post();?>

<div id="contenedor">
<div class="publicaciones">

	<div class="imagen">
	<?php the_post_thumbnail('thumbnail'); ?>
	</div>
	   <div class="informacion">
     	<div class="nombre">
	    	<h5><a href="<?php the_permalink(); ?>"><?php the_title();?></a></h5>
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
