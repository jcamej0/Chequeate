<?php get_header(); ?>


	<div class="header">
		<h1>Pagina Premium</h1>
    </div>
<div  class="contenedor_single">

<div class="head_single">
	

	<div class="nombre_single">
	<h1><?php the_title();?></h1>
    </div>
    <span class="rif_single">Rif : <?php echo the_field('rif');?></span>
</div>
	
  <article id="single">
 
    
	<div class="imagen_single">
	<?php the_post_thumbnail('thumbnail'); ?>
	</div>
	
	
	<br>
	


	<span class="direccion_single">Direccion: <?php echo the_field('direccion');?></span>
	<br>
	<span class="resumen_single"><?php echo the_field('resumen');?></span>
	<br>
	<span class="telefono_single">Telefonos: <?php echo the_field('telefono') ?></span>
	<br>
	<span class="coordenadas_single">Coordenadas GPS: <?php echo the_field('coordenadas');?></span>
		
	
</div>

	<?php comments_template(); ?>


</div>
	
<?php get_footer();?>