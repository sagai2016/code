<!doctype html>

<html lang="zh-cn">
    <head>
        <meta charset="UTF-8">
        <title>八窑酒库</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" type="text/css">
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
        <link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
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
                font-size: 12px; 
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
                margin-bottom:10px;

            }

            .main .goodsCart .goodsHomeTitle li {
                font-size: 20px;
                vertical-align: middle;
                color: #909090;
                display: inline-block;
            }

            .main .goodsCart .goodsHomeTitle li.title {
                font-size: 16px;
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

            .main .goodsCart .goodsCartContent li.content p {
                padding: 1.2% 0;


            }
            .main .goodsCart .goodsCartContent li.content p.classify{
                color: #6d6d6d;
            }

            .main .goodsCart .goodsCartContent li.content p.price{
                color: #f36815;
            }


            .main .goodsCart .goodsCartContent li.content .jg {
                font-size: 0;
                display: block;
                float: left;
            }
            .main .goodsCart .goodsCartContent li.content .jg i{
                font-size: 15px;
            }
            .main .goodsCart .goodsCartContent li.content .del {
                border: 1px solid #f36815;
                border-radius: 3px;
                padding: 0 10px;
                display: block;
                height: 20px;
                line-height: 20px;
                font-size: 12px;
                font-weight: bold;
                float: right;
                color:#fff;
                background: #f00;
            }



            .main .goodsCart .goodsCartContent li.content .jg i, .main .goodsCart .goodsCartContent li.content .jg input {
                font-style: normal;
                display: inline-block;
                width: 20px;
                text-align: center;
                border: 1px solid #e6e1e1;
                font-size: 12px;

                font-size: 0;
            }

            .main .goodsCart .goodsCartContent li.content .jg input {
                line-height: 20px;
                width: 33px;
                text-align: center;
                border:1px solid #ccc;
                FILTER: alpha(opacity=0); /*androd*/  
                appearance:none;  /*下拉框去掉右侧图标*/  
                font-size: 12px;
                vertical-align:super;
            }
            .main .goodsCart .goodsCartContent li.content .jg i
            {
                background: #f2f2f2;
                font-size: 12px;
                line-height: 24px;
            }


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
            .foot ul a {
                width: 100%;
                text-align: center;
                line-height: 38px;
                border-width: 0 1px 0 0;
                border-style: solid;
                border-color: #ccc;
                text-shadow: 0.3px 0.3px 0.3px #ddd;
            }
            .foot ul a.home {
                width: 150px;
                font-size: 18px;
                text-shadow: 1px 1px 1px #ddd;
                vertical-align: middle;
            }

            .foot ul li.total{
                width: 200%;
                text-align: right;

            }
            .foot ul li.total span{
                display: inline-block;
                padding:0 10px;
                color: #f36815;
                font-size: 14px;
                text-shadow: 0.3px 0.3px 0.3px #ddd;
            }
            .foot ul a.settlement{
                background: #ff4444;
                color: #ffffff;
                text-decoration:none;
                font-size: 14px;
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
                .main .goodsCart .goodsCartContent li.content .del{
                    margin: auto;
                }
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>


    <!--<?php foreach ($products as $product) { ?>
    <tr>
      <td class="text-center"><?php if ($product['thumb']) { ?>
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
        <?php } ?></td>
      <td class="text-right"><?php echo $product['price']; ?></td>
      <td class="text-right"><?php echo $product['total']; ?></td>
    </tr>
    <?php } ?>
    <?php foreach ($vouchers as $voucher) { ?>
    <tr>
      <td class="text-right"><?php echo $voucher['amount']; ?></td>
      <td class="text-right"><?php echo $voucher['amount']; ?></td>
    </tr>
    <?php } ?>-->


    <body>
        <div class="main">
            <div class="goodsCart">
                <ul class="goodsHomeTitle">
                    <li class="icon-goodsshop"></li>
                    <li class="title">八窑酒库</li>
                    <li class="icon-goodslefttag"></li>
                </ul>                                                          
                <form action="<?php echo $action; ?>" method="post" id="form1" enctype="multipart/form-data">
                    <?php foreach ($products as $product) { ?>
                    <ul class="goodsCartContent">
                        <li class="images">
                            <a href="<?php echo $product['href']; ?>">
                                <img src="<?php echo $product['thumb']; ?>"  />
                            </a>
                        </li>
                        <li class="content"> 
                            <p><?php echo $product['name']; ?></p>
                            <p class="price"><?php echo $product['price']; ?></p>
                            <p class="button">
                                <span class="jg"> 
                                    <i id="reduce">- </i>
                                    <input readonly="readonly" type="text" name="quantity[<?php echo $product['cart_id']; ?>]" id="cartcount" value="<?php echo $product['quantity']; ?>"/>                   
                                    <i id="add">+ </i> 
                                </span>                            
                                <button type="button" title="<?php echo $button_remove; ?>" class="del" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">删除</button>
                            </p>    
                        </li>
                    </ul>    
                    <?php } ?>
                </form> 
            </div>
            <p class="bootm"></p>
        </div>
        <div class="foot">
            <ul>
                <a class="home  icon-goodshome" href="index.php?route=common/home"></a>
                <li class="total">
                    <span>合计：<?php if(count($totals)>4): ?> 
                        <?php echo '￥'.( trim($totals[4]['text'],'￥') -  (trim($totals[1]['text'],'￥') + trim($totals[3]['text'],'￥') + trim($totals[2]['text'],'￥'))); ?>
                        <?php else:?>
                        <?php echo $totals[1]['text']; ?>
                        <?php endif; ?>
                    </span>                 
                </li>
                <a class="settlement" href="index.php?route=checkout/checkout">
                    结 算
                </a>
            </ul>
        </div>
        <script type="text/javascript">

            $('.goodsCartContent').on('click', '#add', function () {
                var t = $(this).parent().find("#cartcount").val();
                $(this).parent().find("#cartcount").val(parseInt(t) + 1);
                $("form").submit();

            });


            $('.goodsCartContent').on('click', '#reduce', function () {
                var t = $(this).parent().find("#cartcount").val();

                var count = parseInt(t) - 1;

                if (count > 0) {
                    $(this).parent().find("#cartcount").val(count);
                    $("form").submit();
                }
            });
        </script>

    </body>
</html>