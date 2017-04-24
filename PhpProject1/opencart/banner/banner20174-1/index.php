<?php 
header("Content-type:text/html;charset=utf-8");

$m = filter_input(INPUT_GET,'m');
$d = filter_input(INPUT_GET,'d');
(empty($m) || empty($d) ) && exit();

header ( 'Content-type: image/png'); 

$font_size = 60;
$font_size2 = 13; 
$font_size3 = 45; 


$text = $m; 
$text2 = $d; 
$text3 = '元'; 

$text >1000 &&  $font_size = 55;
$font_y = $text >=1000 ? 210 :  230;
$font_y3 = $text >=1000 ? 400 :  370;


$font = '/home/zc2017/opencart/banner/banner20174-1/FZCSJW_0.TTF'; 
$font2 = '/home/zc2017/opencart/banner/banner20174-1/simhei.ttf'; 
$im = imagecreatefrompng("bj.png");

$font  =   iconv("UTF-8","gb2312",$font);
$red = imagecolorallocate($im, 187,57,74);  //文本色彩
imagettftext ( $im , $font_size , 0 , $font_y, 385 , $red , $font , $text ); 

$font2  =   iconv("UTF-8","gb2312",$font2);
$red2 = imagecolorallocate($im, 234,202,182);  //文本色彩
imagettftext ( $im , $font_size2 , 0 , 235, 473 , $red2 , $font2 , $text2 ); 

$font  =   iconv("UTF-8","gb2312",$font);
$red = imagecolorallocate($im, 187,57,74);  //文本色彩
imagettftext ( $im , $font_size3 , 0 , $font_y3, 380 , $red , $font , $text3 ); 

imagepng($im);
imagedestroy($im);

?> 