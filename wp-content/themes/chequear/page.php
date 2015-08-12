<?php get_header(); ?>


<div  class="pagesecciones">
	<div class="header">
		<h2><?php echo  $page_title = $wp_query->post->post_title;?> / Todos</h2>
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
?>
<div class="categorias-opciones">
   <?php wp_list_categories( $args ); ?>
    </div>
 <?php
	}else{

		echo "No se poseen categorias";
	}
?>


<h1>Estados</h1>
<div class="estados-opciones">
	<?php tags_filter();?>
</div>	

</aside>
	

<nav>
	<img  id="more_posts" src="<?php bloginfo('template_directory');?>/imagenes/iconos/siguiente.png" height="60" width="60" alt="">

<img id="less" src="<?php bloginfo('template_directory');?>/imagenes/iconos/atras.png" height="60" width="60" alt="">
</nav>


<div id='mycontent'>

 <div class="tagged-posts">

  </ul>
 </div>





</div>

<script>

    var ajaxUrl = "<?php echo admin_url('admin-ajax.php')?>";
    var page = 1; 
    var ppp = 12; // Post per page
    contador = 1;

    $("#more_posts").on("click",function(){ // When btn is pressed.
    	
    		$('.tagged-posts').fadeOut();

    		if(contador<totalpaginas)
    	    contador = contador+=1
    		

        $("#more_posts").attr("disabled",true); // Disable the button, temp.
        $.post(ajaxUrl, {
            action:'more_post_ajax',
            offset: (page * ppp) + 1,
            ppp: ppp,
            totalpaginas: contador,
            tipopost: tipopost,
            estadoactual: estadoactual
        }).success(function(posts){
            page++;
            $(".tagged-posts").html(posts); // CHANGE THIS!
            $("#more_posts").attr("disabled",false);
             $('.tagged-posts').fadeIn();
        });

   });

</script>



<script>

    $("#less").on("click",function(){ // When btn is pressed.
    	
    	 $('.tagged-posts').fadeOut();

    		if(contador>1)
    	    contador = contador-=1
    		

        $("#more_posts").attr("disabled",true); // Disable the button, temp.
        $.post(ajaxUrl, {
            action:'more_post_ajax',
            offset: (page * ppp) + 1,
            ppp: ppp,
            totalpaginas: contador,
            tipopost: tipopost,
            estadoactual: estadoactual
        }).success(function(posts){
            page++;
            $(".tagged-posts").html(posts); // CHANGE THIS!
            $("#more_posts").attr("disabled",false);
            $('.tagged-posts').fadeIn();
        });

   });

</script>










</div>


<?php get_footer();?>




