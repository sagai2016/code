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
             margin:50% auto;
            padding: 0;
            width: 100%;
          }
           .click{
              width: 100%;
              display: block;
              text-align: center;
              border-radius: 5px;
           }
            body ,html{
              width: 100%;
              height: 100%;
              margin:0;
              padding: 0;
            }
            body{
              background: url('/banner/banner20174-1/index.php?m=<?php echo $num;?>&d=<?php echo $time;?>');
              background-size: 100%;
            }


       </style>
</head> 
<body> 
<?php file_put_contents('/home/zc2017/opencart/test123.txt','/banner/banner20174-1/index.php?m='.$num.'&d='.$time);?>

<script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="../webfile/js/weixinopnjssdk.js?id=<?php echo time();?>"></script>
<script type="text/javascript">

weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
weixinopnjssdk.ready(function(){
    $('body').on('click',function(){
        weixinopnjssdk.addCard("<?php echo $info[0]?>","<?php echo $info[1]?>","<?php echo $info[2]?>",function(s){
                if(s.errMsg=='addCard:ok'){

                  $.get('/mobile/index.php?route=account/send/reduceMoney',function(p){
                      if(p==='true'){
                          alert('卡券领取成功,酒券将被扣除对应的积分');
                          location.href='/mobile/index.php?route=account/jiuquan'; 
                      }
                    });
                }
          });
    });
})
</script>


  <?php if(!empty($_SESSION['signPackage'])):?>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="../webfile/js/weixinopnjssdk.js"></script>
        <script type="text/javascript">
            window.onload =function(){
            weixinopnjssdk.appId = '<?php echo $_SESSION['signPackage']['appId']?>';
            weixinopnjssdk.timestamp = '<?php echo $_SESSION['signPackage']['timestamp']?>';
            weixinopnjssdk.nonceStr = '<?php echo $_SESSION['signPackage']['nonceStr']?>';
            weixinopnjssdk.signature = '<?php echo $_SESSION['signPackage']['signature']?>';
            weixinopnjssdk.ready(function(){
            wx.hideOptionMenu();
            });
            }
        </script>
        <?php endif;?>


</body> 
</html>




