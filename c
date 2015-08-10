[1mdiff --git a/chequeate b/chequeate[m
[1m--- a/chequeate[m
[1m+++ b/chequeate[m
[36m@@ -1 +1 @@[m
[31m-Subproject commit a9928f9bdfc134e05393ba9c6e3787217f303d0e[m
[32m+[m[32mSubproject commit a9928f9bdfc134e05393ba9c6e3787217f303d0e-dirty[m
[1mdiff --git a/wp-config.php b/wp-config.php[m
[1mdeleted file mode 100644[m
[1mindex f7c44c4..0000000[m
[1m--- a/wp-config.php[m
[1m+++ /dev/null[m
[36m@@ -1,80 +0,0 @@[m
[31m-<?php[m
[31m-/**[m
[31m- * The base configurations of the WordPress.[m
[31m- *[m
[31m- * This file has the following configurations: MySQL settings, Table Prefix,[m
[31m- * Secret Keys, and ABSPATH. You can find more information by visiting[m
[31m- * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}[m
[31m- * Codex page. You can get the MySQL settings from your web host.[m
[31m- *[m
[31m- * This file is used by the wp-config.php creation script during the[m
[31m- * installation. You don't have to use the web site, you can just copy this file[m
[31m- * to "wp-config.php" and fill in the values.[m
[31m- *[m
[31m- * @package WordPress[m
[31m- */[m
[31m-[m
[31m-// ** MySQL settings - You can get this info from your web host ** //[m
[31m-/** The name of the database for WordPress */[m
[31m-define('DB_NAME', 'wordpress');[m
[31m-[m
[31m-/** MySQL database username */[m
[31m-define('DB_USER', 'root');[m
[31m-[m
[31m-/** MySQL database password */[m
[31m-define('DB_PASSWORD', '');[m
[31m-[m
[31m-/** MySQL hostname */[m
[31m-define('DB_HOST', 'localhost');[m
[31m-[m
[31m-/** Database Charset to use in creating database tables. */[m
[31m-define('DB_CHARSET', 'utf8');[m
[31m-[m
[31m-/** The Database Collate type. Don't change this if in doubt. */[m
[31m-define('DB_COLLATE', '');[m
[31m-[m
[31m-/**#@+[m
[31m- * Authentication Unique Keys and Salts.[m
[31m- *[m
[31m- * Change these to different unique phrases![m
[31m- * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}[m
[31m- * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.[m
[31m- *[m
[31m- * @since 2.6.0[m
[31m- */[m
[31m-define('AUTH_KEY',         'm$kkM5|)Z$|SDKomvcvg6Gi#u9v-g_IO=52adA~EFq4{`d?F@MWAPB~WAOh5vu)(');[m
[31m-define('SECURE_AUTH_KEY',  'dwMu:J<;(5Il(+T|accI60}6X;:Mk#)ZA7 np3Dr?w_or/L3q^Faz3iSr:r$UOc ');[m
[31m-define('LOGGED_IN_KEY',    '=b[b@L;EZ2~)B#j(KA:pOofvIW6ztD7=l$0gU%s<-?SH0L}}Mr7Ntw6Zv5Gp3oHl');[m
[31m-define('NONCE_KEY',        'Lj4DnUH?3sC}H9jJQj1!q]?I/VNca4Q`^}?:GoFO>$loNt9X,!.XjN?%(+/iid }');[m
[31m-define('AUTH_SALT',        'IAdE>H3sHsq]~3L#EH&M@0G.&($%UNT#d^vBY/tWLxQ<j=c H0OmokfqGT2X_&i)');[m
[31m-define('SECURE_AUTH_SALT', 'a*w-G=u9bHG>T1@#fMvwS4<>dlR+M):U8L Ki=sln`rc?{}OIknO-yci5Y9G6ilu');[m
[31m-define('LOGGED_IN_SALT',   '=wQ?u~4a4a1Z*>&r*P)%QW>wgd/.{Rf1!<t.Hlysvw*Q]~Zj7Lto[vFZBGGCDZ{H');[m
[31m-define('NONCE_SALT',       'uHu+am}sHJm,6.uRvE0(M!C<zivLOt|N>7k^p^9=Z)>tEE#Eu(/4,xp`z`=$vA&M');[m
[31m-[m
[31m-/**#@-*/[m
[31m-[m
[31m-/**[m
[31m- * WordPress Database Table prefix.[m
[31m- *[m
[31m- * You can have multiple installations in one database if you give each a unique[m
[31m- * prefix. Only numbers, letters, and underscores please![m
[31m- */[m
[31m-$table_prefix  = 'wp_';[m
[31m-[m
[31m-/**[m
[31m- * For developers: WordPress debugging mode.[m
[31m- *[m
[31m- * Change this to true to enable the display of notices during development.[m
[31m- * It is strongly recommended that plugin and theme developers use WP_DEBUG[m
[31m- * in their development environments.[m
[31m- */[m
[31m-define('WP_DEBUG', false);[m
[31m-[m
[31m-/* That's all, stop editing! Happy blogging. */[m
[31m-[m
[31m-/** Absolute path to the WordPress directory. */[m
[31m-if ( !defined('ABSPATH') )[m
[31m-	define('ABSPATH', dirname(__FILE__) . '/');[m
[31m-[m
[31m-/** Sets up WordPress vars and included files. */[m
[31m-require_once(ABSPATH . 'wp-settings.php');[m
[1mdiff --git a/wp-content/themes/chequear/index.php b/wp-content/themes/chequear/index.php[m
[1mdeleted file mode 100644[m
[1mindex 605049b..0000000[m
[1m--- a/wp-content/themes/chequear/index.php[m
[1m+++ /dev/null[m
[36m@@ -1,37 +0,0 @@[m
[31m-<?php get_header(); ?>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-	 <div class="search">[m
[31m-[m
[31m-      <section class="secciones">[m
[31m-[m
[31m-<?php $pages = get_pages($args);[m
[31m-[m
[31m-foreach($pages as $page){[m
[31m-    ?>[m
[31m-[m
[31m-        <div class="seccion restaurant">[m
[31m-             <h2> <?php echo $page->post_title ?> </h2>[m
[31m-[m
[31m-            <a href="<?php echo get_page_link($page->ID); ?>">VISITAR             </a>[m
[31m-        </div>[m
[31m-[m
[31m-        <?php   } ?>[m
[31m-    </section>[m
[31m-[m
[31m-[m
[31m-    <div class="mascomentados">[m
[31m-        Mas comentados[m
[31m-    </div>[m
[31m-    <section class="masvisitados">[m
[31m-    </section>[m
[31m-    </div>[m
[31m-[m
[31m-   [m
[31m-    [m
[31m-[m
[31m-[m
[31m-<?php get_footer(); ?>[m
[31m-</body>[m
[1mdiff --git a/wp-content/themes/chequear/style.css b/wp-content/themes/chequear/style.css[m
[1mdeleted file mode 100644[m
[1mindex 41c67c9..0000000[m
[1m--- a/wp-content/themes/chequear/style.css[m
[1m+++ /dev/null[m
[36m@@ -1,341 +0,0 @@[m
[31m-/*[m
[31m-Nombre Tema: Chequeate Design[m
[31m-Tema URI:[m
[31m-Autor: DevelUP TEAM[m
[31m-Autor URI: www.develup.com[m
[31m-Descripción: Tema diseñado unicamente para www.chequeate.com[m
[31m-Licencia: All Right Reserved[m
[31m-Licencia URI: http://www.gnu.org/licenses/gpl-2.0.html[m
[31m-Etiquetas: n[m
[31m-[m
[31m-*/[m
[31m-[m
[31m-[m
[31m-@import url(http://fonts.googleapis.com/css?family=Lobster);[m
[31m-@import url(http://fonts.googleapis.com/css?family=Droid+Sans);[m
[31m-h2 {[m
[31m-    margin: 0px;[m
[31m-}[m
[31m-[m
[31m-* {[m
[31m-    margin: 0px;[m
[31m-    box-sizing: border-box;[m
[31m-    font-family: "Droid Sans";[m
[31m-    text-decoration: none;[m
[31m-[m
[31m-}[m
[31m-[m
[31m-[m
[31m-[m
[31m-body {[m
[31m-    background: rgba(250, 128, 41, 0.4);[m
[31m-[m
[31m-}[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-header {[m
[31m-    width: 100%;[m
[31m-    background:#FA8029;[m
[31m-    box-shadow: 0px 2px 12px 1px black;[m
[31m-  	border: 2px solid rgba(1,128,176,.8);[m
[31m-    border-bottom:5% #FCC39A;[m
[31m-[m
[31m-[m
[31m-}[m
[31m-[m
[31m-.logo {[m
[31m-    width: 450px;[m
[31m-    height: 150px;[m
[31m-    margin-left: 5%;[m
[31m-}[m
[31m-[m
[31m-/*header p {[m
[31m-    font-size: 32px;[m
[31m-    display: inline-block;[m
[31m-    position: relative;[m
[31m-    bottom: 25px;[m
[31m-    font-family: Verdana;[m
[31m-    -webkit-text-stroke-width: 2px;[m
[31m-    -webkit-text-stroke-color: black;[m
[31m-    color: white;[m
[31m-    font-weight: bold;[m
[31m-}*/[m
[31m-[m
[31m-nav li{[m
[31m-    list-style: none;[m
[31m-	display:inline-block;[m
[31m-}[m
[31m-[m
[31m-[m
[31m-.search {[m
[31m-    background: white;[m
[31m-    width: 95%;[m
[31m-    margin: 30px auto 10px auto;[m
[31m-    /*background-image: url('imagenes/fondo.jpg');*/[m
[31m-    /*box-shadow: 0px -2px 12px 6px rgba(170, 212, 0, 0.8) inset;*/[m
[31m-    border: 1px solid rgba(0, 0, 0, 0.3);[m
[31m-}[m
[31m-[m
[31m-[m
[31m-[m
[31m-.secciones {[m
[31m-    width: 100%;[m
[31m-    border: 1px solid gray;[m
[31m-    margin: auto;[m
[31m-    overflow: auto;[m
[31m-    background: white;[m
[31m-    box-shadow: -0px -2px 2px 0px black inset;[m
[31m-}[m
[31m-[m
[31m-.seccion {[m
[31m-    text-align: center;[m
[31m-    float: left;[m
[31m-    width: 23.5%;[m
[31m-    height: 180px;[m
[31m-    margin: 10px;[m
[31m-    border: 1px solid rgba(155,155,155,1);[m
[31m-    /*transition: border .25s ease-in-out;[m
[31m-    -web