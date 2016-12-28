<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>酔藏商城</title>
    <script src="view/javascript/jquery/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
    <link rel="stylesheet" type="text/css" href="view/stylesheet/swiper.min.css" />
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
        font-family: "微软雅黑";
    }
    
    body,
    html {
        margin: 0;
        padding: 0;
        height: 100%;
        width: 100%;
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
    
    .main .header {
        width: 100%;
        background: url(image/catalog/demo/manufacturer/t1.jpg) no-repeat center;
        background-size: auto 100%;
        height: 70px;
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
    
    .main .ad2 img {
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
    }
    
    .foot {
        width: 100%;
        display: flex;
        position: fixed;
        bottom: 0;
        z-index: 999;
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
        font-size: 12px;
    }
    .foot ul li a{
        letter-spacing:1.5px;
        font-size: 12px;
        text-shadow: 1px 1px 1px #ddd;
    }
    .foot ul .home {
        letter-spacing:1.5px;
        width: 150px;
        text-shadow: 1px 1px 1px #ddd;
    }
    .foot ul .home .icon-goodshome{
        vertical-align: middle;
        font-size: 18px;
        text-shadow: 1px 1px 1px #ddd;
    }
    .foot ul li a{
        letter-spacing:1.5px;
        font-size: 12px;
        text-decoration: none;
        text-shadow: 1px 1px 1px #ddd;
    }
        
    </style>
</head>

<body>
    <div class="main">
        <div class="header">
            <a href="index.html"></a>
        </div>
        <div class="banner">
            <div class="swiper-container">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="image/catalog/demo/manufacturer/t2-2.png"></li>
                    <li class="swiper-slide"><img src="image/catalog/demo/manufacturer/t2.png"></li>
                    <li class="swiper-slide"><img src="image/catalog/demo/manufacturer/t2-2.png"></li>
                    <li class="swiper-slide"><img src="image/catalog/demo/manufacturer/t2.png"></li>
                </ul>
                <span class="swiper-pagination"></span>
            </div>
        </div>
        <div class="ad2">
            <img src="image/catalog/demo/manufacturer/t3.png">
        </div>
        <div class="adList">
            <dl>
                <dt>
                    <img src="image/catalog/demo/manufacturer/t4.png">
                </dt>
                <dd class="swiper-container2">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <img src="image/catalog/demo/manufacturer/g3.jpg">
                        </li>
                        <li class="swiper-slide">
                            <img src="image/catalog/demo/manufacturer/g3.jpg">
                        </li>
                        <li class="swiper-slide">
                            <img src="image/catalog/demo/manufacturer/g3.jpg">
                        </li>
                        <li class="swiper-slide">
                            <img src="image/catalog/demo/manufacturer/g3.jpg">
                        </li>
                    </ul>
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
    <div class="foot">
        <ul>
            <li class="home"><a class="icon-goodshome" href="index.php"></a></li>

            <?php foreach($categories as $categorie):?>

            <li> <a href="<?php echo  $categorie['href']?>"><?php echo $categorie['name']?></a> </li>
            <?php endforeach?>
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
