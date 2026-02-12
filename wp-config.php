<?php
/**
* The base configuration for WordPress
*
* The wp-config.php creation script uses this file during the installation.
* You don't have to use the web site, you can copy this file to "wp-config.php"
* and fill in the values.
*
* This file contains the following configurations:
*
* * Database settings
* * Secret keys
* * Database table prefix
* * Localized language
* * ABSPATH
*
* @link https://wordpress.org/support/article/editing-wp-config-php/
*
* @package WordPress
*/
// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'radioamerica6625' );
/** Database username */
define( 'DB_USER', 'radioamerica' );
/** Database password */
define( 'DB_PASSWORD', 'eC`f-Q.?P#wHH<):' );
/** Database hostname */
define( 'DB_HOST', 'localhost' );
/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );
/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
/**#@+
* Authentication unique keys and salts.
*
* Change these to different unique phrases! You can generate these using
* the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
*
* You can change these at any point in time to invalidate all existing cookies.
* This will force all users to have to log in again.
*
* @since 2.6.0
*/
define( 'AUTH_KEY',          'V3D&A9DLJ]4$%qIK>1]ahZ6TgbXB{[<nu]m1oKprl<+,kW/ d{ZQYb-quv%[#$r4' );
define( 'SECURE_AUTH_KEY',   '!Zdst.=q=@}LY}?N13:0ODkYEn1|is58z*TxoM2<eQ+,G>TktTZrF)cY7J[Z=,cc' );
define( 'LOGGED_IN_KEY',     'gZ4qKa}_/+7<BJldHk ?-e>!V$q2xhu>!{6jgZy=Oghc6l.w.7w4bwl8-LjdT+/d' );
define( 'NONCE_KEY',         'D{j|w!*uYNz t,|;(-nVSad6@o*8xTdNgyd#Hb?we*c^i)D!d)B7q8R+ki`y$%|6' );
define( 'AUTH_SALT',         '2E&x!~XwTd}QRVH2ro(6kp#3#&%,+[V %/g}lL,/3xM]=L.PAN1hSgzttGoUEeUr' );
define( 'SECURE_AUTH_SALT',  '(Am=f,o6-ND&h`O5KL{+,YeW#BP$2)q(8H/VuodHHB{DI$p1qkXA7<MvVRYZDD6j' );
define( 'LOGGED_IN_SALT',    '#@/`o5%On;%Z|R]Z#lZ#T]43>To&o&`HKv%kzL~}[uIOc)j^a`K#50z3DY#3.c!g' );
define( 'NONCE_SALT',        'x <^lJuXU=/;~$FZ;zLqS,[8wgMrw.Dz|b~^=wsqD<m0w0^Q1/2!5 A@<QN$G]~3' );
define( 'WP_CACHE_KEY_SALT', 'mijr*quP#8 twVn-J})f<hIJ(cQpz5%zqY,}8,z]!C.OTDSvKA@AaU+wG l^>lmT' );
/**#@-*/
/**
* WordPress database table prefix.
*
* You can have multiple installations in one database if you give each
* a unique prefix. Only numbers, letters, and underscores please!
*/
$table_prefix = 'RA2024_';
/* Add any custom values between this line and the "stop editing" line. */
/**
* For developers: WordPress debugging mode.
*
* Change this to true to enable the display of notices during development.
* It is strongly recommended that plugin and theme developers use WP_DEBUG
* in their development environments.
*
* For information on other constants that can be used for debugging,
* visit the documentation.
*
* @link https://wordpress.org/support/article/debugging-in-wordpress/
*/
if ( ! defined( 'WP_DEBUG' ) ) {
define( 'WP_DEBUG', false );
}
/* That's all, stop editing! Happy publishing. */
/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
define( 'ABSPATH', __DIR__ . '/' );
}
/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
