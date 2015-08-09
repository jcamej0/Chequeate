<?php get_header(); ?>




	 <div class="contenedor">

      <div class="secciones">

<?php 
$args = array(
'child_of' => 67,
'sort_column' => 'menu_order'

    );

$pages = get_pages($args);

foreach($pages as $page){

    ?>

        <div class="seccion restaurant">


            <?php echo get_the_post_thumbnail($page->ID); ?>
             <h1> <?php echo $page->post_title ?> </h1>

            <a href="<?php echo get_page_link($page->ID); ?>">VISITAR             </a>


        </div>

        <?php   } ?>


    </div>


    <div class="destacados">
        <h1>Destacados</h1>

        <?php if (function_exists('wp_corenavi')) wp_corenavi(); ?>

    </div>
    <section class="masvisitados">
    </section>
    </div>

   
    


<?php get_footer(); ?>
</body>
