<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/> 

        <title>八窖酒库</title>
        <style>
            *{
                box-sizing: border-box;

            }
            body, html {
                background: #f8f8f8;
            }
            .message{

                background-color: #fff;
                text-align: center;
                border-radius: 5px 5px 0 5px;
                box-shadow: -3px -6px 7px 1px rgba(204, 204, 204, 0.44);
                margin: 17% 0;
                font-size: 80%;
                text-shadow: 1px 2px 8px rgba(177, 182, 194, 0.77);
                color: #403f3f;
                font-weight: bold;

                border: 1px solid #ccc;
            }
            .info{
                padding-top: 40px;
                display: inline-block;
                font-size: 100%;
                margin: 0;
            }
            .button{
                font-size: 0;
                display:inline-block;
                text-align: center;
                width: 100%;
                margin: 0;

                padding: 0;
                line-height: 0;
            }
            .button img{
                width: 80%;
            }
            a{

                font-size: 14px;;
                text-decoration: none;
                line-height: 20px;
                font-style: normal;
                padding: 8px 10px;
                border: 1px solid #fff;
                background-color: #0080FF;
                border-radius: 5px;
                color: #fff;
                display: block;
                width: 73%;
                margin: auto;
                letter-spacing: 1px;
            }
            a.red{
                background-color: #FF0080;
                margin: 10px auto;
            }
            .p2{
                margin: 0;
                padding: 0;
                width: 100%;
                height: 34px;
            }
            .p2 span{
                width: 0;
                height: 0;
                border-top: 35px solid #a8b2b3;
                border-right: 35px solid #f8f8f8;
                border-bottom: 1px solid #f8f8f8;
                display: block;
                float: right;
                margin: 0px -2px;
            }

        </style>
    </head>
    <body>
        <div class="message">
            <span class="info">助攻完成，您的好友将获得20元酒票奖励！</span>
            <span class="button">
                <img src="/banner/weixin.jpg">
                <a class="red" href="/banner/banner20174-2/index.html">我也想参与活动</a><
                <a href=index.php?>返回首页</a></span>
            <div class="p2">
                <span></span>

            </div>
        </div>


        <?php if(!empty($_SESSION['signPackage'])):?>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="../webfile/js/weixinopnjssdk.js"></script>
        <script type="text/javascript">
        window.onload =function(){
                weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
                weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
                weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
                weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';

                weixinopnjssdk.ready(function(){
                    wx.hideOptionMenu();
                });
            }
              </script>
        <?php endif;?>
    </body>
</html>