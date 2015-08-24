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

            <div >
                <a class="boton_index" href="<?php echo get_page_link($page->ID); ?>">VISITAR</a>
            </div>


        </div>

        <?php   } ?>


    </div>



        <h1>Destacados</h1>

<div class="tagged-posts">
<script>
cargar_publicaciones_index();
</script>
</div>
    </div>
 



    </div>

   
    


<?php get_footer(); ?>
</body>
