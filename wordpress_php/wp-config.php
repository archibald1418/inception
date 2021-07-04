<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', getenv('DB_NAME') );

/** Имя пользователя MySQL */
define( 'DB_USER', getenv('DB_USER') );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', getenv('DB_PASSWORD') );

/** Имя сервера MySQL */
define( 'DB_HOST', getenv('DB_HOST') );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '/y?.1ShjytYmt7`. K!PfF&9`5:2A<.u?|LH)}cj)$>T.a<<JI+S)K8}FNN|,401');
define('SECURE_AUTH_KEY', 'n^YC+MQY~T)}*K|#Zp$sFkC7^s4 %l~=.:Pw~qF<MMm.t,jFNdY!Rz{HJf,A,(_D');
define('LOGGED_IN_KEY', 'HLt8!g-sjf>A~~Ct)yI<+{sV,d9Q+ORyJ8KeR1D?+&UQti7HC;YK2d=P.u7h`8-h');
define('NONCE_KEY',  'IwrpzE/U/P9qK{R60/j#!WZfK}3:p$pD%P)?iVBjUBepbWLh`1+iBk^>w--.)q4>');
define('AUTH_SALT', 'bkX2BdSf))ZA7aa!BTQ|5hD5/KSW[|MV!Q_,;+|$E;+9o{o1o)x[A8q8DF`qt^j@');
define('SECURE_AUTH_SALT', 'tU|t9TNy-@m+,.|h`D52e9g{r venl$@$1g:Ct$-c!+j4ghJ%/mQMalXdMio5 l#');
define('LOGGED_IN_SALT', 'd|^WV<Km+!DY5oSw.i,C{dm~eTAyAL#jkVJGZ{U{b90ZG&eVfS&9)SJ-yInF:X?Y');
define('NONCE_SALT', 'U;reh#o/U9S|rP8+J3g3r|l^CNxkD,-RU+/uqT,YA?A3oX6to&5.g^:fcqi-@+[5');

/**#@-*/

define ( 'WP_ALLOW_REPAIR' , true);

// This enables debugging.
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
define( 'SAVEQUERIES', true );

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
