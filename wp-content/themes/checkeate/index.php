<?php get_header(); ?>
<body>

<?php include (TEMPLATEPATH.'/slideshow.php' )?>

 <!--<div class="search">
        <input "text" class="buscar" placeholder="¿Que estas buscando?">
    </div>-->
    <!--<div class="maschequeados">
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
    </div>-->
    <section class="secciones">

<?php $pages = get_pages($args);

foreach($pages as $page){
	?>


	<div class="seccion ">
			 <h2> <?php echo $page->post_title ?> </h2>

<a href="<?php echo get_page_link($page->ID); ?>">VISITAR             </a>
	</div>
	


		<?php   } ?>
    </section>

	<!--  <div class="mascomentados">
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
    </section> -->

		<div class="Promociones">
			<h2>Promociones</h2>
			<p>Del 1 de mayo todo a mitad de precio. </p>
			<p>Y para el dia de las madres los primeros 200 clientes entran en el sorteo de un vehiculo 0 kilometros!!</p>
		</div>


<?php get_footer(); ?>
</body>
