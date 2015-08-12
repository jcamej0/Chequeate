jQuery(document).ready(function($) {
    $('.tax-filter').click(function(event) {

        contador = 1;
        // Prevent default action - opening tag page
        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false;
        }

        // Get tag slug from title attirbute
        var selecetd_taxonomy = $(this).attr('title');


        // After user click on tag, fade out list of posts
        $('.tagged-posts').fadeOut();

        data = {
            action: 'filter_posts', // function to execute
            afp_nonce: afp_vars.afp_nonce, // wp_nonce
            taxonomy: selecetd_taxonomy, // selected tag
            estado: pagina_seccion,
        };

        $.post(afp_vars.afp_ajax_url, data, function(response) {

            if (response) {
                // Display posts on page
                $('.tagged-posts').html(response);
                // Restore div visibility
                $('.tagged-posts').fadeIn();
            };
        });
    });




    $('.tax2-filter').click(function(event) {

        // Prevent default action - opening tag page
        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false;
        }


        // Get tag slug from title attirbute
        var selecetd_taxonomy = $(this).attr('title');

        // After user click on tag, fade out list of posts
        $('.tagged-posts').fadeOut();

        data = {
            action: 'filter_posts', // function to execute
            afp_nonce: afp_vars.afp_nonce, // wp_nonce
            taxonomy: selecetd_taxonomy,
            estado: pagina_seccion,
            categoria: pagina_cat,
        };

        $.post(afp_vars.afp_ajax_url, data, function(response) {

            if (response) {
                // Display posts on page
                $('.tagged-posts').html(response);
                // Restore div visibility
                $('.tagged-posts').fadeIn();
            };
        });
    });


jQuery('#Paginacion a').live('click', function(e){

        e.preventDefault();

        var link = jQuery(this).attr('href');

        jQuery('#main-col').html('Loading...');

        jQuery('#main-col').load(link+' .tagged-post');

 

    });

});



function cargar_publicaciones() {

    // After user click on tag, fade out list of posts
    $('.tagged-posts').fadeOut();

    data = {
        action: 'filter_posts', // function to execute
        afp_nonce: afp_vars.afp_nonce, // wp_nonce

        estado: pagina_seccion,
    };

    $.post(afp_vars.afp_ajax_url, data, function(response) {

        if (response) {
            // Display posts on page
            $('.tagged-posts').html(response);
            // Restore div visibility
            $('.tagged-posts').fadeIn();
        };
    });
};
