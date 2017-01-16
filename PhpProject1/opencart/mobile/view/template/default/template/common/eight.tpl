<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css"/>
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    </head>
    <style>
        a, ul, li, h1, h2, h3, h4, h5, h6, dt, dd, dl, ol, dl, dt, dd {
            margin: 0;
            padding: 0;
            list-style: none;
            border: 0;
            text-decoration: none;
        }

        * {
            color: #676767;
            font-size: 14px;
            font-family: "微软雅黑";
            box-sizing: border-box;
        }

        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            background: #f8f8f8;
        }

        .top {
            position: fixed;
            background: #262424;
            height: 38px;
            padding: 6px;
            width: 100%;
            line-height: 26px;
            z-index: 999;
        }

        .top img {
            display: inline-block;
            height: 100%;
        }

        .wine {
            padding-top: 70px;
        }

        .wine ul {
            padding: 10px;
        }

        .wine ul li {
            padding: 2%;
            font-size: 0;
            text-align: center;
            width: 100%;
            margin-bottom: 15px;
            display: inline-block;
        }

        .wine ul li div {
            color: red;
            position: relative;
            font-size: 0;
            z-index: 8;
            bottom: 0px;
        }

        .wine ul li div p {
            position: absolute;
            background: rgba(50, 50, 50, 0.75);
            height: 93px;
            width: 100%;
            bottom: -20px;
            color: #fff;
            text-align: left;
            padding: 9px;
            border-color: #8a8a8a;;
            border-style: solid;
            border-width: 0.1px 0 0 0 ;
        }

        .wine ul li div p strong {
            display: inline-block;
            width: 100%;
            color: #fff;
            line-height: 25px;
        }

        .wine ul li div p span {
            display: inline-block;
            width: 100%;
            color: #fff;
            font-size: 12px;
            line-height: 16px;
            overflow: hidden;
            height: 34px;
        
        }
        .wine ul li div p a {
            display: inline-block;
            float: right;
            color: #ccc;
            width: 70px;
            text-align: right;
            height: 20px;
            line-height: 20px;
        }
        .wine ul li img {
            width: 100%;
            box-shadow: 0px 0px 25px #000;
        }
        .bootm{
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

        .foot ul li a {
            letter-spacing: 1.5px;
            font-size: 14px;
            text-shadow: 1px 1px 1px #ddd;
        }
        .last{
            margin-bottom: 200px;
        }
        .foot ul .home {
            letter-spacing: 1.5px;
            width: 150px;
            text-shadow: 1px 1px 1px #ddd;
        }

        .foot ul .home .icon-goodshome {
            vertical-align: middle;
            font-size: 18px;
            text-shadow: 1px 1px 1px #ddd;
        }

        .foot ul li a {
            letter-spacing: 1.5px;
            font-size: 12px;
            text-decoration: none;
            text-shadow: 1px 1px 1px #ddd;
        }
    </style>
    <body>
        <div class="container">
            <div class="top">
                <img src="view/theme/default/image/logo.png" alt=""/>
            </div>
            <div class="wine">
                <ul>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='1'>move</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='2'>move</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='3'>move</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='4'>move</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='5'>move</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='6'>move</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='7'>move</a>
                            </p>
                        </div>
                    </li>
                    <li class="last">
                        <img src="image/catalog/demo/manufacturer/t2-2.png">
                        <div>
                            <p>
                                <strong>position相对定位</strong>
                                <span>绝对定位是以父元素为基准点,进行定位(如果他没有父元素,或者它的父元素没有设置position:relative属性)它就会以为基</span>
                                <!--<a href="index.php?route=common/more">move</a>-->
                                <a data-id='8'>move</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="foot">
                <ul>
                    <li class="home">
                        <a href="index.php?" class="icon-goodshome"></a>
                    </li>
                    <li>
                        <a href="index.php?route=product/categoryy">全部商品</a>
                    </li>
                    <li>
                        <a href="index.php?route=checkout/cart">购物车</a>
                    </li>
                    <li>
                        <a href="index.php?route=account/login">个人中心</a>
                    </li>
                </ul>
            </div>'
        </div>

        <script>
            $('.wine').on('click', 'a', function () {
                var id = $(this).data('id');
                location.href = 'index.php?route=common/more&num=' + id;
            });
        </script>
        <!--
           function move(a) {
               if (a==1){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if (a==2){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if (a==3){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if (a==4){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if (a==5){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if (a==6){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if (a==7){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }else if(a==8){
                   var move=a;
                   alert(move);
                   location.href="index.php?route=common/more&num="+move;
               }
           }
       </script>-->
    </body>
</html>
