
<!doctype html>
<html lang="zh-cn">
    <head>
        <meta charset="UTF-8">
        <title>酔藏商城</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <script src="view/javascript/jquery/jquery.flexslider.js"></script> 
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="view/stylesheet/stylesheet.css" rel="stylesheet">
        <script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
        <link href="view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
        <link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
        <script src="view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
        <script src="view/javascript/jquery/jquery.flexslider.js" type="text/javascript"></script>
        <script src="view/javascript/o-script.js" type="text/javascript"></script>
        <script src="view/javascript/common.js" type="text/javascript"></script>
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
            }
            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }
            .top *{
                color: #787878;
                font-size: 12px;
                font-weight: 300;
            }
            .top {
                width: 100%;
                display: flex;
                position: fixed;
                top:0;


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
                font-size: 12px;

            }
            .top .link .linkmain {
                border-bottom: 1px solid #ff2e00;
            }
            .top .link .linkmain a{
                color:#ff2e00;
                text-shadow: 1px 1px 1px #ddd;
            }
            .main .goodslist {
                width: 100%;
                font-size: 0;
            }
            .main .goodslist .list {
                width: 100%;
                font-size: 0;
            }
            .main .goodslist .list li {
                display: inline-block;
                width: 50%;
                padding: 1.5%;
                vertical-align: top;

            }
            .main .goodslist .list li p {
                border: 1px solid #e5e5e5;
                font-size: 14px;
                padding: 3%;
                background: #fff;
                display: inline-block;
                box-shadow:0 0 5px rgba(150,150,150,.1);
                border-radius: 3px;
            }
            .main .goodslist .list li p a img {
                width: 100%;
                border-radius: 2px;
            }
            .main .goodslist .list li span {
                display: inline-block;
                padding: 2%;
                width: 100%;
                line-height: 38px;
                height: 35px;
                text-align: center;
                overflow: hidden;
            }

            .main .goodslist .page{
                width: 100%;
                text-align:center;
            }
            .main .goodslist .pagination{
                font-size: 12px;
            }
            /*
            .main .goodslist .list li span+a {
                    float: right;
                    display: inline-block;
                        margin: 7px;
                    background: #f36815;
                    padding: 3px;
                    width: 55px;
                    text-align: center;
                    border-radius: 3px;
                    color: #fff;
            }
            */
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
                        z-index: 99;
            }


            .foot *{
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
                font-size: 12px;
                text-shadow: 1px 1px 1px #ddd;
            }
            
            
            .foot ul li a.icon-goodshome{
                 font-size: 18px;
                 text-shadow: 1px 1px 1px #ddd;
                 vertical-align: middle;
            }
            .foot ul .home {
                width: 150px;
                font-size: 20px;
            }

            @media (min-width: 500px) {
                .main .goodslist .list li {
                    width: 33.3%;
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
            </ul>
        </div>
        <div class="main">
            <p class="bootm"> </p>
            <div class="goodslist">      
                <ul class="list">           

                    <?php foreach($all as $allp):?>           
                    <li>
                        <p> 
                            <a href="index.php?route=common/product&product_id=<?php echo $allp['product_id'] ;?>"><img src="../image/<?php echo $allp['image'];?>"/></a>                    
                            <span>
                                <?php echo $allp['name']; ?>
                            </span> 
                        </p>
                    </li>                
                    <?php endforeach ?>
                </ul>          



                <div class="page">
                    <div class="pagination"><?php echo $pagination; ?></div>
                </div>

            </div>
            <p class="bootm"> </p>
        </div>

        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a>个人中心</a> </li>

            </ul>
        </div>
    </body>
</html>
