<?php
add_theme_support( 'post-thumbnails' );
if ( function_exists( 'add_image_size' ) ) { 
   add_image_size( 'post-thumbnail', 380, 150, true );// please give another name if its not major requirement of this
   add_image_size( 'featured-thumbnail', 360, 300, true );// please give another name if its not major requirement of this
}
	
?>

<?php  

function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'extra-menu' => __( 'Extra Menu' )
    )
  );
}
add_action( 'init', 'register_my_menus' );
?>


<?php 

function tags_filter() {
    $tax = 'estado';
    $terms = get_terms( $tax );
    $count = count( $terms );
 
    if ( $count > 0 ): ?>
        <div class="post-tags">
        <?php
        foreach ( $terms as $term ) {
            $term_link = get_term_link( $term, $tax );
            echo '<a href="' . $term_link . '" class="tax-filter" title="' . $term->slug . '">' . $term->name . '</a>  <br>';
        } ?>
        </div>
    <?php endif;
}

 ?>

<?php 

function tags_filter2() {
    $tax = 'estado';
    $terms = get_terms( $tax );
    $count = count( $terms );
 
    if ( $count > 0 ): ?>
        <div class="post-tags">
        <?php
        foreach ( $terms as $term ) {
            $term_link = get_term_link( $term, $tax );
            echo '<a href="' . $term_link . '" class="tax2-filter" title="' . $term->slug . '">' . $term->name . '</a>  <br>';
        } ?>
        </div>
    <?php endif;
}

 ?>


<?php 

function ajax_filter_posts_scripts() {
 
  wp_register_script('afp_script', get_template_directory_uri() . '/js/ajax-filter-posts.js', false, null, false);
  wp_enqueue_script('afp_script');
 
  wp_localize_script( 'afp_script', 'afp_vars', array(
        'afp_nonce' => wp_create_nonce( 'afp_nonce' ), // Creo un nonce para verificar el REQUEST
        'afp_ajax_url' => admin_url( 'admin-ajax.php' ),
      )
  );
}
add_action('wp_enqueue_scripts', 'ajax_filter_posts_scripts', 100);




 

 ?>

 <?php function ajax_filter_get_posts($taxonomy ) {
 
  // Verify nonce
  if( !isset( $_POST['afp_nonce'] ) || !wp_verify_nonce( $_POST['afp_nonce'], 'afp_nonce' ) )
    die('Permission denied');
 global $wp_query;

  $taxonomy = $_POST['taxonomy'];
  $taxonomy2 = $_POST['taxonomy2'];
  $estado = $_POST['estado'];
  $categoria  = $_POST['categoria'];
  $estado2 = $_POST['estado2'];
 
  

if($taxonomy == 'todas'){

  $args = array(

  
       'tax_query' => array(
      array(
        'taxonomy' => 'estado',
        'terms' => $estado2,
        )
      ),
    'post_type' => $estado,
    'cat' => $categoria,
    'posts_per_page' => 12,
    'meta_key' => 'premium',
    'orderby' => 'meta_value_num',
    'order'  =>'DESC',
    'post_parent' => 0
   
   
  );

}else{


  $args = array(

   
    'estado' => $taxonomy,
    'post_type' => $estado,
    'cat' => $categoria,
    'posts_per_page' => 12,
    'meta_key' => 'premium',
    'orderby' => 'meta_value_num',
    'order'  =>'DESC',
    'post_parent' => 0
   
   
  );



}


 





  $wp_query = new WP_Query( $args );
?>


<?php

  if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post();   ?>
<script>
var totalpaginas = <?php echo json_encode($wp_query->max_num_pages)?>;
var tipopost = <?php echo json_encode($estado) ?>;
var estadoactual = <?php echo json_encode($taxonomy); ?>


</script>

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
       <?php 
       $premium = get_field('premium');

       if($premium){
          ?>  <button type="submit">VISITAR</button> <?php ;

       }
         ?>
       
      <?php the_field('coordenadas') ?>
        
      </div>


    </div>
</div>
</div>
</div>
 
  <?php endwhile;  ?>







<?php else: ?>
  <h2>No hay publicaciones</h2>
<?php endif; ?>

  


 
  <?php 
 
  die();
}
 
add_action('wp_ajax_filter_posts', 'ajax_filter_get_posts');
add_action('wp_ajax_nopriv_filter_posts', 'ajax_filter_get_posts');




 ?>



 
<?php 

