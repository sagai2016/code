
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜收藏列表</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="view/stylesheet/stylesheet.css" rel="stylesheet">
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <script src="view/javascript/o-script.js"></script>
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <script src="view/javascript/jquery/jquery.flexslider.js"></script> 
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
                background: #f8f8f8;
            }

            * {
                box-sizing: border-box;
                color: #2c2c2c;
            }

            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }

            .top * {
                color: #787878;
                font-size: 15.5px;
                font-weight: 300;
            }

            .top {
                width: 100%;
                display: flex;
                position: fixed;
                top: 0;
                z-index: 2;

            }

            .top .link {
                display: inline-flex;
                justify-content: space-between;
                width: 100%;
                background: rgba(255,255,255,.98);
            }

            .top .link li {
                width: 100%;
                text-align: center;
                line-height: 38px;
                border-bottom: 1px solid #e6e6e6;
            }
            .top .link li a{
                font-size: 14px;
                text-shadow: 1px 1px 1px #ddd;
            }
            .top .link .linkmain {
                border-bottom: 1px solid #ff2e00;
                color: #ff2e00;
            }

            .main .goodslist {
                width: 100%;
                font-size: 0;
            }

            .main .goodsCart {
                font-size: 0;
                width: 100%;
                padding: 1.5% 2.5%;
                background: #fff;
                border: 1px #e5e5e5 solid;
            }

            .main .goodsCart .goodsHomeTitle {
                font-size: 0;
                width: 100%;
                padding: 10px 0;
            }

            .main .goodsCart .goodsHomeTitle li {
                font-size: 24px;
                vertical-align: middle;
                color: #909090;
                display: inline-block;
            }

            .main .goodsCart .goodsHomeTitle li.title {
                font-size: 14px;
                padding: 0 10px;
            }

            .main .goodsCart .goodsHomeTitle li:nth-of-type(3) {
                float: right;
            }

            .main .goodsCart .goodsCartContent {
                font-size: 0;
                width: 49%;
                padding: 10px ;
                display: inline-block;
                vertical-align: text-top;
                margin: 5px 2px;
                border: 1px #e6e1e1 solid;

            }

            .main .goodsCart .goodsCartContent li {
                display: inline-block;
                vertical-align: text-top;
            }

            .main .goodsCart .goodsCartContent li.images {
                display: inline-block;
                margin-right: 5%;
                width: 35%;
            }

            .main .goodsCart .goodsCartContent li.images img {
                width: 100%;
            }

            .main .goodsCart .goodsCartContent li.content {
                display: inline-block;
                width: 60%;
                font-size: 12px;
                line-height: 20px;
            }
            .main .goodsCart .goodsCartContent li.content a.del{
                position: relative;
                width: 100%;
                float: right;
                z-index: 1;

            }
            .main .goodsCart .goodsCartContent li.content a.del i{
                margin-top: 30%;
                position:absolute;
                float: right;
                right: 10px;
                font-style: normal;
                border-radius: 3px;
                width: 30%;
                height: 20px;
                line-height: 20px;
                font-size: 12px;
                font-weight: bold;
                text-align: center;
                color: #fff;
                background: #f00;
            }


            .main .goodsCart .goodsCartContent li.content p {
                padding: 1.2% 0;


            }
            .main .goodsCart .goodsCartContent li.content p.classify{
                color: #6d6d6d;
            }

            .main .goodsCart .goodsCartContent li.content p.price{
                color: #f36815;
            }
            .main .goodsCart .goodsCartContent li.content p.stock{
                color: #9d9c9c;
            }
            .main .goodsCart .goodsCartContent li.content p.stock span{
                vertical-align: middle;
            }
            .main .goodsCart .goodsCartContent li.content p.stock span:nth-of-type(2){
                color: #9d9c9c;	
            }

            .main .goodsCart .goodsCartContent li.content p.stock .icon-goodscart{
                font-size: 24px;
                vertical-align: middle;
            }

            /* .main .goodsCart .goodsCartContent li.content .jg i, .main .goodsCart .goodsCartContent li.content .jg input {
                 font-style: normal;
                 display: inline-block;
                 width: 20px;
                 text-align: center;
                 border: 1px solid #e6e1e1;
                 font-size: 12px;
         
                                 font-size: 0;
             }
         
             .main .goodsCart .goodsCartContent li.content .jg input {
                 line-height: 18px;
                                 width: 33px;
                                 text-align: center;
                                 border:1px solid #ccc;
         
                                 font-size: 12px;
                                 vertical-align:super;
                         }
                         .main .goodsCart .goodsCartContent li.content .jg i
                         {
                                 background: #f2f2f2;
                                 font-size: 12px;
                                 line-height: 24px;
                         }*/


            .main .bootm {
                height: 50px;
                font-size: 50px;
                display: inline-block;
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
            @media (max-width: 500px) {
                .main .goodsCart .goodsCartContent {
                    width: 100%;
                    border:none;
                    padding: 10px 0;
                    border-top: 1px #e6e1e1 solid;

                }

            }

            @media (min-width: 400px) {
                .main .goodsCart .goodsCartContent {
                    padding: 1.5%;
                }
                .main .goodsCart .goodsCartContent li.content p {
                    line-height: 25px;
                }

            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="top">
            <ul class="link">
                <li class="linkmain"><a href="index.php?route=account/wishlist">收藏列表</a></li>
                <li><a href="index.php?route=account/order">全部订单</a></li>
            </ul>
            <!--<ul class="link">
                    <?php
                    foreach($categories as $categorie):
                    $cc='';
                    if(!empty($_GET['path'] ) && $_GET['path'] ==  $categorie['category_id']){
                        $cc = 'class="linkmain"';
                    }
                    ?>
                    <li <?php echo $cc;?>>
                        <a href="<?php echo  $categorie['href']?>">
                            <?php echo $categorie['name']?></a> </li>
                    <?php endforeach?>
                </ul>-->
        </div>
        <div class="main">
            <p class="bootm"></p>
            <div class="goodsCart">
                <ul class="goodsHomeTitle">
                    <li class="icon-goodsshop"></li>
                    <li class="title">八窖酒库</li>
                    <li class="icon-goodslefttag"></li>
                </ul>
                <?php foreach ($products as $product) { ?>
                <ul class="goodsCartContent">
                    <li class="images">
                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                    </li>
                    <li class="content">
                        <a href="<?php echo $product['remove']; ?>" class="del">
                            <i>取消收藏</i>
                        </a>
                        <p><?php echo $product['name']; ?></p>
                        <p class="price"><?php echo $product['price']; ?></p>
                        <p class="stock">
                            <span class="icon-goodscart"></span> <span>库存<?php echo $product['stock']; ?>件</span>
                        </p>
                    </li>
                </ul>
                <?php } ?>
            </div>
            <p class="bootm"></p>
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
