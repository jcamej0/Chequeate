<?php get_header(); ?>

  <?php
if( is_category() ) {
  echo $q_cat = get_query_var('cat');
  $cate = get_category( $q_cat );
  $id_categoria = $cate->category_parent;
}?>


<div  class="pagesecciones">
	<div class="header">
		<h2><?php echo single_cat_title(get_cat_name($id_categoria ) ." / ", false); ?></h2>
    

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
<h2><?php $d ?></h2>

<?php tags_filter2();?>
</aside>
<script>
var pagina_seccion = <?php echo json_encode('restaurantes')?>;
var pagina_cat = <?php echo json_encode($d)?>;
</script>


<div class="tagged-posts">
	
</div>

	 
	
</div>




<?php get_footer();?>
