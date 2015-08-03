<?php get_header(); ?>
<body>



	 <div class="search">
        <img src="imagenes/lupa.png" height="240" width="230"></img>
        <input "text" class="buscar" placeholder="¿Que estas buscando?">
    </div>
    <div class="maschequeados">
        Recomendados
    </div>
    <div class="masrecomendados">
        <div class="recomendados">
            <span>Soy una tienda recomendada</span>
        </div>
        <div class="recomendados">
            <span>Soy una tienda recomendada</span>
        </div>
        <div class="recomendados">
            <span>Soy una tienda recomendada</span>
        </div>
        <div class="recomendados">
            <span>Soy una tienda recomendada</span>
        </div>
        <div class="recomendados">
            <span>Soy una tienda recomendada</span>
        </div>
    </div>
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
        <div class="visitados">
            Soy una tienda comentada
        </div>
        <div class="visitados">
            Soy una tienda comentada
        </div>
        <div class="visitados">
            Soy una tienda comentada
        </div>
        <div class="visitados">
            Soy una tienda comentada
        </div>
        <div class="visitados">
            Soy una tienda comentada
        </div>
    </section>


<?php get_footer(); ?>
</body>