function more_post_ajax(){


  ?>



  <?php
    $offset = $_POST["offset"];
    $ppp = $_POST["ppp"];
    $tipopost = $_POST["tipopost"];
    $totalpaginas = $_POST["totalpaginas"];
    $estadoactual2 = $_POST["estadoactual2"];
    //$estadoactual = $_POST["estadoactual"];
    $taxonomy2 = $_POST['taxonomy2'];
    $ciudadescogida = $_POST['ciudadescogida'];
     $secciondelapagina = $_POST['secciondelapagina'];




if($estadoactual2 == ''){
    $args = array(
        'estado' => '',
        'post_type' => $secciondelapagina,
        'posts_per_page' => $ppp,
        'paged'  => $totalpaginas,
        'meta_key' => 'premium',
        'orderby' => 'meta_value_num',
        'order'  =>'DESC');
}else if($ciudadescogida !== '' ){

 $args = array(
       
        'estado' => $ciudadescogida,
        'posts_per_page' => $ppp,
        'paged'  => $totalpaginas,
        'meta_key' => 'premium',
        'orderby' => 'meta_value_num',
        'order'  =>'DESC'
    );

}else if ($estadoactual2 !== '' && $ciudadescogida == ''){

 $args = array(
       'tax_query' => array(
      array(
        'taxonomy' => 'estado',
        'terms' => $estadoactual2,
        )
      ),
        'post_type' => $tipopost,
        'posts_per_page' => $ppp,
        'paged'  => $totalpaginas,
        'meta_key' => 'premium',
        'orderby' => 'meta_value_num',
        'order'  =>'DESC'
    );
   


}


  $wp_query = new WP_Query( $args );

   if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post();   ?>

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
       <?php 
       $premium = get_field('premium');

       if($premium){
          ?>  <button type="submit">VISITAR</button> <?php ;

       }
         ?>
       
      <?php the_field('coordenadas') ?>
        
      </div>


    </div>
</div>
 </div>
  
 <?php endwhile;  ?>

 <?php else: ?>
  <h2>No hay publicaciones</h2>
<?php endif; ?>


 
  <?php 
 
  die();
}
 add_action('wp_ajax_more_post_ajax', 'more_post_ajax');
 add_action('wp_ajax_nopriv_more_post_ajax', 'more_post_ajax'); 
?>
 

 <?php 

/***AQUI HAGO LA BUSQUEDA DE LAS CIUDADES****/
 function lista_de_ciudades(){


   $estado_Seleccionado = $_POST["estadoSeleccionado"];
   $taxonomy_name = 'estado';

   if(!$estado_Seleccionado == 'todos'){
   $termchildren = get_term_children($estado_Seleccionado,$taxonomy_name);


?>
<option  value='todas'>TODAS</option>

<?php
foreach ($termchildren as $child ) {
  $term = get_term_by( 'id', $child, $taxonomy_name );

?>
<option  value='<?php echo $term->slug ?>'><?php echo $term->name ?></option>

<?php

}
}else if($estado_Seleccionado == 'todos'){


$args = array(
  'type'                     => 'post',
  'child_of'                 => 0,
  'parent'                   => 0,
  'orderby'                  => 'name',
  'order'                    => 'DESC',
  'hide_empty'               => 1,
  'hierarchical'             => 1,
  'exclude'                  => '',
  'include'                  => '',
  'number'                   => '',
  'taxonomy'                 => 'estado',
  'pad_counts'               => false,

); 

?>
<option value="todas">Todas</option>}
option
<?php
$citys = get_categories($args);
foreach ($citys as $cityss ) {
 
 $terms = get_terms('estado', array('parent' => $cityss->term_id, 'hide_empty' => false));

foreach($terms as $terminos){ 
?>
<option  value='<?php echo $terminos->slug ?>'><?php echo $terminos->name ?></option>

<?php
}


}
 

}

}
 add_action('wp_ajax_lista_de_ciudades', 'lista_de_ciudades');
 add_action('wp_ajax_nopriv_lista_de_ciudades', 'lista_de_ciudades');

 


?>





<?php function ajax_filter_publicaciones_estado($taxonomy ) {


?>

<?php 
  // Verify nonce
  if( !isset( $_POST['afp_nonce'] ) || !wp_verify_nonce( $_POST['afp_nonce'], 'afp_nonce' ) )
    die('Permission denied');
 global $wp_query;


  $taxonomy = $_POST['taxonomy'];
  $taxonomy2 = $_POST['taxonomy2'];
  $estado = $_POST['estado'];
  $categoria  = $_POST['categoria'];
  $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;



?>

<?php
  
  if($taxonomy2 == 'todos')
  {
 $args = array(
       
    
    'estado' => $taxonomy2,
    'post_type' => $estado,
    'cat' => $categoria,
    'posts_per_page' => 12,
    'meta_key' => 'premium',
    'orderby' => 'meta_value_num',
    'order'  =>'DESC',
    'post_parent' => 0);

  }else{


  $args = array(

    'tax_query' => array(
      array(
        'taxonomy' => 'estado',
        'terms' => $taxonomy2,
        

        )
      ),
    'estado' => $taxonomy,
    'post_type' => $estado,
    'cat' => $categoria,
    'posts_per_page' => 12,
    'meta_key' => 'premium',
    'orderby' => 'meta_value_num',
    'order'  =>'DESC',
    'post_parent' => 0
   
   
  );
  }

  if( !$taxonomy ) {
    unset( $args['estado'] );
  }
 
  $wp_query = new WP_Query( $args );
?>


<?php

  if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post();   ?>
<script>
var totalpaginas = <?php echo json_encode($wp_query->max_num_pages)?>;
var tipopost = <?php echo json_encode($estado) ?>;
var estadoactual = <?php echo json_encode($taxonomy); ?>


</script>

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
       <?php 
       $premium = get_field('premium');

       if($premium){
          ?>  <button type="submit">VISITAR</button> <?php ;

       }
         ?>
       
      <?php the_field('coordenadas') ?>
        
      </div>


    </div>
</div>
</div>
</div>
 
  <?php endwhile;  ?>







<?php else: ?>
  <h2>No hay publicaciones</h2>
<?php endif; ?>

  


 
  <?php 
 
  die();
}
 
