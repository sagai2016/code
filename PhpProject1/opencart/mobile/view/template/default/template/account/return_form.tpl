<html lang="zh-cn">
    <header>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>酔藏商城</title>
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
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
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <script src="view/javascript/o-script.js"></script>
        <script src="view/javascript/jquery/jquery.flexslider.js"></script>
    </header>
    <style>
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
        h1{
            margin-bottom:40px;
            text-align:center;
            margin-top:10px;
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
            background: rgba(255, 255, 255, .98);
        }

        .top .link li {
            width: 100%;
            text-align: center;
            line-height: 38px;
            border-bottom: 1px solid #e6e6e6;
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
            /* background: #fff; */
            /* border: 1px #e5e5e5 solid; */
            margin-top: 10px;
        }

        .main .goodsHomeTitle {
            font-size: 0;
            width: 900px;
            padding: 2.5%;
            border: 1px #e5e5e5 solid;
            background: #fff;
            background-color:#fff;
            position: fixed;
            z-index:999;
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

        .main .goodsCart ul,
        .main .goodsCart ul li,
        .main .goodsCart ul li hgroup {
            width: 100%;
            background: #f8f8f8;
        }

        .main .goodsCart ul li hgroup {
            margin: 10px 0;
            background: #fff;
        }

        .main .goodsCart ul li hgroup h2 {
            border: 1px solid #ccc;
            width: 100%;
            line-height: 38px;
            font-size: 14px;
            display: inline-block;
            padding: 0 10px;
        }

        .main .goodsCart ul li hgroup .content {
            width: 100%;
            font-size: 12px;
            border-color: #ccc;
            border-width: 0 1px 1px 1px;
            border-style: solid;
            padding: 10px;
            display: none;
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
            font-size: 14px;
            text-decoration: none;
            text-shadow: 1px 1px 1px #ddd;
        }
        a{
            text-decoration: none;
        }
        .content{
            text-align:center;
        }
        .pull-left{
            width:100%;
            text-align:center;
        }
        .pull-left input{
            width:30%;
        }
        #form_return{
            border: #ccc solid 1px;
            padding: 20px 10px;
        }
        @media (max-width: 500px) {}

        @media (min-width: 400px) {}

    </style>
    <body>
        <div class="main">
            <ul class="goodsHomeTitle">
                <li class="icon-goodsshop"></li>
                <li class="title">醉藏</li>
                <li class="icon-goodslefttag"></li>
            </ul>

            <p class="bootm"></p>
            <div class="container">
                <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                <?php } ?>
                <div class="row">
                    <div id="content" class="col-sm-12"><?php echo $content_top; ?>
                        <h1><?php echo $heading_title; ?></h1>
                        <form id="form_return" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <fieldset>
                                <legend><?php echo $text_order; ?></legend>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-fullname"><?php echo $entry_fullname; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="fullname" value="<?php echo $fullname; ?>" placeholder="<?php echo $entry_fullname; ?>" id="input-fullname" class="form-control" />
                                        <?php if ($error_fullname) { ?>
                                        <div class="text-danger"><?php echo $error_fullname; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                        <?php if ($error_email) { ?>
                                        <div class="text-danger"><?php echo $error_email; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-telephone"><?php echo $entry_telephone; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
                                        <?php if ($error_telephone) { ?>
                                        <div class="text-danger"><?php echo $error_telephone; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-order-id"><?php echo $entry_order_id; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="order_id" value="<?php echo $order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" class="form-control" />
                                        <?php if ($error_order_id) { ?>
                                        <div class="text-danger"><?php echo $error_order_id; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-date-ordered"><?php echo $entry_date_ordered; ?></label>
                                    <div class="col-sm-10">
                                        <input type="date" name="date_ordered" value="<?php echo $date_ordered; ?>" placeholder="<?php echo $entry_date_ordered; ?>" data-date-format="YYYY-MM-DD" id="input-date-ordered" class="form-control" />
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend><?php echo $text_product; ?></legend>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-product"><?php echo $entry_product; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="product" value="<?php echo $product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control" />
                                        <?php if ($error_product) { ?>
                                        <div class="text-danger"><?php echo $error_product; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-model"><?php echo $entry_model; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="model" value="<?php echo $model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" class="form-control" />
                                        <?php if ($error_model) { ?>
                                        <div class="text-danger"><?php echo $error_model; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label"><?php echo $entry_reason; ?></label>
                                    <div class="col-sm-10">
                                        <?php foreach ($return_reasons as $return_reason) { ?>
                                        <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
                                                <?php echo $return_reason['name']; ?></label>
                                        </div>
                                        <?php } else { ?>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" />
                                                <?php echo $return_reason['name']; ?></label>
                                        </div>
                                        <?php  } ?>
                                        <?php  } ?>
                                        <?php if ($error_reason) { ?>
                                        <div class="text-danger"><?php echo $error_reason; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label"><?php echo $entry_opened; ?></label>
                                    <div class="col-sm-10">
                                        <label class="radio-inline">
                                            <?php if ($opened) { ?>
                                            <input type="radio" name="opened" value="1" checked="checked" />
                                            <?php } else { ?>
                                            <input type="radio" name="opened" value="1" />
                                            <?php } ?>
                                            <?php echo $text_yes; ?></label>
                                        <label class="radio-inline">
                                            <?php if (!$opened) { ?>
                                            <input type="radio" name="opened" value="0" checked="checked" />
                                            <?php } else { ?>
                                            <input type="radio" name="opened" value="0" />
                                            <?php } ?>
                                            <?php echo $text_no; ?></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-comment"><?php echo $entry_fault_detail; ?></label>
                                    <div class="col-sm-10">
                                        <textarea name="comment" rows="10" placeholder="<?php echo $entry_fault_detail; ?>" id="input-comment" class="form-control"><?php echo $comment; ?></textarea>
                                    </div>
                                </div>
                                <?php echo $captcha; ?>
                            </fieldset>
                            <?php if ($text_agree) { ?>
                            <div class="buttons clearfix">
                                <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-danger"><?php echo $button_back; ?></a></div>
                                <div class="pull-right"><?php echo $text_agree; ?>
                                    <?php if ($agree) { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                    <?php } else { ?>
                                    <input type="checkbox" name="agree" value="1" />
                                    <?php } ?>
                                    <input type="submit" value="<?php echo $button_submit; ?>" class="btn btn-primary" />
                                </div>
                            </div>
                            <?php } else { ?>
                            <div class="buttons clearfix">
                                <div class="pull-left">
                                    <input type="submit" value="<?php echo $button_submit; ?>" class="btn btn-primary" />
                                </div>
                            </div>
                            <?php } ?>
                        </form>
                        <?php echo $content_bottom; ?>
                    </div>
                </div>
            </div>
            <p class="bootm"></p>      
        </div>
        <div class="foot">
            <ul>
                <li class="home"><a class="icon-goodshome" href="index.php"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">个人中心</a> </li>
            </ul>
        </div>
    </body>
    <script type="text/javascrip    t"><!--
        $('.date').datetimep            icker({
        pickTime        : false
        });
        //--></script>
