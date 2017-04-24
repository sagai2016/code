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
            }
        </style>
    </head> 
    <body> 
        <input type="hidden" value="<?php echo $card_id?>" class='card'>
        <div style='font-size:14px;' data-postback='goods_card_mt_postback' data-name='goods_card_mt'  class="goodsCard">点击领取茅台券</div>
        <div style='font-size:14px;' data-postback='goods_card_wly_postback' data-name='goods_card_wly' class="goodsCard">点击领取五梁液券</div>
        <script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="../webfile/js/weixinopnjssdk.js?id=<?php echo time();?>"></script>
        <script type="text/javascript">
        weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
        weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
        weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
        weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
        weixinopnjssdk.ready(function(){
            var h = ['用户已领取', '卡已发完明天请早', '活动尚未开始或您今天已领取过卡券了', '准备领票','领票成功'];
            $('.goodsCard').on('click', function () {
                var goodsName = $(this).data('name');
                var goodspostback = $(this).data('postback');
                    $.getJSON('index.php?route=account/mt/'+goodsName,function (p) {
                       alert(h[p.msg]);
                       if(p.msg === 3){
                        weixinopnjssdk.addCard(p.info[0],p.info[1],p.info[2],function(s){
                            if(s.errMsg=='addCard:ok'){
                                $.getJSON('index.php?route=account/mt/'+goodspostback,function(p){
                                        alert(h[p.msg]);
                                });
                        };});
                };});
            });
        });
        </script>
    </body> 
</html>
