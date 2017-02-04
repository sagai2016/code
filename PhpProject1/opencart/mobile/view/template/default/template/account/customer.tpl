<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜用户中心</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <style type="text/css">
            ul, li, h1, h2, h3, h4, h5, h6, dt, dd, dl, ol, dl, dt, dd, p {
                margin: 0;
                padding: 0;
                list-style: none;
                border: 0;
            }
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                background: #f8f8f8;
            }
            * {
                box-sizing: border-box;
            }
            .main {
                max-width: 750px;
                width: 100%;
                height: 100%;
                display: block;
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

            .main .bootm {
                height: 50px;
                font-size: 50px;
                display: inline-block;
            }
            .bootm {
                height: 38px;
                font-size: 50px;
                display: inline-block;
            }
            /**/
            .main .header{
                width: 100%;
                padding: 2%;

                font-size: 0;
            }
            .main .header ul{
                background: #fff;
                padding: 10px 0;
                border: 1px #e5e5e5 solid;
            }
            .main .header .face{
                display: inline-block;
                width:25%;
            }
            .main .header .face img{
                width: 100%;
                border-radius: 10px;
                vertical-align: middle;
                padding: 6%;

            }
            .main .header  .userinfo{
                display: inline-block;
                vertical-align: middle;
                width:75%;
                padding: 7px 0;
            }
            .main .header  .userinfo p{
                font-size: 14px;
                width:100%;

                letter-spacing: 1.5px;
            }
            .main .header  .userinfo p span{
                display: inline-block;
                padding: 0 7px;
                color: #c9c9c9;
            }

            .main .header  .userinfo p.username{
                line-height: 18px;
            }

            .main .header  .userinfo p.usernkey{
                line-height: 30px;
            }


            .main .usertoollist{
                width:100%;
                padding:2%;
                font-size: 0;
            }
            .main .usertoollist ul{
                width:100%;
                font-szie:0;
            }

            .main .usertoollist ul li{
                padding: 10px;
                background: #fff;
                border: 1px #e5e5e5 solid;
                margin-bottom: 10px;
            }


            .main .usertoollist a{
                display: inline-block;
                line-height: 30px;
                width: 100%;
                font-size: 14px;
                color: #9b9b9b;
            }
            .main .usertoollist a span{
                float: right;
                display: block;
                vertical-align: middle;
                line-height: 30px;
                font-size: 18px;
            }
            /**/
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
                color: #f36815;eight: 30px;
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
            @media (max-width: 500px) {}

            @media (min-width: 400px) {}
        </style>
    </head>
    <body>
        <div class="main">
            <div class="top">
                <a href="index.php?"><i class="fa fa-chevron-left"></i></a>
                <!--<span class=""> 
                    <a class="gzc" href="index.php?route=account/wishlist">分享美酒</a>
                    <a type="button" title="收藏" onclick="wishlist.add('137');">收藏美酒</a>
                </span>-->
            </div>
            <p class="bootm"> </p>
            <div class="header">
                <ul>
                    <li class="face">
                        <img src="<?php echo $_SESSION['weixin_userinfo']['headimgurl'];?>">
                    </li>
                    <li class="userinfo">
                        <p class="username"><span class="fa fa-user"><?php echo $_SESSION['weixin_userinfo']['nickname'];?></span></p>
                        <p class="usernkey">
                            <span class="fa fa-id-card-o">
                                <?php if($userInfo['telephone']) { ?>
                                    echo $userInfo['telephone'])
                                <?php } else { ?>
                                    echo $userInfo['email'])
                                <?php } ?>
                            </span>
                        </p>
                    </li>
                </ul>
            </div>

            <div class="usertoollist">
                <ul>
                    <li> <a href="index.php?route=account/edit">个人资料<span class="fa fa-arrow-circle-right"></span></a></li>
                    <li> <a href="index.php?route=account/password">密码管理<span class="fa fa-arrow-circle-right"></span></a></li>
                    <li> <a href="index.php?route=account/address">我的地址<span class="fa fa-arrow-circle-right"></span></a></li>
                    <li> <a href="index.php?route=account/wishlist">美酒收藏<span class="fa fa-arrow-circle-right"></span></a></li>
                    <li> <a href="index.php?route=account/order">购物记录<span class="fa fa-arrow-circle-right"></span></a></li>
                    
                </ul>
            </div>
            <p class="bootm"> </p>
        </div>
        
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">用户中心</a> </li>
            </ul>
        </div>
    </body>
</html>
