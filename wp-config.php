<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'm$kkM5|)Z$|SDKomvcvg6Gi#u9v-g_IO=52adA~EFq4{`d?F@MWAPB~WAOh5vu)(');
define('SECURE_AUTH_KEY',  'dwMu:J<;(5Il(+T|accI60}6X;:Mk#)ZA7 np3Dr?w_or/L3q^Faz3iSr:r$UOc ');
define('LOGGED_IN_KEY',    '=b[b@L;EZ2~)B#j(KA:pOofvIW6ztD7=l$0gU%s<-?SH0L}}Mr7Ntw6Zv5Gp3oHl');
define('NONCE_KEY',        'Lj4DnUH?3sC}H9jJQj1!q]?I/VNca4Q`^}?:GoFO>$loNt9X,!.XjN?%(+/iid }');
define('AUTH_SALT',        'IAdE>H3sHsq]~3L#EH&M@0G.&($%UNT#d^vBY/tWLxQ<j=c H0OmokfqGT2X_&i)');
define('SECURE_AUTH_SALT', 'a*w-G=u9bHG>T1@#fMvwS4<>dlR+M):U8L Ki=sln`rc?{}OIknO-yci5Y9G6ilu');
define('LOGGED_IN_SALT',   '=wQ?u~4a4a1Z*>&r*P)%QW>wgd/.{Rf1!<t.Hlysvw*Q]~Zj7Lto[vFZBGGCDZ{H');
define('NONCE_SALT',       'uHu+am}sHJm,6.uRvE0(M!C<zivLOt|N>7k^p^9=Z)>tEE#Eu(/4,xp`z`=$vA&M');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
