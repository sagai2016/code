<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜订单列表</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/goodsStyle.css" type="text/css">
        <script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="../webfile/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../webfile/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../webfile/css/stylesheet/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
        <link href="../webfile/css/stylesheet/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
        <script src="../webfile/js/common.js" type="text/javascript"></script>
        <script src="../webfile/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <script src="../webfile/js/moment.js" type="text/javascript"></script>
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
            dd,
            p {
                margin: 0;
                padding: 0;
                list-style: none;
                border: 0;
            }

            body,
            html {
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

            .main .top * {
                color: #787878;
                font-size: 15.5px;
                font-weight: 300;
            }

            .main .top {
                width: 100%;
                max-width: 750px;
                display: flex;
                position: fixed;
                top: 0;
                z-index: 2;
            }

            .main .top .link {
                display: inline-flex;
                justify-content: space-between;
                width: 100%;
                background: rgba(255, 255, 255, .98);
            }

            .main .top .link li {
                width: 100%;
                text-align: center;
                line-height: 38px;
                border-bottom: 1px solid #e6e6e6;
            }
            .main .top .link li a{
                font-size:14px;
                text-shadow: 1px 1px 1px #ddd;
            }
            .main .top .link .linkmain {
                border-bottom: 1px solid #ff2e00;
                color: #ff2e00;
            }

            .main .goodsCart {
                font-size: 0;
                width: 100%;
            }

            .main .goodsHomeTitle {
                font-size: 0;
                width: 100%;
                padding: 2.5%;
                border: 1px #e5e5e5 solid;
                background: #fff;
            }

            .main .goodsHomeTitle li {
                font-size: 20px;
                vertical-align: middle;
                color: #909090;
                display: inline-block;
            }

            .main .goodsHomeTitle li.title {
                font-size: 16px;
                padding: 0 10px;
            }

            .main .goodsHomeTitle li:nth-of-type(3) {
                float: right;
            }

            .main .goodsCart .goodsCartContent {
                font-size: 0;
                width: 49%;
                padding: 10px;
                display: inline-block;
                vertical-align: text-top;
                margin: 5px 2px;
                border: 1px #e6e1e1 solid;
            }
            /**/

            .main .goodsCart .allorders {
                width: 100%;
                margin-top: 10px;
                background: #fff;
                border: 1px solid #e5e5e5;
            }

            .main .goodsCart .allorders li {
                padding: 1.5% 2.5%;
            }
            .main .goodsCart .allorders .see p a{
                color:sienna;
            }
            .main .goodsCart .allorders li p {
                display: inline-block;
                width: 50%;
                font-size: 14px;
                color: #9b9b9b;
                line-height: 40px;
            }

            .main .goodsCart .allorders li:nth-of-type(1) p span {
                color: #4c4c4c;
            }

            .main .goodsCart .allorders li:nth-of-type(1) p:nth-of-type(2) span {
                color: #f36815;
            }

            .main .goodsCart .allorders li:nth-of-type(2) {
                background: #f8f8f8;
            }

            .main .goodsCart .allorders li:nth-of-type(3) p {
                width: 100%;
                border-bottom: 1px solid #e5e5e5;
            }

            .main .goodsCart .allorders li:nth-of-type(4) p {
                width: 100%;
                text-align: center;
            }
            /**/

            .main .bootm {
                height: 40px;
                font-size: 40px;
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
            
            @media (max-width: 500px) {}

            @media (min-width: 400px) {}
        </style>
    </head>

    <body>
        
        <div class="main">
        <div class="top">
            <ul class="link">
                <li><a href="index.php?route=account/wishlist">收藏列表</a></li>
                <li class="linkmain"><a href="index.php?route=account/order">全部订单</a></li>
            </ul>
        </div>
            <p class="bootm"></p>
            <ul class="goodsHomeTitle">
                <li class="icon-goodsshop"></li>
                <li class="title">八窖酒库</li>
                <li class="icon-goodslefttag"></li>
            </ul>
            <div class="goodsCart">
                <?php if ($orders) { ?>
                <?php foreach ($orders as $order) { ?>
                <ul class="allorders">
                    <li>
                        <p>订单号：<span><?php echo $order['order_id']; ?></span></p>
                        <p>状态：<span><?php echo $order['status']; ?></span></p>
                    </li>
                    <li>
                        <p>小计：<span><?php echo $order['total']; ?></span></p>
                        <p>总件数：<span><?php echo $order['products']; ?></span></p>
                    </li>
                    <li>
                        <p>添加日期：<span><?php echo $order['date_added']; ?></span></p>
                    </li>
                    <li class="see">
                        <p><a href="<?php echo $order['view']; ?>">查看订单详情</a></p>
                    </li>
                </ul>
                <?php }?>
                <?php } else { ?>
                <p><?php echo $text_empty; ?></p>
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
<?php if(!empty($_SESSION['signPackage'])):?>
         <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="../webfile/js/weixinopnjssdk.js"></script>
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
</html>
