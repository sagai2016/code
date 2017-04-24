<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜全部商品</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/goodsStyle.css" />
        <script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
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
                background: #f5f5f5;;
            }
            * {
                color: #676767;
                font-size: 12px;
                box-sizing: border-box;
            }
            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }
            /*.top, .content, .option {
                color: #2c2c2c;
                background: #fff;
            }
            .top, .content, .option a{
                color: #9b9b9b;
            }
            .top {
                position: fixed;
                background: #262424;
                height: 38px;
                padding: 6px;
                width: 750px;
                line-height: 26px;
                z-index: 999;
            }
            .top a i {
                display: inline-block;
                height: 100%;
                color: #9b9b9b;
            }*/
            .main .goodslist {
                width: 100%;
                font-size: 0;
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
                width: 50%;
                text-align: left;
                padding-left: 2%;
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
                display: none;
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
                font-size: 14px;
            }
            .top .link li a {
                font-size: 12px;
                color:#fff;
            }
             .top .link .linkmain ,.top .allCategory .linkmain a{
                color:red;
                margin-left: -5%;
            }
        
            .main .goodslist .list {
                width: 100%;
                font-size: 0;
            }
            .main .goodslist .list li {
                display: inline-block;
                width: 100%;
                padding: 2%;
                vertical-align: top;

            }
            .main .goodslist .list li p {
                font-size: 14px;
                border-radius: 3px;
                width: 100%;
                overflow: hidden;
            }
            .main .goodslist .list li p a img {
                width: 100%;
                border-radius: 2px;
            }/*
            .main .goodslist .list li .price{
                color: #e17513;
                padding-bottom: 10px;
                font-size: 16px;
            }
            .main .goodslist .list li div{
                border:solid 1px #ddd;
                border-radius: 3px;
            }
            .main .goodslist .list li div .price,.main .goodslist .list li div .name{
                padding: 6px;
                font-size: 14px;
            }*/
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
                height: 40px;
                font-size: 40px;
                display: inline-block;
            }
            .bootm {
                height: 38px;
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
                text-decoration: none;
                text-shadow: 1px 1px 1px #ddd;
            }
            .foot ul .home .icon-goodshome{
                vertical-align: middle;
                font-size: 18px;
                text-shadow: 1px 1px 1px #ddd;
            }
            .foot ul .home {
                width: 150px;
                font-size: 20px;
                text-shadow: 1px 1px 1px #ddd;
            }
            a{
                text-decoration: none;
            }

            .mess{
                text-align: center;
                /* line-height: 35px; */
                border-radius: 3px;
                margin: 10px auto;
                font-weight: bolder;
                max-width: 750px;
                width: 100%;
            }
            .mess img{
                display: inline-block;
                width: 100%;
            }
        </style>
    </head>

    <body>
        <script src="../webfile/js/move.min.js" type="text/javascript"></script>
        <div class="top">
            <ul class="link">
                <li class="zero fa fa-indent fa-lg" id="show">商品列表</li>
                <li class="zero fa fa-dedent fa-lg" id="none">商品列表</li>
                <li></li>
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
            <!--<div class="top">
                <a href="index.php?"><i class="fa fa-chevron-left"></i></a>
            </div>-->
            <p class="bootm"> </p>
            <div class="goodslist">      
                <ul class="list">   
                    <?php
                    if(!empty($all)):

                    foreach($all as $allp):?>           
                    <li>
                        <p>
                           
 <a href="index.php?route=common/product&product_id=<?php echo $allp['product_id'] ;?>"><img src="../image/<?php echo $allp['image'];?>"/></a>                    
                        </p>
                        <!--<div>
                            <p class='name'><?php echo $allp['name']; ?></p> 
                            <p class='price'>￥:<?php echo $allp['price']; ?></p>
                        </div>-->
                    </li>                
                    <?php
                    endforeach;
                    endif;?>
                </ul>          
                <!--<div class="page">
                    <div class="pagination"><?php echo $pagination; ?></div>
                </div>-->

            </div>
        </div>
        <div class="mess">
            <img src="../image/catalog/little_images/last1.jpg?M=<?php echo time()?>">
        </div>
        <div class="bootm"></div>
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">用户中心</a> </li>
            </ul>
        </div>

        <script>
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
            url: 'index.php?route=product/categoryy/back',
                    type: 'get',
                    dataType: 'json',
                    data: 'page=' + ispage,
                    success: function (a) { //成功 
                    var html = '';
                    if (a !== 'stop') {
                    for (var h in a.all) {

                    html += '<li>' +
                            '<p>' +
                            '<a href=index.php?route=common/product&product_id=' + a.all[h].product_id + '><img src=' + a.all[h].image + '></a>' +
                            '</p>' +
                            '</li>'

                    }
                    $(".list").append(html);
                    } else {
                    var stop = $('.goodslist').find('.message').data('stop');
                    if (!stop) {
                    $(".goodslist").append('<div data-stop="true" class="message"></div>');
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
            //weixinopnjssdk.title = '八窖酒库';
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
                        .set('display', 'inline-block')
                        .ease('cubic-bezier(0.67, 0.1, 0.04, 1.29)')
                        .x(368)
                        .end();
                j = 0;
            } else {
                 $('#show').show();
                $('#none').hide();
                move('.allCategory')
                        .ease('cubic-bezier(0.39, 1.14, 0.74, 0.63)')
                        .x(-370)
                        .end();
                j = 1;
            }
            console.log(j)
        })

    </script>
    
</html>
