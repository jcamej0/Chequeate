<?php get_header(); ?>


<div  class="pagesecciones">
	<div class="header">
		<h2><?php echo  $page_title = $wp_query->post->post_title;?></h2>
    </div>
<script>
var pagina_seccion = <?php echo json_encode($page_title)?>;
cargar_publicaciones();
</script>

<aside class="categorias">

<h1>Categorias</h1>
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

	}else{

		echo "No se poseen categorias";
	}
?>
<div class="categorias-opciones">
   <?php wp_list_categories( $args ); ?>
    </div>

<h1>Estados</h1>
<div class="estados-opciones">
	<?php tags_filter();?>
</div>	

</aside>


<div class="tagged-posts">
	
</div>

</div>


<?php get_footer();?>
