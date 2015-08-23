jQuery(document).ready(function($) {
    $('.tax-filter').click(function(event) {


        contador = 1;

        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false;
        }


        var selecetd_taxonomy = $(this).attr('title');



        $('.tagged-posts').fadeOut();

        data = {
            action: 'filter_posts',
            afp_nonce: afp_vars.afp_nonce,
            taxonomy: selecetd_taxonomy,
            pagina_seccion: pagina_seccion,
        };

        $.post(afp_vars.afp_ajax_url, data, function(response) {

            if (response) {


                $('.tagged-posts').html(response);

                $('.tagged-posts').fadeIn();
            };
        });
    });




    $('.tax2-filter').click(function(event) {


        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false;
        }



        var selecetd_taxonomy = $(this).attr('title');

        $('.tagged-posts').fadeOut();

        data = {
            action: 'filter_posts',
            afp_nonce: afp_vars.afp_nonce,
            taxonomy: selecetd_taxonomy,
            estado: pagina_seccion,
            categoria: pagina_cat,
        };

        $.post(afp_vars.afp_ajax_url, data, function(response) {

            if (response) {

                $('.tagged-posts').html(response);

                $('.tagged-posts').fadeIn();
            };
        });
    });


    jQuery('#Paginacion a').live('click', function(e) {

        e.preventDefault();

        var link = jQuery(this).attr('href');

        jQuery('#main-col').html('Loading...');

        jQuery('#main-col').load(link + ' .tagged-post');



    });

});



function cargar_publicaciones() {


    $('.tagged-posts').fadeOut();

    data = {
        action: 'filter_posts',
        afp_nonce: afp_vars.afp_nonce,
        estado: pagina_seccion,
    };

    $.post(afp_vars.afp_ajax_url, data, function(response) {

        if (response) {


            $('.tagged-posts').html(response);

            $('.tagged-posts').fadeIn();
        };
    });
};








function obtenerCiudad(valor) {


    var data = {

        estadoSeleccionado: valor,

        action: 'lista_de_ciudades',
        afp_nonce: afp_vars.afp_nonce
    }

    $.post(afp_vars.afp_ajax_url, data, function(respuesta) {
        if (respuesta) {

            $('#testing').html(respuesta);
            $('#lista-ciudades').html(respuesta);


        }
    });
}



function seleccionarEstado(valor) {


}

function prueba(valor) {

    window.categoriasescogida = null;
    contador = 1;

    if (event.preventDefault) {
        event.preventDefault();
    } else {
        event.returnValue = false;
    }


    window.ciudadescogida = valor;



    $('.tagged-posts').fadeOut();

    data = {
        action: 'filter_posts',
        afp_nonce: afp_vars.afp_nonce,
        taxonomy: window.ciudadescogida,
        estado: pagina_seccion,
        estado2: window.estadoescogido,
        pagina_seccion: pagina_seccion,
    };

    $.post(afp_vars.afp_ajax_url, data, function(response) {

        if (response) {

            $('.tagged-posts').html(response);

            $('.tagged-posts').fadeIn();
        };
    });
}


function cambiarPublicacionesEstado(valor) {

    window.ciudadescogida = null;
    window.categoriasescogida = null;


    contador = 1;

    if (event.preventDefault) {
        event.preventDefault();
    } else {
        event.returnValue = false;
    }


    window.estadoescogido = valor;

    alert(window.estadoescogido)


    $('.tagged-posts').fadeOut();

    data = {
        action: 'publicaciones_estado',
        afp_nonce: afp_vars.afp_nonce,
        taxonomy2: window.estadoescogido,
        estado: pagina_seccion,
        pagina_seccion: pagina_seccion


    };

    $.post(afp_vars.afp_ajax_url, data, function(response) {

        if (response) {

            $('.tagged-posts').html(response);

            $('.tagged-posts').fadeIn();
        };
    });
}



function listaCategorias(valor) {


    var e = document.getElementById("estadosopciones");
    var seleccionado = e.options[e.selectedIndex].text;
    alert(seleccionado);



    var data = {
        action: 'lista_de_categorias',
        estadoSeleccionado: seleccionado,
        afp_nonce: afp_vars.afp_nonce,
        ciudadescogida: window.ciudadescogida,
        pagina_seccion: pagina_seccion
    }

    alert(ciudadescogida);

    $.post(afp_vars.afp_ajax_url, data, function(respuesta) {
        if (respuesta) {

            alert(respuesta);
            $('#lista-categorias').html(respuesta);


        }
    });


}



function cambiarporcategoria(valor) {


    contador = 1;
    if (event.preventDefault) {
        event.preventDefault();
    } else {
        event.returnValue = false;
    }

    window.categoriasescogida = valor;

    var select_city = window.ciudadescogida;



    $('.tagged-posts').fadeOut();

    data = {
        action: 'publicaciones_por_categoria',
        afp_nonce: afp_vars.afp_nonce,
        estado_seleccionado_categoria: window.estadoescogido,
        categoria_seleccionada: window.categoriasescogida,
        ciudad_seleccionado_categoria: select_city,
        pagina_seccion: pagina_seccion
    };



    $.post(afp_vars.afp_ajax_url, data, function(response) {

        if (response) {

            alert(select_city);

            $('.tagged-posts').html(response);

            $('.tagged-posts').fadeIn();
        };
    });


}
