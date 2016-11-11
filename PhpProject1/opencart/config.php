<?php

//HTTP_HOST,SERVER_NAME,SERVER_ADDR,REMOTE_ADDR
// HTTP
/* print $_SERVER["HTTP_HOST"].'<br/>';
  print $_SERVER["SERVER_NAME"].'<br/>';
  print $_SERVER["SERVER_ADDR"].'<br/>';
  exit; */
$serverPort = '';
$isIpFun = '';
$isFile = 'PhpProject1/opencart1/';

$host = filter_input(INPUT_SERVER, 'HTTP_HOST', FILTER_SANITIZE_URL);
$serverName = filter_input(INPUT_SERVER, 'SERVER_NAME', FILTER_SANITIZE_URL);
$addr = filter_input(INPUT_SERVER, 'SERVER_ADDR', FILTER_SANITIZE_URL);
$serverPort = filter_input(INPUT_SERVER, 'SERVER_PORT', FILTER_SANITIZE_NUMBER_INT);



$serverReferer = filter_input(INPUT_SERVER, 'HTTP_REFERER', FILTER_SANITIZE_URL);



$isIpFun = empty($host) ? $addr : $serverName;

$serverPort = (!empty($serverPort) && $serverPort !== '80') ? ':' . $serverPort :'';


// HTTP
define('HTTP_SERVER', 'http://' . $isIpFun . $serverPort.'/'.$isFile);

// HTTPS
define('HTTPS_SERVER', 'http://' . $isIpFun . $serverPort.'/'.$isFile);

// DIR
//
define('DIR_APPLICATION', __DIR__ . '/catalog/');
define('DIR_SYSTEM', __DIR__ . '/system/');
define('DIR_IMAGE', __DIR__ . '/image/');
define('DIR_LANGUAGE', __DIR__ . '/catalog/language/');
define('DIR_TEMPLATE', __DIR__ . '/catalog/view/theme/');
define('DIR_CONFIG', __DIR__ . '/system/config/');
define('DIR_CACHE', __DIR__ . '/system/storage/cache/');
define('DIR_DOWNLOAD', __DIR__ . '/system/storage/download/');
define('DIR_LOGS', __DIR__ . '/system/storage/logs/');
define('DIR_MODIFICATION', __DIR__ . '/system/storage/modification/');
define('DIR_UPLOAD', __DIR__ . '/system/storage/upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '112.124.13.197');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'dlhchh$#!35866');
define('DB_DATABASE', 'mycnopencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'mcc_');
