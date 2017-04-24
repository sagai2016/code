<?php date_default_timezone_set('PRC');?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, name=viewport" />
        <script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/goodsStyle.css" />
        <title>八窖酒库｜我的酒票</title>
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
            a{
                margin: 0;
                padding: 0;
                list-style: none;
                border: 0;
                text-decoration: none;
            }
            a{
                text-decoration: none;
            }
            a:link { 
                text-decoration: none; 
            } 
            a:visited { 
                text-decoration: none; 
            } 
            * {
                color: #676767;
                font-size: 14px;
                box-sizing: border-box;
            }
            body,html{
                max-width: 750px;
                margin: 0 auto;
                padding: 0;
                background: #f8f8f8;
                box-sizing: border-box;
            }
            .main{
                width:100%; 
                padding: 2%;
            }
            .bootm{
                height: 15px;
                display: inline-block;
            }
            .top {
                position: fixed;
                background: #262424;
                height: 38px;
                width: 100%;
                position: fixed;
                z-index: 999;
                padding-top: 12px;
                padding-left: 7px;
            }
            .top a{
                color: #9c9ba0;
                margin-top: 30px;
            }
            .content h2{
                text-align: center;
                padding: 2%;
                letter-spacing: 1px;
            }
            .content ul{
                padding: 1%;
                border: #ccc 1px solid;
                margin: 10px auto;
                background-color: #fff;
                border-radius: 5px;

            }
            .content ul .time{
                font-size: 12px;
            }
            .content ul li{
                padding: 1%;
                letter-spacing: 1px;
            }
            .content ul li span{
                float: right;
                color:#e17513;

            }

            .content p{
                text-align: right;
            }
            .content p .money,.content p strong{
                color:#e17513;
            }   
            .main form .select{
                display: inline-block;
                height: 38px;
                width: 49%;
                border: 0;
                padding-left: 7%;
                border-radius: 5px;
                opacity: 0.8;
                background-color: #e8e8e8;
            }
              .main form .select option {
                line-height: 30px;
                height: 30px;
                font-size: 14px;
                border: 0;
                background-color: #e8e8e8;
                opacity: 0.8;
            }
            .main form .select p{
                line-height: 30px;
                height: 30px;
                font-size: 14px;
                border: 0;
                background-color: #e8e8e8;
                opacity: 0.8;
            }
            .main form .submit{
                width: 49%;
                border: none;
                display: inline-block;
                height: 38px;
                background-color: #0080ff;
                border-radius: 5px;
                color: #fff;
                font-weight: bolder;
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
            .foot ul li.settlement {
                background: #ff4444;
                color: #fff;
            }
            .foot ul li.settlement span {
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="top">
            <a href="index.php?"><i class="fa fa-chevron-left"></i></a>
        </div>
        <p class="bootm"></p>
        <div class="main">

            <form class="content" method = 'post'  action = 'index.php?route=account/send' enctype="multipart/form-data">
                <h2>好友助攻</h2>
                <?php foreach($content as $v):
                $v = array_values($v);
                ?>
                <ul>
                    <li><strong><?php echo  urldecode($v[0][2]);?></strong><span><?php echo  $v[2];?>元</span></li>
                    <li class='time'><?php echo  date("Y-m-d H:i:s",$v[1]);?></li>
                </ul>  
                <?php endforeach;?>
                
                <?php if($money >= 20):?>
                    <p>
                    <span>您的酒券总额为：</span>
                        <strong class='money' data-money='<?php echo  $money;?>'><?php echo  $money;?>元</strong>
                    </p>
                <select class="select" name="money">
                    <option value="100" name="100">领取100元酒券</option>
                    <option value="600" name="600">领取600元酒券</option>
                    <option value="800" name="800">领取800元酒券</option>
                    <option value="1000" name="1000">领取1000元酒券</option>
                    <option value="1600" name="1600">领取1600元酒券</option>
                    <option value="7800" name="7800">领取7800元酒券</option>
                </select>
                <input id="time" name="time" type="hidden" value=""></input>
                <input type="submit"  class='submit' value="确定领取"></input>
                <?php else:?>
                    <p>
                    <span>您的酒券总额为：</span>
                        <strong class='money' data-money='<?php echo  $money;?>'><?php echo  $money;?>元</strong>
                    </p>
                    <p>您尚未达到活动的最低<strong>100元</strong>酒券领取标准！</p>
                <?php endif;?>
            </form>

        </div>
        <p class="bootm"></p>
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">用户中心</a> </li>
            </ul>
        </div>
    </body>

    <script type="text/javascript">
        var timestamp = Date.parse(new Date());
        var timestamp = timestamp / 1000;
        var time = document.getElementById('time').value = timestamp;
        $('.select option').each(function () {
            //console.log($(this).val());
            if (parseInt($(this).val()) <= parseInt($('.content .money').data('money'))) {
                $(this).css('color', '#f00');
                $('.select').css('border', '0');
            } else {
                $(this).attr("disabled", "disabled");
                $(this).css('background-color','#ddd');
            }
        });
    </script>

    <?php if(!empty($_SESSION['signPackage'])):?>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="../webfile/js/weixinopnjssdk.js"></script>
        <script type="text/javascript">
            window.onload =function(){
            weixinopnjssdk.appId = '<?php echo $_SESSION['signPackage']['appId']?>';
            weixinopnjssdk.timestamp = '<?php echo $_SESSION['signPackage']['timestamp']?>';
            weixinopnjssdk.nonceStr = '<?php echo $_SESSION['signPackage']['nonceStr']?>';
            weixinopnjssdk.signature = '<?php echo $_SESSION['signPackage']['signature']?>';
            weixinopnjssdk.ready(function(){
            wx.hideOptionMenu();
            });
            }
        </script>
        <?php endif;?>


</html>