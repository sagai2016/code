<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <link href="view/stylesheet/stylesheet.css" rel="stylesheet">
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
            body,
            html {
                margin: 0;
                padding: 0;
                background: #f8f8f8;
            }
            .top a
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
            .main {
                max-width: 750px;
                width: 100%;
                height: 100%;
                display: block;
                margin: auto;
            }
            .main .bootm{
                height:50px;
                font-size:27px;
            }
            /**/
            .main  .addreslist{
                width: 100%;
                padding: 2%;
            }
            .main  .addreslist dt{
                padding: 2%;
                text-align: center;
                font-size: 14px;
                color: #e2b151;
                line-height: 30px;
                border-radius: 5px;
                border: 1px solid;
                margin-bottom: 10px;
            }

            .main  .addreslist dt i{
                padding: 0 15px;
            }
            .main  .addreslist dd{
                width:100%;
            }
            .main  .addreslist dd ul .address{
                width: 100%;
                padding: 15px;
                background: #fff;
                border: 1px #e5e5e5 solid;
                margin-bottom: 10px;
                border-radius: 3px;

            }
            .main  .addreslist dd ul .address p{
                line-height: 30px;
                font-weight: bolder;
            }
            .main  .addreslist dd ul .address p span{
                display: inline-block;
                padding-left: 3%;
                font-weight: normal;
            }

            .main  .addreslist dd ul .address p.button{
                padding: 5px 0;
                text-align: right;
            }
            /* .main  .addreslist dd ul li{
                 display:inline-block;
                 width:48%;
                 vertical-align:middle;
                 padding:2%;
                 height:16px;
             }
             .main  .addreslist dd ul .address{
                 
             }
             .main  .addreslist dd ul .change{
                 text-align:right;
             }*/



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
            @media (max-width: 500px) {}

            @media (min-width: 400px) {}
        </style>
    </head>
    <body>
        <div class="main">
            <div class="top">
                <a href="index.php?route=account/customer"><i class="fa fa-chevron-left"></i></a>
                <!--<span class=""> 
                    <a class="gzc" href="index.php?route=account/wishlist">分享美酒</a>
                    <a type="button" title="收藏" onclick="wishlist.add('137');">收藏美酒</a>
                </span>-->
            </div>
            <p class="bootm"> </p>
            <dl class="addreslist">
                <dt>
                    <span><i class="fa fa-exclamation-circle"></i>请注意,默认地址不能删除</span>
                </dt>
                <dd><?php if ($addresses) : ?>
                    <ul>  
                        <?php foreach ($addresses as $result) :?>
                        <li class="address">
                            <p>姓名：<span><?php echo $result['address']['fullname']; ?></span></p>
                            <p>地址：<span><?php echo $result['address']['zone']; ?></span></p>
                            <p>电话：<span><?php echo $result['address']['shipping_telephone']; ?></span></p>
                            <p class="button">
                                <a href="<?php echo $result['update']; ?>" class="btn btn-info"><?php echo $button_edit; ?></a> 
                                <a href="<?php echo $result['delete']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a>
                            </p>
                        </li>
                        <?php endforeach;?>
                    </ul>
                    <?php else:?>
                    <?php echo $text_empty; ?>
                    <?php endif;?>
                </dd>                
            </dl>
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
