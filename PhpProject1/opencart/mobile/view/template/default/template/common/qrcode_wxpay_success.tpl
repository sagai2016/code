<!doctype html>
<html lang="en">
<header>
<meta charset="UTF-8">
<title>酔藏商城</title>
<script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="view/stylesheet/stylesheet.css" rel="stylesheet">
<script src="view/javascript/jquery/jquery.flexslider.js"></script> 
<script src="view/javascript/o-script.js"></script>
<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
</header>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" <?php echo 'class="'.$class.'"'; ?>><?php echo $content_top; ?>
      <h1 class="text-center"><?php echo $heading_title; ?></h1>
      <div class="text-center">
        <p>
          <img alt="微信扫码支付" src="http://paysdk.weixin.qq.com/example/qrcode.php?data=<?php echo urlencode($code_url); ?>" style="width:150px;height:150px;">
        </p>
      </div>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function () {
	setInterval("ajaxstatus()", 3000);    
});

function ajaxstatus() {
		$.ajax({
		url: '<?php echo $ajax_check_order_status; ?>&order_id=<?php echo $order_id; ?>',
		dataType: 'json',
		success: function(json) {
			if (json['success']) {
				window.location.href = "index.php?route=checkout/success";
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
} 
</script>
<?php echo $footer; ?>
