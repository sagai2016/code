<?php
$card =  $jssdk->getCardInfo($id = 1111,$deal_detail = '芭蕉卡券',$description = '芭蕉卡券的描述',$logo = 'http://'.$_SERVER['HTTP_HOST'].'/'.'image/catalog/code.jpg',$brand_name = '芭蕉',$title = '芭蕉的卡券名',$sub_title = '芭蕉的券名',$notice = '芭蕉卡券使用说明',$custom_url_name = '进入芭蕉地',$custom_url = 'www.google.com',$promotion_url_name = '卖芭蕉了。。。',$promotion_url = 'www.baidu.com');
/*if(!empty($_GET['encrypt_code'])){
	$jssdk->getCardCheack($_GET['encrypt_code'],$_GET['card_id']);
}*/
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