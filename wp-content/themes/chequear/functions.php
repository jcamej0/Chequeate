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
function wp_corenavi() {
  global $wp_query, $wp_rewrite;
  $pages = '';
  $max = $wp_query->max_num_pages;
  if (!$current = get_query_var('paged')) $current = 1;
  $a['base'] = str_replace(999999999, '%#%', get_pagenum_link(999999999));
  $a['total'] = $max;
  $a['current'] = $current;
 
  $total = 1; //1 - muestra el texto "Página N de N", 0 - para no mostrar nada
  $a['mid_size'] = 5; //cuantos enlaces a mostrar a izquierda y derecha del actual
  $a['end_size'] = 1; //cuantos enlaces mostrar al comienzo y al fin
  $a['prev_text'] = '&laquo; Anterior'; //texto para el enlace "Página siguiente"
  $a['next_text'] = 'Siguiente &raquo;'; //texto para el enlace "Página anterior"
 
  if ($max > 1) echo '<div class="navigation">';
  if ($total == 1 && $max > 1) $pages = '<span class="pages">Página ' . $current . ' de ' . $max . '</span>'."\r\n";
  echo $pages . paginate_links($a);
  if ($max > 1) echo '</div>';
}
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
            echo '<a href="' . $term_link . '" class="tax2-filter" title="' . $term->slug . '">' . $term->name . '</a> ';
        } ?>
        </div>
    <?php endif;
}

 ?>


<?php 

function ajax_filter_posts_scripts() {
  // Enqueue script
  wp_register_script('afp_script', get_template_directory_uri() . '/js/ajax-filter-posts.js', false, null, false);
  wp_enqueue_script('afp_script');
 
  wp_localize_script( 'afp_script', 'afp_vars', array(
        'afp_nonce' => wp_create_nonce( 'afp_nonce' ), // Create nonce which we later will use to verify AJAX request
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
 
  $taxonomy = $_POST['taxonomy'];
  $estado = $_POST['estado'];
  $categoria  = $_POST['categoria'];


  // WP Query
  $args = array(
    'estado' => $taxonomy,
    'post_type' => $estado,
    'cat' => $categoria,
    'posts_per_page' => 10,
  );


  // If taxonomy is not set, remove key from array and get all posts
  if( !$taxonomy ) {
    unset( $args['tag'] );
  }
 
  $query = new WP_Query( $args );
 
  if ( $query->have_posts() ) : while ( $query->have_posts() ) : $query->the_post(); ?>

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
 
  <?php endwhile; ?>
  <?php else: ?>
    <h2>No hay resultados :C</h2>
  <?php endif;
 
  die();
}
 
add_action('wp_ajax_filter_posts', 'ajax_filter_get_posts');
add_action('wp_ajax_nopriv_filter_posts', 'ajax_filter_get_posts');


 ?>