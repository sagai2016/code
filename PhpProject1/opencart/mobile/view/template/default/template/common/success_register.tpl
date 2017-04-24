<?php if($checkIsPush): ?>
<html> 
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="content-type" content="text/html; charset=utf-8"/> 
<title>八窖酒库</title> 
<style type="text/css">
          body{
            margin:0;
            padding: 0;
            width: 100%;
          }
          div{
             margin:0;
            padding: 0;
            width: 100%;
          }
           .click{
              width: 100%;
              display: block;
              text-align: center;
              border-radius: 5px;
              color: #fff;
           }
         
       </style>

</head> 
<body> 
<div><img src="../image/catalog/little_images/success.png" class="click"></div>

<script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="../webfile/js/weixinopnjssdk.js?id=<?php echo time();?>"></script>
<script type="text/javascript">
$(function(){
        weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
        weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
        weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
        weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
        weixinopnjssdk.ready(function(){
                $('.click').on('click',function(){
                weixinopnjssdk.addCard("<?php echo $info[0]?>","<?php echo $info[1]?>","<?php echo $info[2]?>",function(){
                  location.href='http://cart.jlwhjl.com/mobile/index.php?route=account/login';
                })
            });
        });
    });
</script>



</body> 
</html>
<?php else :?>
<?php header("HTTP/1.1 404 Not Found");exit();?>   
<?php endif;?>


