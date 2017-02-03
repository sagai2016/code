<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜用户登录</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <style>
            .foot div a{
                text-decoration: none;
            }
            .content{
                max-width: 700px;
                width:100%;
                margin:auto;
                background:#FFFFFF;
                text-align: center;
            }
            .home{
                margin-left: 15%;
                text-align: center;
                border: none;
                font-size: 15px;
                padding: 7px;
                background-color: #0080FF;
                width: 70%;
                border-radius: 5px;
                margin-top: 30px;
            }
            .content .home a{
                color: white;
            }
            .login{
                text-align: center;
            }
            .image{
                margin-bottom: 30px;
                margin-top: 30px;
            }
            .image img{
                margin: auto;
                height: 100px;
                width: 100px;
                border-radius: 50%;
            }
            .name,.pwd{
                display: inline-block;
                width: 100%;
                margin-bottom: 20px;
                height: 25px;
                line-height: 25px;
                text-align: center;
            }
            .foot{
                width: 100%;
                margin-bottom: 20px;
                height: 25px;
                line-height: 25px;
                text-align: center;
                margin-top: 100px;
                text-align: center;
            }
            .name input,.pwd input{
                outline: none;
                padding:15px;
                border:#ccc 1px solid;
                width: 70%;
                border-radius: 3px;
                height: 25px;
                line-height: 25px;
            }
            .sub input{
                border: none;
                font-size: 16px;
                padding:7px;
                background-color: #0080FF;
                width: 70%;
                border-radius: 5px;
                margin-top: 30px;
                color:white;
            }
            label{  
                display:inline-block; 
            }  
            input:-webkit-autofill { 
                -webkit-box-shadow: 0 0 0px 1000px white inset; 
            } 
            a{
                text-decoration: none;
            }
            a:link { 
                text-decoration: none; 
            } 
            a:visited { 
                text-decoration: none; 
            } 

        </style>
    </head>
    <body>
        <div class='content'>
            <?php if ($success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
            <?php } ?>
            <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
            <?php } ?>
            <?php if ($error_weibo_login_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_weibo_login_warning; ?></div>
            <?php } ?>
            <?php if ($error_weixin_login_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_weixin_login_warning; ?></div>
            <?php } ?>
            <?php if ($error_qq_login_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_qq_login_warning; ?></div>
            <?php } ?>
            <div class="login">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class='image'>
                        <img src="image/catalog/demo/manufacturer/1b33aabbca61e72c51a131587d6f33bc.jpg">
                    </div>
                    <div class='name'>
                        <input onfocus="change(this)" type="text" name="email" value="<?php echo $email; ?>" placeholder='请输入手机号或邮箱' id="input-email"  />
                    </div>
                    <div class='pwd'>
                        <input onfocus="change(this)" type="password" name="password" value="<?php echo $password; ?>" placeholder='请输入密码' id="input-password" />
                    </div>
                    <div class='sub'>
                        <input type="submit" value="<?php echo $button_login; ?>"/>
                    </div>
                </form>
            </div>
            <div class='foot'>
                <div>
                    <a href="index.php?">返回首页</a>
                    <span>|</span>
                    <a href="<?php echo $register; ?>">用户注册</a>
                    <span>|</span>
                    <a href="<?php echo $forgotten; ?>">忘记密码</a>

                </div>
            </div>
        </div>
        <script>
            function change(a) {
                $(a).css("border-color", "#0080ff").blur(function () {
                    $(a).css("border-color", "");
                })
            }
        </script>


        <?php if(!empty($_SESSION['signPackage'])):?>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="view/javascript/weixinopnjssdk.js"></script>
        <script type="text/javascript">
        $(function(){
                weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
                weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
                weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
                weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
                
                weixinopnjssdk.ready(function(){
                wx.hideOptionMenu();
                });
            });
        </script>
        <?php endif;?>
    </body>
</html>

