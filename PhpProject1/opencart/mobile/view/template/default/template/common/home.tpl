<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>酔藏商城</title>
        <script src="view/javascript/jquery/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/swiper.min.css" />
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <style type="text/css">
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
            }

            .main * {
                box-sizing: border-box;
            }

            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }
            .main .header{
                font-size:0;
                text-align: center;
            }
            .main .header a{
                font-size:0;

            }
            .main .header  img{
                max-height: 355px;     
                width: 97.6%;
                margin: auto;
                font-size:0;
            }

            .main .banner {
                width: 100%;
                padding: 0 10px;
                /*height: 217px;*/
                height: inherit;
                /*165px*/
                overflow: hidden;
            }

            .main .banner div,
            .main .banner ul,
            .main .banner li {
                height: inherit;
            }

            .main .banner li img {
                width: 100%;
            }

            .main .ad2 {
                margin: 2% 0;
                height: inherit;
                background-size: 100% auto;
                padding: 0 10px;

            }
            .main .ad2 p{
                text-align: center;
                color: #aa7d46;
                font-size: 16px;
            }
            .main .ad2 a img {
                width: 100%;
            }

            .main .adList {
                width: 100%;
                background: #eee;
            }

            .main .adList img {
                width: 100%;
            }

            .main .adList dt {
                height: inherit;
                background: #fff;
                text-align: center;
            }

            .main .adList dd {
                width: 100%;
                overflow: hidden;
            }

            .main .adList dd ul {
                width: 100%;
                font-size: 0;
                font-size: 0;
            }

            .main .adList dd ul li {
                display: inline-block;
                width: 50%;
                font-size: 0;
                background: #fff;
                border: 1px solid #eee;
                vertical-align: top;
                border-radius: 5px;
                margin: 5px 2px;
            }

            .main .adList dd ul li img {
                border-radius: 5px;
                box-shadow: 0 0 2px #666;
            }

            .main .adList .product {
                margin: 5px;
                margin-bottom: 40px;
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
        <div class="main">
            <div class="header">
                <img src="image/catalog/demo/manufacturer/logo.png"/>
            </div>
            <div class="banner">
                <div class="swiper-container">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide"><img src="image/catalog/demo/manufacturer/t2-2.png"></li>
                        <li class="swiper-slide"><img src="image/catalog/demo/manufacturer/t2.png"></li>
                    </ul>
                    <span class="swiper-pagination"></span>
                </div>
            </div>
            <div class="ad2">
                <a href="index.php?route=common/eight"><img src="image/catalog/demo/manufacturer/t3.png"></a>
            </div>
            <div class="adList">
                <dl>
                    <dt>
                        <img src="image/catalog/demo/manufacturer/t4.png">
                    </dt>
                    <dd class="swiper-container2">
                        <!--<ul class="swiper-wrapper">
                            <?php 
                            foreach($product as $v):
                            ?>
                                <li class="swiper-slide">
                                    <a  href="index.php?route=common/product&product_id=<?php echo $v['product_id'] ;?>">
                                        <img src="../image/<?php echo $v['image']?>">
                                    </a>
                                </li>
                            <?php endforeach?>
        
                        </ul>-->
                    </dd>
                </dl>
                <?php 
                foreach($datu as $v):
                ?>
                <div class="product">
                    <a  href="index.php?route=common/product&product_id=<?php echo $v['product_id'] ;?>">
                        <img src="../image/<?php echo $v['image']?>">
                    </a>
                </div>
                <?php endforeach?>

            </div>
        </div>
        <!--<div class="foot">
            <ul>
                <li class="home"><a class="icon-goodshome" href="index.php"></a></li>
    
                <?php foreach($categories as $categorie):?>
    
                <li> <a href="<?php echo  $categorie['href']?>"><?php echo $categorie['name']?></a> </li>
                <?php endforeach?>
            </ul>
        </div>-->
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">个人中心</a> </li>
            </ul>
        </div>
        <script type="text/javascript" src="view/javascript/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="view/javascript/jquery/Swiper/swiper.jquery.min.js"></script>
        <script>
            var swiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                loop: true,
                grabCursor: true,
                paginationClickable: true,
                autoplay: 3000,
                autoplayDisableOnInteraction: false
            });
            var swiper = new Swiper('.swiper-container2', {
                slidesPerView: 2.3,
                slidesPerGroup: 1
            });
        </script>
    </body>

</html>
