<?php

//HTTP_HOST,SERVER_NAME,SERVER_ADDR,REMOTE_ADDR
// HTTP
/*print $_SERVER["HTTP_HOST"].'<br/>';
print $_SERVER["SERVER_NAME"].'<br/>';
print $_SERVER["SERVER_ADDR"].'<br/>';
echo '<hr>';*/
$serverPort = '';
$isIpFun = '';
$isFile = 'PhpProject1/opencart/';

$host = filter_input(INPUT_SERVER, 'HTTP_HOST', FILTER_SANITIZE_URL);
$serverName = filter_input(INPUT_SERVER, 'SERVER_NAME', FILTER_SANITIZE_URL);
$addr = filter_input(INPUT_SERVER, 'SERVER_ADDR', FILTER_SANITIZE_URL);
$serverPort = filter_input(INPUT_SERVER, 'SERVER_PORT', FILTER_SANITIZE_NUMBER_INT);
/*echo $host.'<br/>'.$serverName.'<br/>'.$addr.'<br/>'.$serverPort;
exit();*/



$isIpFun = empty($host) ? $addr : $serverName;

$serverPort = (!empty($serverPort) && $serverPort !== '80') ? ':' . $serverPort :'';


// HTTP
define('HTTP_SERVER', 'http://' . $isIpFun . $serverPort.'/'.$isFile);

// HTTPS
define('HTTPS_SERVER', 'http://' . $isIpFun . $serverPort.'/'.$isFile);

// DIR

$dir__ = str_replace ('\\','/',__DIR__);

define('DIR_APPLICATION', $dir__. '/catalog/');
define('DIR_SYSTEM', $dir__. '/system/');
define('DIR_IMAGE', $dir__. '/image/');
define('DIR_LANGUAGE', $dir__. '/catalog/language/');
define('DIR_TEMPLATE', $dir__. '/catalog/view/theme/');
define('DIR_CONFIG', $dir__. '/system/config/');
define('DIR_CACHE', $dir__. '/system/storage/cache/');
define('DIR_DOWNLOAD', $dir__. '/system/storage/download/');
define('DIR_LOGS', $dir__. '/system/storage/logs/');
define('DIR_MODIFICATION', $dir__. '/system/storage/modification/');
define('DIR_UPLOAD', $dir__. '/system/storage/upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '192.168.1.13');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '123');
define('DB_DATABASE', 'mycnopencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'mcc_');
