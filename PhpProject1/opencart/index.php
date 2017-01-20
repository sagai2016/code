<?php
ini_set('display_errors','On');

error_reporting(E_ALL);


// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

define('PAY_METHOD_CALLBACK', '');
date_default_timezone_set('PRC');


// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('catalog');