
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="view/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/flexslider.css" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <style type="text/css">
            ul, li, h1, h2, h3, h4, h5, h6, dt, dd, dl, ol, dl, dt, dd {
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
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                width: 100%;
            }
            .main {
                max-width: 750px;
                width: 100%;
                height: 100%;
                display: block;
                margin: auto;
            }
            .main .header {
                width: 100%;
                background: url(image/catalog/demo/manufacturer/t1.jpg) no-repeat;
                background-size: 100% auto;
                height: 11%;
                max-height: 150px;
                margin-bottom: 10px;
            }
            .main .ad1 {
                width: 100%;
                background: url(image/catalog/demo/manufacturer/t2.png) no-repeat;
                background-size: 100% auto;
                height: 30%;
                overflow: hidden;
            }
            .main .ad2 {
                margin: 2% 0;
                height: 15%;
                background: url(image/catalog/demo/manufacturer/t3.png) no-repeat;
                background-size: 100% auto;
            }
            .main .adList {
                height: 45%;
            }
            .main .adList ul {
                height: 100%;
            }
            .main .adList .title {
                height: 13%;
                background: url(image/catalog/demo/manufacturer/t4.png) no-repeat;
                background-size: 100% auto;
            }
            .main .adList .goodsList {
                width: 100%;
                font-size: 0;
                margin: 15px 0 0 0;
                
            }
            .main .adList .goodsList span {
                display: inline-block;
                width: 100%;
                font-size: 0;
            }
            .main .adList .goodsList span a {
                display: inline-block;
                width: 50%;
                padding: 2%;
                box-sizing: border-box;
            }
            .main .adList .goodsList span a img {
                width: 100%;
            }
            .main2 {
                font-size: 0;
                height: 100%;
            }
            .main2 a {
                font-size: 0;
                height: 100%;
            }
            .main2 a img {
                font-size: 0;
                width: 100%;
                display: block;
            }

            .flex-direction-nav  a{
                color: rgba(200,200,200,.5);
            }

            @media (min-width: 500px) {
                .main, .main2 {
                    height: 960px;
                }
                .main .header {
                    height: 115px;
                }
                .main .ad1 {
                    height: 314px;
                }


                .main .ad2 {
                    height: 150px;
                }
                .main .adList {
                    height: 300px;
                }
                .main .adList .title {
                    height: 60px;
                }
            }

            @media (min-width: 700px) {
                .main, .main2 {
                    height: 1250px;
                }
                .main .header {
                    height: 149px;
                }
                .main .adList .title {
                    height: 80px;
                }
                .main .ad1 {
                    height: 414px;
                }
                .main .ad2 {
                    height: 200px;
                }
            }
            .foot {
                width: 100%;
                display: flex;
                position: fixed;
                bottom: 0;
            }
            .foot ul {
                background: #fff;
                margin: auto;
                max-width: 750px;
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
            a{
                text-decoration: none;
            }
            .foot ul .home {
                width: 150px;
                font-size: 20px;

            }
             .foot ul li a.icon-goodshome{
                  font-size: 20px;
             }
            .foot ul li a{
                width: 100%;
                height: 100%;
                display: inline-block;
                font-size: 12px;
            }
            a{
        text-decoration: none;
    }
        </style>
        <script src="view/javascript/jquery/jquery.min.js"></script>
        <title>Document</title>
    </head>
    
    <body>
        <div class="main">
            <div class="header"> <a href="index.html"></a> </div>
            <div class="ad1">
                <section id="section"> 
                    <!-- 图片播放功能 -->
                    <div class="bannerPane">
                        <section class="slider">
                            <div class="flexslider">
                                <ul class="slides">
                                    <li><a href="javascript:;"><img src="image/catalog/demo/manufacturer/t2.png" alt="懒人之家" /></a></li>
                                    <li><a href="javascript:;"><img src="image/catalog/demo/manufacturer/t2-2.png" alt="懒人之家" /></a></li>
                                    <li><a href="javascript:;"><img src="image/catalog/demo/manufacturer/t2.png" alt="懒人之家" /></a></li>
                                    <li><a href="javascript:;"><img src="image/catalog/demo/manufacturer/t2-2.png" alt="懒人之家" /></a></li>
                                </ul>
                            </div>
                        </section>
                    </div>
                </section>
            </div>
            <div class="ad2"> </div>
            <div class="adList">
                <ul>
                    <li class="title"></li>
                    <li class="goodsList"> 

                        <span>
                            <?php 
                            foreach($product as $v):
                            ?>
                            <a  href="index.php?route=common/product&product_id=<?php echo $v['product_id'] ;?>">
                                <img src="../image/<?php echo $v['image']?>">
                            </a>
                            <?php endforeach?>
                        </span> 
                    </li>
                </ul>
            </div>
        </div>
        <div class="main2">
            <?php 
                foreach($datu as $v):
                ?>
                <a  href="index.php?route=common/product&product_id=<?php echo $v['product_id'] ;?>">
                    <img src="../image/<?php echo $v['image']?>">
                </a>
            <?php endforeach?>
        </div>
        <div class="foot">
            

            
            
            <ul>
                <li class="home"><a class="icon-goodshome" href="index.php"></a></li>
                <?php foreach($categories as $categorie):?>
                <li> <a href="<?php echo  $categorie['href']?>"><?php echo $categorie['name']?></a> </li>
               <?php endforeach?>
            </ul>
        </div>
        <script src="view/javascript/jquery/jquery.flexslider.js"></script> 
        <script src="view/javascript/o-script.js"></script>
    </body>
</html>