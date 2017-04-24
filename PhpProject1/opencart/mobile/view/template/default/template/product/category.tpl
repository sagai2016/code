<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库 | <?php echo $heading_title; ?></title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/goodsStyle.css" />
        <script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <!--<script src="../webfile/js/common.js" type="text/javascript"></script>-->
        <script src="../webfile/js/jquery.min.js"></script>
        <style>
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
            body{
                line-height: none;
            }
            * {
                box-sizing: border-box;
                font-size: 12px;
            }
            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }

            .top {

            }
            .main .zhutu{
                background-color: #fff;
            }
            .main .zhutu img{
                width: 100%;
                height: 100%;
            }
            .top .link {
                display: inline-flex;
                justify-content: space-between;
                width: 100%;
                position: fixed;
                background: #262424;
                z-index: 2;
            }
            .top .link #none,.top .link #show{
                color: #fff;
                width: 46%;
                text-align: left;
                padding-left: 2%;
                font-size: 14px;
            }
            .top .link #none:before,.top .link #show:before{
                margin-right: 10px;
            }
            .top .link #none{
                display:none;
            }
            .top .allCategory {
                background-color: #fff;
                width: 40%;
                z-index: 3;
                position: fixed;
                margin-top: 38px;
                left: -370px;
                height: 100%;
                opacity: .95;
                color: #fff;
                border: 1px #e0e0e0 solid;
                box-shadow: rgba(59, 60, 62, 0.29) 11px -4px 20px 1px;
            }
            .top .allCategory li{
                padding: 4% 5%;
                border-bottom:  1px #e0e0e0 solid;
                margin: 3%;
            }
            .top .allCategory li i{
                color:#6e6e6e;
                margin-right: 17px;
            }

            .top .link li {
                width: 100%;
                text-align: center;
                line-height: 38px;
                /*border-bottom: 1px solid #e6e6e6;  */
            }
            .top .link li strong{
                font-size: 14px;
                letter-spacing: 1px;
            }
            .top .link li a{
                font-size: 12px;
                color:#fff;
            }
            .top .link .linkmain{
                color: #fff;
                width: 58%;
                text-align: left;
                font-size: 14px;
            }
            .top .allCategory .linkmain a{
                color:red;
            }
            .main .limit{
                margin-top: 70px;
            }
            .main .goodslist {
                width: 100%;
                font-size: 0;
            }.main .goodslist .limit{
                text-align: center;
            }
            .main .goodslist .limit .pagination{
                font-size: 12px;
            }
            .main .goodslist .list {
                width: 100%;
                font-size: 0;
            }
            .main .goodslist .list{
                padding: 2%;
            }
            .main .goodslist .list a {
                display: inline-block;
                width: 100%;
                vertical-align: top;
                padding: 1%;
                background: #fff;
                margin: 5px auto;
                position:relative;
            }
            .main .goodslist .list a .order{
                position: absolute;
                right: 5px;
                bottom: 5px;
                height: 23px;
                line-height: 25px;
                width: 35px;
                border-radius: 3px;
                margin: 0;
                padding: 0px;
                font-size: 12px;
                background-color: #ffab73;
                color: #fff;
                padding-left: 5px;
            }
            .main .goodslist .list a img{
                font-size: 14px;
                background: #fff;
                display: inline-block;
                width: 158px;
                height: 158px;
                vertical-align: top;
                border: solid #F8F8F8 0.5px;

            }
            .main .goodslist .list div{
                width: 47%;
                display: inline-block;
                padding-left: 3%;

            }
            .main .goodslist .list div p {
                display: inline-block;
                padding: 2%;
                width: 100%;
                line-height: 19px;
                height: 38px;
                word-wrap: break-word;
                letter-spacing: 0.5px;
                overflow: hidden;
                text-overflow: ellipsis;
                color: #555555;
                font-size: 14px;
                /*white-space:nowrap; overflow:hidden; text-overflow:ellipsis;*/
            }
            .main .goodslist .list div .price{
                font-weight: bolder;
                color: #dc512c;
                font-size: 16px;
                padding-top: 7%;
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

            .bootm {
                height: 34px;
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
            }
            .foot ul li a{
                letter-spacing:1.5px;
                font-size: 14px;
                text-shadow: 1px 1px 1px #ddd;
            }
            .foot ul .home {
                width: 150px;
                text-shadow: 1px 1px 1px #ddd;
                font-size: 20px;
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
            .message{
                font-size: 14px;
                text-align: center;
                margin: 0 0px 10px 0;
            }
            a{
                text-decoration: none;
                color:#666; 
            }
            a:visited { 
                color:#666; 
                text-decoration: none; 
            } 
        </style>
    </head>
    <body>
        <script src="../webfile/js/move.min.js" type="text/javascript"></script>
        <div class="top">
            <ul class="link">
                <li class="zero fa fa-indent fa-lg" id="show">商品列表</li>
                <li class="zero fa fa-dedent fa-lg" id="none">商品列表</li>
                <!--<?php
                foreach($three as $v):
                $cc='';
                if(!empty($_GET['path'] ) && $_GET['path'] ==  $v['category_id']){
                $cc = 'class="linkmain"';
                }
                ?>
                <li  <?php echo $cc;?>> <a href="<?php echo  $v['href']?>"><?php echo $v['name']?></a> </li>
                <?php endforeach?>-->
                <li class="linkmain"><?php echo $heading_title; ?></li>
            </ul>
            <ul class="allCategory">
                <?php
                foreach($categories as $categorie):
                $cc='';
                if(!empty($_GET['path'] ) && $_GET['path'] ==  $categorie['category_id']){
                $cc = 'class="linkmain"';
                }
                ?>
                <li <?php echo $cc;?>>
                    <?php 
                    $urls_fun=$categorie['name']=='八窖珍藏'?'index.php?route=product/categoryy':$categorie['href'];

                    $urls_fun = str_replace("//m","/m",$urls_fun);

                    ?>

                    <a href="<?php echo  $urls_fun?>">
                        <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                        <?php echo $categorie['name']?></a> </li>

                <?php endforeach?>
            </ul>
        </div>
        <div class="main">

            <p class="bootm"></p>

            <p class="zhutu"><img src="<?php echo $thumb; ?>"></p>
            <ul class="goodslist">
                <li class="list">
                    <?php foreach ($products as $product) { ?>
                    <a  href="<?php echo $product['href']; ?>">
                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
                        <div>
                            <p>
                                <?php echo $product['name']; ?>
                            </p> 
                            <p class="price">
                                <?php echo $product['price']; ?>
                            </p>
                            <p class="order"><span>订购</span></p>
                        </div>
                    </a>

                    <?php } ?>
                </li>     

                <!--<div class="limit">
                    <div class="col-md-3 col-xs-6" id="select">
                      <div class="form-group input-group input-group-sm">
                        <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
                        
                        <select id="input-limit" class="form-control" onchange="location = this.value;">
                          <?php foreach ($limits as $limits) { ?>
                          <?php if ($limits['value'] == $limit) { ?>
                          <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="pagination"><?php echo $pagination; ?></div>-->
            </ul>    
        </div>
        <p class="bootm"> </p>
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">用户中心</a> </li>

            </ul>
        </div>

        <script>
            var path = '<?php echo $_GET['path']?>';
            var ispage = 1;
            $(window).scroll(function () {
            var scrollTop = $(this).scrollTop() + 150; //可卷上去的高度
            var scrollHeight = $(document).height(); //定位整块区域的高度
            var windowHeight = $(this).height(); //整个滚动条可滚动的高度

            var z1 = scrollHeight - windowHeight;
            if (z1 < scrollTop) {
            var stop = $('.goodslist').find('.message').data('stop');
            if (!stop) {
            ++ispage;
            $.ajax({
            url: 'index.php?route=product/category/back',
                    type: 'get',
                    dataType: 'json',
                    data: 'page=' + ispage + '&path=' + path,
                    success: function (a) { //成功 
                    var html = '';
                    if (a !== 'stop') {
                    for (var i = 0; i < a.length; i++) {

                    html += '<li>' +
                            '<p>' +
                            '<a href=index.php?route=common/product&product_id=' + a[i]['product_id'] + '><img src=' + a[i]['thumb'] + '></a><span>' +
                            a[i]['name'] + '</span>' +
                            '</p>' +
                            '</li>';
                    }
                    $(".list").append(html);
                    } else {
                    var stop = $('.goodslist').find('.message').data('stop');
                    if (!stop) {
                    $(".goodslist").append('<div data-stop="true" class="message">没有更多的数据了</div>');
                    }
                    }
                    }
            });
            }
            }
            });
        </script>

        <?php if(!empty($_SESSION['signPackage'])):?>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="../webfile/js/weixinopnjssdk.js"></script>
        <script type="text/javascript">
            $(function(){
            weixinopnjssdk.appId = '<?php echo $_SESSION['signPackage']['appId']?>';
            weixinopnjssdk.timestamp = '<?php echo $_SESSION['signPackage']['timestamp']?>';
            weixinopnjssdk.nonceStr = '<?php echo $_SESSION['signPackage']['nonceStr']?>';
            weixinopnjssdk.signature = '<?php echo $_SESSION['signPackage']['signature']?>';
            //weixinopnjssdk.title = '八窖酒库|<?php echo $heading_title; ?>';
            //weixinopnjssdk.desc = '收藏级文化白酒优选商城';
            weixinopnjssdk.title='转发积酒票，千元名酒百元得！'+"\r\n"+'看你好友多不多！';
            weixinopnjssdk.desc="即日起向好友推荐八窖酒库，可获得“八窖酒票”奖励。";
            weixinopnjssdk.link = "<?php echo 'http://'.$_SERVER['HTTP_HOST'].'/mobile/index.php?'.'&num='.$num?>";
            weixinopnjssdk.imgUrl = "<?php echo 'http://'.$_SERVER['HTTP_HOST'].'/image/catalog/demo/manufacturer/newlogo.png'; ?>";
            weixinopnjssdk.ready(function(){
            /*获取“分享给朋友”按钮点击状态及自定义分享内容接口*/
            weixinopnjssdk.onMenuShareAppMessage();
            /*获取“分享到朋友圈”按钮点击状态及自定义分享内容接口*/
            weixinopnjssdk.onMenuShareTimeline();
            });
            });
        </script>
        <?php endif;?>


    </body>
    <script>
        var j = 1;
        console.log(j)
                $('.zero').click(function () {
        if (j > 0) {
        $('#show').hide();
        $('#none').show();
        move('.allCategory')
                .ease('cubic-bezier(0.67, 0.1, 0.04, 1.29)')
                .x(368)
                .end();
        j = 0;
        } else {
        $('#show').show();
        $('#none').hide();
        move('.allCategory')
                .ease('cubic-bezier(0.39, 1.14, 0.74, 0.63)')
                .x( - 370)
                .end();
        j = 1;
        }
        console.log(j)
        })

    </script>
</html>

