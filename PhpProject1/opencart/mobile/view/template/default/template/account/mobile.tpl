
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜用户登录</title>
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <style>
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                background: #f8f8f8;
            }
            * {
                box-sizing: border-box;
                list-style: none;
            }
            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }

            .header .top {
                position: fixed;
                background: #262424;
                height: 38px;
                padding: 6px;
                width: 750px;
                line-height: 26px;
                z-index: 999;
            }

            .header  .top a{
                color: #9c9ba0;
                padding: 0 5px;
            }
            .main .bootm {
                display: inline-block;
            }
            .main .content{
                padding: 2%;
                background-color:#f8f8f8;
                margin: auto;
            }
            .main .content .padd{
                margin: 10% 0;
                padding: 0;
                border:#ccc 1px solid;
                border-radius:5px;
                background-color: #ffffff;
            }
            .main .content .padd li{
                padding: 3%;
            }
            .main .content .padd li input{
                width: 100%;
                padding: 3% 5%;
                border-radius: 5px;
                border: 1px #ccc solid;
                outline:none;  
            }
            .main .content .padd li input#input-yzm{
                width: 60%;
            }
            .main .content .padd li button{
                width: 95%;
                margin: 5% auto;
                margin-bottom: 12%;
                display: block;
                background: #0080ff;
                padding: 2% 5%;
                border: 0;
                border-radius: 5px;
                color: #fff;
                line-height: 25px;
                border: 1px solid #4a6896;
                outline:none;  
            }
            .main .content .padd li  .Telz{
                font-size: 12px;
                border-radius: 5px;
                background: #0080ff;
                display: inline-block;
                padding: 2% 5%;
                color: #fff;
                float: right;
                line-height: 25px;
                border: 1px solid #4a6896;
            }
            .main .content .padd .warning{
                color: #c31b1b;

                display: inline-block;
                font-weight: bolder;
                font-size: 13.3px;
                height: 40px;
                line-height: 40px;
            }
            .showtime{
                text-align: center;   
            }
        </style>

    </head>
    <body>
        <div class="main">
            <div class="header">
                <div class="top">
                    <a href="index.php?route=account/login"><i class="fa fa-chevron-left"></i></a>
                </div>
                <p class="bootm"></p>
            </div>
            <div class="content">
                <ul class="padd">
                    <li>
                        <span class='warning'> &nbsp;</span>
                        <input type="text" name="telephone"  placeholder='请输入手机号' id="input-telephone"  />
                    </li>
                    <li class="yzm">
                        <input type="text" name="yzm"  placeholder='请输入手机验证码' id="input-yzm"  />
                        <span  class="Telz">获取验证码</span>
                        <span class='showtime'></span>
                    </li>
                    <li>
                        <button  id="gotoreg" type="submit">继续</button>
                    </li>
                </ul>
            </div>
        </div>
    </body>
    <script src="//cdn.bootcss.com/move.js/0.5.0/move.js"></script>





    <script type="text/javascript">
        var t, timeout;
        var setTimeouts = function () {
            t++;
            var startTime = 180;
            if (t > startTime) {
                $('.Telz').show();
                $('.showtime').hide();
                clearTimeout(timeout);
                return false;
            }
            $('.showtime').text(startTime - t);
            timeout = setTimeout(setTimeouts, 1000);
        };
        $(function () {
            $('.Telz').bind('click', function () {
                //if($('#input-telephone').val()!=''){
                
                $('.showtime').next('span').empty();
                t = 0;
                $(this).text('请稍等!');
                $.ajax({
                    type: 'POST',
                    url: '<?php echo $url[0];?>',
                    data: 'telephone=' + $('#input-telephone').val(),
                    dataType: 'json',
                    success: function (info) {
                        if (info.err !== true) {

                            $('.Telz').hide();
                            $('.showtime').css('opacity', '1');
                            setTimeouts();
                        } else
                        {
                            $('.Telz').text('获取验证码');
                            $('.warning').text('* ' + info.errmsg);
                        }
                    }});
                //}

            });

            $("#input-telephone").on('click', function () {
                $('.warning').html(" &nbsp;");
            });

            $('#gotoreg').on('click', function () {
                $.ajax({
                    type: 'POST',
                    url: "index.php?route=account/mobile/smscheck",
                    data: 'yzm=' + $('#input-yzm').val(),
                    dataType: 'json',
                    success: function (info) {
                        if (!info) {
                            $('.warning').text('* 请输入正确的验证码 ！');
                        } else {
                            location.href = '<?php echo $url[1]?>';
                        }
                    }
                });
            });

        });
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

</html>