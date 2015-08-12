<?php get_header(); ?>



<div id="content">
    <?php
$new_query = new WP_Query();
$new_query->query('post_type=post&showposts=2'.'&paged='.$paged);
?>
 
<?php while ($new_query->have_posts()) : $new_query->the_post(); ?>
<div class="headline-entry">
    <article class="list-post">
                        <div class="entry-post">
                <h4 class="entry-title"><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h4>
                <div class="entry">
                    <?php the_excerpt(); ?>
                </div>
            </div>
    </article>
</div>
<?php endwhile; ?>
    <div class="outer-submit">
    <?php next_posts_link('&laquo; Older Entries', $new_query->max_num_pages) ?><br/>
    <?php previous_posts_link('Newer Entries &raquo;') ?>
    </div>
</div><!-- #content -->









<?php get_sidebar();?>
<!-- .sidebar -->
<?php get_footer(); ?>