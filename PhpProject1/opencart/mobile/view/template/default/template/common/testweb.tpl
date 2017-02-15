<?php
$card =  $jssdk->getCardInfo();
if(!empty($_GET['encrypt_code'])){
	$jssdk->getCardCheack($_GET['encrypt_code'],$_GET['card_id']);
}
?>
<html>
    <head>
<script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="view/javascript/weixinopnjssdk.js"></script>
<script type="text/javascript">
$(function(){
        weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
        weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
        weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
        weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
        weixinopnjssdk.ready(function(){
	        $('.click').on('click',function(){
	        	weixinopnjssdk.addCard("<?php echo $card[0]?>","<?php echo $card[1]?>","<?php echo $card[2]?>")
	        });
        },true);
    });
</script>
    </head>
    <body>
        <div class="click">
          asdhalksdh  
        </div>
    </body>
</html>