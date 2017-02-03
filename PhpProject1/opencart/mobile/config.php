<?php
// // HTTP
// define('HTTP_SERVER', 'http://127.0.0.1/PhpProject1/opencart1/mobile/');
// define('HTTP_CATALOG', 'http://127.0.0.1/PhpProject1/opencart1/');

// // HTTPS
// define('HTTPS_SERVER', 'http://127.0.0.1/PhpProject1/opencart1/mobile/');
// define('HTTPS_CATALOG', 'http://127.0.0.1/PhpProject1/opencart1/');




$serverPort = '';
$isIpFun = '';

$isFile = 'PhpProject1/opencart/';


$host = filter_input(INPUT_SERVER, 'HTTP_HOST', FILTER_SANITIZE_URL);
$serverName = filter_input(INPUT_SERVER, 'SERVER_NAME', FILTER_SANITIZE_URL);
$addr = filter_input(INPUT_SERVER, 'SERVER_ADDR', FILTER_SANITIZE_URL);
$serverPort = filter_input(INPUT_SERVER, 'SERVER_PORT', FILTER_SANITIZE_NUMBER_INT);

$isIpFun = empty($host) ? $addr : $serverName;

$serverPort = (!empty($serverPort) && $serverPort !== '80') ? ':' . $serverPort :'';




// HTTP

define('HTTP_CATALOG', 'http://' . $isIpFun . $serverPort.'/'.$isFile);

// HTTPS

define('HTTPS_CATALOG', 'http://' . $isIpFun . $serverPort.'/'.$isFile);



// HTTP
define('HTTP_SERVER', 'http://' . $isIpFun . $serverPort.'/'.$isFile.'mobile/');

// HTTPS
define('HTTPS_SERVER', 'http://' . $isIpFun . $serverPort.'/'.$isFile.'mobile/');


$dir__ = str_replace ('\\','/',str_replace('mobile', '', __DIR__));
// DIR
define('DIR_APPLICATION', $dir__.'mobile/');
define('DIR_SYSTEM', $dir__.'system/');
define('DIR_IMAGE', $dir__.'image/');
define('DIR_LANGUAGE', $dir__.'mobile/language/');
define('DIR_TEMPLATE', $dir__.'mobile/view/template/');
define('DIR_CONFIG', $dir__.'system/config/');
define('DIR_CACHE', $dir__.'system/storage/cache/');
define('DIR_DOWNLOAD', $dir__.'system/storage/download/');
define('DIR_LOGS', $dir__.'system/storage/logs/');
define('DIR_MODIFICATION', $dir__.'system/storage/modification/');
define('DIR_UPLOAD', $dir__.'system/storage/upload/');
define('DIR_CATALOG', $dir__.'catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '192.168.1.112');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '123');
define('DB_DATABASE', 'mycnopencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'mcc_');