add_action('wp_ajax_publicaciones_estado', 'ajax_filter_publicaciones_estado');
add_action('wp_ajax_nopriv_publicaciones_estado', 'ajax_filter_publicaciones_estado');




 ?>

<?php 



function lista_de_categorias(){


   $estado_Seleccionado = $_POST["estadoSeleccionado"];
   $taxonomy_name = 'estado';
   $termchildren = get_term_children($estado_Seleccionado,$taxonomy_name);
   $estadoactual2 = $_POST["estadoactual2"];
   $ciudadescogida = $_POST['ciudadescogida'];
   $secciondelapagina = $_POST['pagina_seccion'];

if($estado_Seleccionado != '' && $ciudadescogida == ''){
$args = array(
        'estado' => $estado_Seleccionado,
        'post_type' => $secciondelapagina,
);
}else if ($ciudadescogida !== ''){
  $args = array(
        'estado' => $ciudadescogida,
        'post_type' => $secciondelapagina,
        );
}else if ($ciudadescogida == 'todas' &&  $estado_Seleccionado == 'todos'){


   $args = array(
        'estado' => '',
        'post_type' => $secciondelapagina,
        );
}
?>
<option  value='todas'>Todas</option>
<?php
$postobjs = get_posts( $args );
$postids = wp_list_pluck( $postobjs, 'ID' );
$taxonomy = 'category'; // your taxonomy name
$termobjs = wp_get_object_terms( $postids, $taxonomy );
$termlist = array_unique( wp_list_pluck( $termobjs, 'name' ) );


foreach ($termlist as $termlist2) {

  ?>
  
  <option  value='<?php echo $termlist2 ?>'><?php echo $termlist2 ?></option>

<?php
}



}

 add_action('wp_ajax_lista_de_categorias', 'lista_de_categorias');
 add_action('wp_ajax_nopriv_lista_de_categorias', 'lista_de_categorias');
 ?>







 <?php function ajax_filter_publicaciones_por_categoria($taxonomy ) {


  

  $estado_seleccionado_categoria = $_POST['estado_seleccionado_categoria'];
  $ciudad_seleccionado_categoria = $_POST['ciudad_seleccionado_categoria'];
  $categoria  = $_POST['categoria_seleccionada'];
  $seccion = $_POST['pagina_seccion'];
  $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

$x = get_cat_ID( $categoria );
 

if($ciudad_seleccionado_categoria == ''){

$args = array(
    'tax_query' => array(
      array(
        'taxonomy' => 'estado',
        'terms' => $estado_seleccionado_categoria,
        
        )
      ),
    'post_type' => $seccion,
    'cat' => $x,
    'posts_per_page' => 12,
    'meta_key' => 'premium',
    'orderby' => 'meta_value_num',
    'order'  =>'DESC',
    'post_parent' => 0
   
   
  );

}else{
  $args = array(
    'estado' => $ciudad_seleccionado_categoria,
    'post_type' => $seccion,
    'cat' => $x,
    'posts_per_page' => 12,
    'meta_key' => 'premium',
    'orderby' => 'meta_value_num',
    'order'  =>'DESC',
    'post_parent' => 0
   
   
  );

  }
 
  $wp_query = new WP_Query( $args );
?>


<?php

  if ( $wp_query->have_posts() 
) : while ( $wp_query->have_posts() ) : $wp_query->the_post();   ?>
<script>
var totalpaginas = <?php echo json_encode($wp_query->max_num_pages)?>;
var tipopost = <?php echo json_encode($estado) ?>;
var estadoactual = <?php echo json_encode($taxonomy); ?>


</script>

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

      Rif: <?php the_field('rif');
      echo $x; ?>
        
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
       <?php 
       $premium = get_field('premium');

       if($premium){
          ?>  <button type="submit">VISITAR</button> <?php ;

       }
         ?>
       
      <?php the_field('coordenadas') ?>
        
      </div>


    </div>
</div>
</div>
</div>
 
  <?php endwhile;  ?>







<?php else: ?>
  <h2>No hay publicaciones</h2>
<?php endif; ?>

  


 
  <?php 
 
  die();
}
 
add_action('wp_ajax_publicaciones_por_categoria', 'ajax_filter_publicaciones_por_categoria');
add_action('wp_ajax_nopriv_publicaciones_por_categoria', 'ajax_filter_publicaciones_por_categoria');




 ?>