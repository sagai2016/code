<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>酔藏商城</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
        <script src="view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <style>
            ul,
            li,
            h1,
            h2,
            h3,
            h4,
            h5,
            h6,
            dt,
            dd,
            dl,
            ol,
            dl,
            dt,
            dd {
                margin: 0;
                padding: 0;
                list-style: none;
                border: 0;
            }

            * {
                color: #676767;
                font-size: 14px;
                box-sizing: border-box;
            }

            body,
            html {
                margin: 0;
                padding: 0;
                background: #f8f8f8;
                margin: auto;
            }
            .container{
                max-width: 750px;
                margin: auto;
            }
            .top, .content, .option {
                color: #2c2c2c;
                background: #fff;
            }
            .top, .content, .top a
            {
                color: #9b9b9b;
            }
            .top {
                position: fixed;
                background: #262424;
                height: 38px;
                padding: 6px;
                width: 100%;
                max-width: 750px;
                line-height: 27px;
                position: fixed;
                z-index: 999;
            }
            .top img {
                display: inline-block;
                height: 100%;
            }
            .top span {
                display: inline-block;
                float: right;
                color: #9c9ba0;
                font-size: 13px;

            }
            .top span a{
                display: inline-block;
                line-height: 14px;
                color: #9c9ba0;
            }
            .top span .gzc {
                color: #9c9ba0;
                border-right: 1px solid #fff;
                padding: 0 5px;
            }
            .bootm{
                height: 50px;
                font-size: 50px;
                line-height: 50px;
            }
            .main{
                margin: auto;
                margin: auto;
                padding: 2%;
               
            }
            .main form{
                border: solid 1px #e5e5e5;
                border-radius: 3px;
                background-color: #ffffff;
                padding-top: 0;
                 min-height: 333px;
            }
            .main form .header{
                text-align: center;
                width: 100%;
                height: 26px;
                line-height: 26px;
                font-size: 20px;
                margin-top: 13px;
                margin-bottom: 0px;
            }
            .password,.confirm{
                display: inline-block;
                width: 100%;
                text-align: center;
                padding: 2%;
                padding-left: 0;
                border-radius: 3px;
                padding-top: 3%;
                padding-bottom: 3%;
            }
            .password div,.confirm div{
                width: 70%;
                display: inline-block;
            }
            .password label,.confirm label{
                font-size: 12px;
                padding: 0;
                display: inline-block;
                width: 25%;
                letter-spacing: 1px;
                text-align: right;
            }
            .password label i,.confirm label i{
                color: red;
                padding: 7px;
                padding-left: 0;
                margin: auto;
                font-size: 12px;
            }
            .password input,.confirm input{
                padding: 8px;
                border: #e5e5e5 1px solid;
                width: 100%; 
                border-radius: 3px;
                font-size: 14px;
                letter-spacing: 1px;
            }
            .back,.sub{
                width: 48%;
                color: #ffffff;
                display: inline-block;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
            }
            .back a{
                width: 70%;
                color: #ffffff;
                background-color: #0080ff;
                margin-top: 20px;
                box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                display: inline-block;
                padding: 8px 12px;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
                border: 1px solid transparent;
                border-radius: 4px;
            }
            .sub input{
                width: 70%;
                color: #ffffff;
                background-color: #0080FF;
                margin-top: 20px;
                box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                display: inline-block;
                padding: 8px 12px;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
                border: 1px solid transparent;
                border-radius: 4px;
            }
            .main form .two{
                margin-bottom: 20px;
            }
            .foot {
                width: 100%;
                display: flex;
                position: fixed;
                bottom: 0;
            }

            .foot * {
                color: #787878;
            }

            .foot ul {
                background: #fff;
                margin: auto;
                width: 100%;
                display: flex;
                justify-content: space-between;
                width: 100%;
                border: 1px solid #ccc;
            }

            .foot ul li {
                width: 100%;
                text-align: center;
                line-height: 38px;
                border-width: 0 1px 0 0;
                border-style: solid;
                border-color: #ccc;
            }
            .foot ul li a{
                letter-spacing:1.5px;
                font-size: 14px;
                text-decoration: none;
                text-shadow: 1px 1px 1px #ddd;
            }
            .foot ul .home .icon-goodshome{
                vertical-align: middle;
                font-size: 18px;
                text-shadow: 1px 1px 1px #ddd;
            }
            .foot ul li.home {
                width: 150px;
                font-size: 20px;
            }

            .foot ul li.total {
                width: 200%;
                text-align: right;
            }

            .foot ul li.total span {
                display: inline-block;
                padding: 0 10px;
                color: #f36815;
            }

            .foot ul li.settlement {
                background: #ff4444;
                color: #fff;
            }

            .foot ul li.settlement span {
                color: #fff;
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="top">
                <a href="index.php?route=account/customer"><i class="fa fa-chevron-left"></i></a>
                <!--<span class=""> 
                    <a class="gzc" href="index.php?route=account/wishlist">分享美酒</a>
                    <a type="button" title="收藏" onclick="wishlist.add('137');">收藏美酒</a>
                </span>-->
            </div>
            <div class="bootm"></div>
            <div class='main'>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" >
                    <p class="header">密码修改</p>
                    <div class="password">
                        <label><?php echo $entry_password; ?> <i>*</i></label>
                        <div>
                            <input onfocus="change(this)"  type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password"/>
                            <?php if ($error_password) { ?>
                            <div class="text-danger"><?php echo $error_password; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class='confirm'>
                        <label><?php echo $entry_confirm; ?> <i>*</i></label>
                        <div>
                            <input onfocus="change(this)"  type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" />
                            <?php if ($error_confirm) { ?>
                            <div class="text-danger"><?php echo $error_confirm; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="two">
                        <div class="back"><a href="<?php echo $back; ?>" ><?php echo $button_back; ?></a></div>
                        <div class="sub">
                            <input type="submit" value="<?php echo $button_continue; ?>"  />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">用户中心</a> </li>
            </ul>
        </div>
        <script>
            function change(a) {
                $(a).css({'border-color':''}).blur(function () {
                    $(a).css("border-color", "");
                })
            }
        </script>
    </body>
</html>

