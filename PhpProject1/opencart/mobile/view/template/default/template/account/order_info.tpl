<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜订单详情</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <meta name="format-detection" content="telephone=no" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="view/stylesheet/stylesheet.css" rel="stylesheet">
        <script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
        <link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <script src="view/javascript/o-script.js"></script>
        <script src="view/javascript/jquery/jquery.flexslider.js"></script> 

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
                background: rgba(255, 255, 255, .98);
            }

            .top .link li {
                width: 100%;
                text-align: center;
                line-height: 38px;
                border-bottom: 1px solid #e6e6e6;
            }
            .top .link li a{
                font-size:14px;
                text-shadow: 1px 1px 1px #ddd;
            }
            .top .link .linkmain {
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
                margin-top:20px;
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
            /**/

            .main .goodsCart .orders {
                width: 100%;
                background: #fff;
                border: #e5e5e5 solid 1px;
                border-top: none;
                border-bottom: none;
            }
            .main .goodsCart .xs{
                margin-top: 10px;
                border:none;
                background-color: linen;
                text-align: center;
                font-size: 16px;
                line-height:40px;
                margin:0 auto;
            }
            .main .goodsCart .xs .title{
                color:#999;
                border: #e5e5e5 solid 1px;
                border-top:none;
                border-bottom:none;
            }
            .main .goodsCart .xs li:nth-child(2){
                float:left;
                display:inline-block;
                margin-left:10px;
            }
            .main .goodsCart .xs li:nth-child(3){
                float:right;
                display:inline-block;
                margin-left:10px;
                padding-right:10px;
            }
            .main .goodsCart .xs .span1 p{
                margin-top:25px;
                margin-bottom:15px;
                color: #999;
                font-size: 12px;
                line-height: 12px;
            }
            .main .goodsCart .xs .span2 p{
                margin-top:25px;
                margin-bottom:15px;
                font-size: 12px;
                line-height: 12px;
            }
            .main .goodsCart .xs .span2 p:last-child{
                color: #f36815;
            }
            .main .goodsCart .orders li {
                display: inline-block;
                width: 100%;
                padding: 0 10px;
                color: #999;
                line-height: 40px;
                font-size:12px;
            }

            .main .goodsCart .orders li.title {
                text-align: center;
                font-size: 16px;
                border: #e5e5e5 solid 1px;
                border-left:none;
                border-right:none;
                background-color: linen;
            }

            .main .goodsCart .orders li p {
                display: inline-block;
                color: #999;
                width: 50%;
                font-size: 12px;
                line-height: 38px;
            }

            .main .goodsCart .orders li p span {
                display: inline-block;
                color: #4c4c4c;
            }

            .main .goodsCart .orders li .delivery,
            .main .goodsCart .orders li .delivery * {
                color: #c09e71;
            }

            .main .goodsCart .orders li .contactadder {
                width: 100%;
            }

            .main .goodsCart .orders li .contactadder span {
                width: 100%;
            }
            .main .goodsCart .orders li .contactadder span {
                text-align:center;
            }
            .main .goodsCart .goodsinfo,
            .main .goodsCart .goodsinfo li {
                font-size: 0;
                background: #fff;
            }

            .main .goodsCart .goodsinfo {
                background: #f9f9f9;
            }

            .main .goodsCart .goodsinfo li p {
                width: 100%;
            }

            .main .goodsCart .goodsinfo li.content {
                border-bottom: #e5e5e5 solid 1px;
                font-size: 0;
            }

            .main .goodsCart .goodsinfo li.content p {
                display: block;
            }

            .main .goodsCart .goodsinfo li.content p span {
                float: right;
                padding: 0;
                margin: 0;
            }

            .main .goodsCart .goodsinfo li.charging {
                margin-top: 20px;
                border: #e5e5e5 solid 1px;
            }

            .main .goodsCart .goodsinfo li.commitcolumn {
                width: 100%;
                text-align: right;
                background: #f9f9f9;
                border: none;
                padding-top: 10px;
                padding-bottom: 5px;
            }

            .main .goodsCart .goodsinfo li.commitcolumn span {
                display: inline-block;
            }

            .main .goodsCart .goodsinfo li.commitcolumn span .singlereturn {
                padding: 5px;
                font-size: 12px;
                font-variant: normal;
                font-weight: normal;
                font-style: normal;
                color: #f36815;
                border: solid 1px #f36815;
                line-height: 24px;
                margin-right: 10px;
                border-radius:3px;
            }
            .main .goodsCart .goodsinfo li.commitcolumn span .singlereturn a{
                color: #f36815;
                font-weight:bold;
            }
            .main .goodsCart .goodsinfo li.commitcolumn span .returns {
                padding: 5px;
                font-size: 12px;
                font-variant: normal;
                font-weight: normal;
                font-style: normal;
                color: #fff;
                background: #f36815;
                border: solid 1px #f36815;
                line-height: 24px;
                border-radius:3px;
            }
            .main .goodsCart .goodsinfo li.commitcolumn span .returns a{
                color:#fff;
                font-weight:bold;
            }
            .main .goodsCart .goodsinfo li.content p span.total{
                color: #f36815;
            }
            .main .goodsCart li.content .orderstable {
                display: inline-table;
            }

            .main .goodsCart li.content .orderstable span {
                display: table-row;
                background: #f9f9f9;
            }

            .main .goodsCart li.content .orderstable span:nth-of-type(odd) {
                background: #fff;
            }

            .main .goodsCart li.content .orderstable span:nth-of-type(1) i {
                text-align: center;
            }

            .main .goodsCart li.content .orderstable span i {
                display: table-cell;
                font-style: normal;
                width: 33.3%;
                border-bottom: 1px;
            }



            /**/

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

            @media (max-width: 500px) {}

            @media (min-width: 400px) {}
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>  
        <div class="top">
            <ul class="link">
                <li><a href="index.php?route=account/wishlist">收藏列表</a></li>
                <li class="linkmain"><a href="index.php?route=account/order">全部订单</a></li>
            </ul>
        </div>

        <div class="main">
            <p class="bootm"></p>
            <?php if ($success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <?php } ?>
            <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <?php } ?>
            <ul class="goodsHomeTitle">
                <li class="icon-goodsshop"></li>
                <li class="title">八窖酒库</li>
                <li class="icon-goodslefttag"></li>
            </ul>
            <div class="goodsCart">
                <ul class="orders">
                    <li class="title"><?php echo $text_order_detail; ?></li>
                    <li class="content">
                        <p><?php echo $text_order_id; ?>:<span><?php echo $order_id; ?></span></p>
                        <p><?php echo $text_payment_method; ?>:<span><?php echo $payment_method; ?></span></p>
                        <p><?php echo $text_date_added; ?>:<span><?php echo $date_added; ?></span></p>
                        <p class="delivery"><?php echo $text_shipping_method; ?>:<span><?php echo $shipping_method; ?></span></p>
                    </li>
                </ul>    
                <ul class="orders">
                    <li class="title"><?php echo $text_payment_address; ?></li> 

                    <?php if ($shipping_address) { ?>
                    <li class="content">
                        <?php echo $payment_address;?>
                    </li>
                    <?php } ?>
                </ul>
                <ul class="orders">
                    <li class="title"><?php echo $text_shipping_address; ?></li>
                    <?php if ($shipping_address) { ?>
                    <li class="content">
                        <?php echo $shipping_address; ?>
                    </li>
                    <?php } ?>
                </ul>           
                <ul class="orders goodsinfo">
                    <?php foreach ($products as $product) { ?>
                    <li class="title">商品信息</li>
                    <li class="content">                   
                        <p><?php echo $column_name; ?><span><?php echo $product['name']; ?></span></p>
                        <p><?php echo $column_model; ?>:<span><?php echo $product['model']; ?></span></p>
                        <p><?php echo $column_quantity; ?>:<span>X<?php echo $product['quantity']; ?></span></p>
                        <p><?php echo $column_price; ?>:<span><?php echo $product['price']; ?></span></p>
                        <p><?php echo $column_total; ?>:<span><?php echo $product['total']; ?></span></p>
                        <?php foreach ($totals as $total) { ?>                         
                        <?php } ?>
                    </li>
                    <li class="content commitcolumn">
                        <span>
                            <?php if ($product['reorder']) { ?>
                            <i class="singlereturn"><a href="<?php echo $product['reorder']; ?>" >再次购买</a></i>
                            <?php } ?>
                            <i class="returns"><a href="<?php echo $product['return']; ?>" >退换商品</a></i>
                        </span>
                    </li>
                    <?php } ?>                          

                </ul>
                <ul class="xs">
                    <li class="title">支付统计</li>
                    <li>
                        <span class="span1">
                            <?php foreach ($totals as $total) { ?>
                            <p><?php echo $total['title']; ?></p>
                            <?php } ?>
                        </span>
                    </li>
                    <li>
                        <span class="span2">
                            <?php foreach ($totals as $total) { ?>
                            <p><?php echo $total['text']; ?></p>
                            <?php } ?>
                        </span>
                    </li>                 
                </ul>
                <ul class="orders">
                    <li class="title">订单状态记录</li>
                    <li class="content">
                        <p class="orderstable contactadder">
                            <span><i><?php echo $column_date_added; ?></i><i><?php echo $column_status; ?></i><i><?php echo $column_comment; ?></i></span>
                            <?php if ($histories) { ?>
                            <?php foreach ($histories as $history) { ?>
                            <span><i><?php echo $history['date_added']; ?></i><i><?php echo $history['status']; ?></i><i><?php echo $history['comment']; ?></i></span>
                            <?php } ?>
                            <?php } else { ?>
                            <span><i><?php echo $text_no_results; ?><i/></span>
                            <?php } ?>
                        </p>
                    </li>
                </ul>
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
