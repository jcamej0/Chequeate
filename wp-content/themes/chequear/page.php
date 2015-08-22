<?php get_header(); ?>


<div  class="pagesecciones">


<nav class="cintillo">
<h2><?php echo   $page_title = $wp_query->post->post_title;?></h2>

</nav>
	<div class="header">
  <div class="seleccionarEstado">
  

  <label>Estado</label><br>
  <select   onChange='obtenerCiudad(this.value);cambiarPublicacionesEstado(this.value);listaCategorias()' id="estadosopciones">
    <option value="" disabled selected >Seleccionar Estado</option>
     <option value="todos" >Todos</option>
    <?php 
    $args = array(
      'parent'            => 0,
      );
    $estado = get_terms('estado',$args);
    ?>

    <?php
      foreach($estado as $estados){ ?>

        <option value="<?php echo $estados->term_id ?>"><?php echo $estados->name ?></option>


      <?php }
     ?>
  </select>
  </div>

<div class="seleccionarCiudad">

  <label>Ciudad</label><br>
  <select onChange='prueba(this.value);listaCategorias()'name="" id="lista-ciudades" >
    <option value="" disabled selected >Seleccionar Ciudad</option> 
  </select>
  </div>


<div class="seleccionarCategoria">

<label>Categoria</label><br>
  <select onChange='cambiarporcategoria(this.value)'name="" id="lista-categorias" >
    <option value="" disabled selected >Seleccionar Categoria</option> 
  </select>
  
</div>

		
    </div>

<script>
var pagina_seccion = <?php echo json_encode($page_title)?>;
cargar_publicaciones();
</script>





<aside class="categorias">

<h1>Categorias</h1>
<?php 

 /* $i = get_category_by_slug ('hoteles y posadas'); 
  $s = $i->term_id;*/

    $args = array(
	'show_option_all'    => '',
	'orderby'            => 'name',
	'order'              => 'ASC',
	'style'              => 'ninguno',
	'show_count'         => 0,
	'hide_empty'         => 1,
	'use_desc_for_title' => 1,
	'child_of'           => '33',
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
	
?>


<h1>Estados</h1>
<div class="estados-opciones">
	


<?php 



 ?>
  



   	

</div>	

</aside>
	



<div id='mycontent'>
<nav>
  <img  id="more_posts" src="<?php bloginfo('template_directory');?>/imagenes/iconos/siguiente.png" height="60" width="60" alt="">

<img id="less" src="<?php bloginfo('template_directory');?>/imagenes/iconos/atras.png" height="60" width="60" alt="">

<script>

    var ajaxUrl = "<?php echo admin_url('admin-ajax.php')?>";
    var page = 1; 
    var ppp = 12; // Post per page
    contador = 1;

    $("#more_posts").on("click",function(){ // When btn is pressed.
    
   
    alert(window.estadoescogido);
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
            estadoactual2: window.estadoescogido,
            pagina_seccion: pagina_seccion,
            ciudadescogida: window.ciudadescogida,
            secciondelapagina: pagina_seccion
     
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
            estadoactual2: window.estadoescogido,
            pagina_seccion: pagina_seccion,
            ciudadescogida: window.ciudadescogida,
            secciondelapagina: pagina_seccion,
        }).success(function(posts){
            page--;
            $(".tagged-posts").html(posts); // CHANGE THIS!
            $("#more_posts").attr("disabled",false);
            $('.tagged-posts').fadeIn();
        });

   });

</script>



</nav>

 <div class="tagged-posts">


 

  </ul>
 </div>





</div>











</div>


<?php get_footer();?>




