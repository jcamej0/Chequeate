<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
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
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '[S,~aHxt^d(9<n$0|NARJ_Iq)FZ#%oJ@WK0.+-e,Td >ss+aSC9Pt630N<|*&Y7?');
define('SECURE_AUTH_KEY',  'B@Q|1H$%9ciKQ!F.dQ>Z@A6;H&]Z+W36({fv8~-a+OtL_|41wYXe5^KJ#h]hMq75');
define('LOGGED_IN_KEY',    'T$s&5HCugza-F|pzrE8{q(-0@DWxYrl!gwYA{ @Elz9ikOCN/+6o!a)U[.CK~,*F');
define('NONCE_KEY',        'NQbIZ_(X9}Z>Hw|<7b&;I(dE{zV|+g,mEMDWiHSHlgP>-t@YyR~In5)OF`EU`_Tx');
define('AUTH_SALT',        '+;<TUJf=XU5&i)C9:(%CS|h@aW{s}+[=PUs!SF^z&%GD)3G3vXf6jqInG5vzr$XI');
define('SECURE_AUTH_SALT', 'x|{x*Rt]ntyz,rV304V|%^t?#pb@(7%4>Xtj,fM4`]edy@BQ@A`If#NDh:-7,1LI');
define('LOGGED_IN_SALT',   'Gy]:jM8W:iL%I9x}.XaZ%~P!pbWa80=|s>w~<w(Kc-}>*D1z93Ho$A{~U?Ei/T`)');
define('NONCE_SALT',       'ZLPs$#/C$Kh+&6)(qX:i-@m&^<?6h_buF}51oI]K}+S}<-v5vsi4 O+,7|y0E]uX');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
