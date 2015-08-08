<?php
add_theme_support( 'post-thumbnails' );
	/*set_post_thumbnail_size( 604, 270, true );*/
	
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

?>



















