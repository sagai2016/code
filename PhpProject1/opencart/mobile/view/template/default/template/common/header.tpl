
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xmlns:wb="http://open.weibo.com/wb">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta property="qc:admins" content="114737352676513631246375" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="view/stylesheet/stylesheet.css" rel="stylesheet">
<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
<link href="view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<script src="view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<script src="view/javascript/jquery/jquery.flexslider.js" type="text/javascript"></script>
<script src="view/javascript/o-script.js" type="text/javascript"></script>
<script src="view/javascript/common.js" type="text/javascript"></script>



