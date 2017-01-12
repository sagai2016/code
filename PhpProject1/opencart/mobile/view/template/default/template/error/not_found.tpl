<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>酔藏商城</title>
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
        <meta name="format-detection" content="telephone=no" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
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
                color: #676767;
                font-size: 14px;
                box-sizing: border-box;
            }
            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }
            .top, .content, .option {
                color: #2c2c2c;
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
            .top img {
                display: inline-block;
                height: 100%;
            }
            
            
            
            
            

            .main .goodsCart ul {
                width: 85%;
                margin: auto;
                margin-top: 20%;
            }

            .main .goodsCart ul li.submitsuccessfully:before {
                content: '　';
            }

            .main .goodsCart ul li.submitsuccessfully {
                font-size: 14px;
                background-size: contain;
                width: 50%;
                margin: auto;
                line-height: 150px;
            }

    

            .main .goodsCart ul li.content div {
                margin-top:-100px;
                text-align: center;
                padding: 5px;
                padding: 8px 19px;
            }
            .main .goodsCart ul li.content div a{
                text-decoration: none;
                color: #e17513;
                border: 1px solid #e17513;
                width: 160px;
                height: 60px;
                line-height: 60px;
                padding: 10px 20px;
                font-weight: bolder;
                border-radius: 5px;
                letter-spacing:3px;

            }


            .main .content  .iconsize{
                font-size: 210px;
                display: inline-block;
                /* margin: 0 -37px; */
                text-indent: -32px;

            }
            .main .content p,.main .content p *{
                color:#bbb;
                line-height: 46px;
                letter-spacing:3px;
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

        </style>
    </head>

    <body>
       
        <div class="main">
                        <div class="top">
                <a><img src="view/theme/default/image/logo.png" alt="" /></a>
            </div>
            <p class="bootm"> </p>
            <div class="goodsCart">
                <ul>
                    <li class="submitsuccessfully">
                    </li>
                    <li class="content">
                        <div>
                            <p >
                                <span class="iconsize icon-goodscart"></span>
                            </p>
                            <p>购物车空空如也</p>
                            <a href="index.php?route=product/categoryy">去逛逛</a></br>
                        </div>
                    </li>
                    <li></li>
                </ul>
            </div>
        </div>
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">个人中心</a> </li>
            </ul>
        </div>
        <script type="text/javascript">
        </script>
    </body>

</html>
