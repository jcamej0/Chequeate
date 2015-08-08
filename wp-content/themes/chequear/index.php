<?php get_header(); ?>




	 <div class="search">

      <section class="secciones">

<?php $pages = get_pages($args);

foreach($pages as $page){
    ?>

        <div class="seccion restaurant">
             <h2> <?php echo $page->post_title ?> </h2>

            <a href="<?php echo get_page_link($page->ID); ?>">VISITAR             </a>
        </div>

        <?php   } ?>
    </section>


    <div class="mascomentados">
        Mas comentados
    </div>
    <section class="masvisitados">
    </section>
    </div>

   
    


<?php get_footer(); ?>
</body>
