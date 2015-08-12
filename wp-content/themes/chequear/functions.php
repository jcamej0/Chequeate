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
  $estado = $_POST['estado'];
  $categoria  = $_POST['categoria'];
  $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
  
  $args = array(
    'estado' => $taxonomy,
    'post_type' => $estado,
    'cat' => $categoria,
    'posts_per_page' => 12,
  );

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
    $offset = $_POST["offset"];
    $ppp = $_POST["ppp"];
    $tipopost = $_POST["tipopost"];
    $totalpaginas = $_POST["totalpaginas"];
    $estadoactual = $_POST["estadoactual"];

  
    $args = array(
        'post_type' => $tipopost,
        'posts_per_page' => $ppp,
        'paged'  => $totalpaginas,
        'estado' => $estadoactual
    );

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
 