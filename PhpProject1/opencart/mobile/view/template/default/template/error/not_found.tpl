<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>酔藏商城</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
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
        line-height: 48px;
        border-bottom: 1px solid #e6e6e6;
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
        background: url('./images/submitsuccessfully.png') no-repeat 50%;
        background-size: contain;
        width: 50%;
        margin: auto;
        line-height: 150px;
    }
    
    .main .goodsCart ul li.content {
        font-size: 15px;
        padding: 10px
    }
    
    .main .goodsCart ul li.content div {
        margin-top:-100px;
        text-align: center;
        padding: 5px
    }
    .main .goodsCart ul li.content div a{
        text-decoration:none;
        color:#e17513;
        border:1px solid #e17513;
        width:160px;
        height:60px;
        line-height:60px;
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
        line-height: 36px;
        border-width: 0 1px 0 0;
        border-style: solid;
        border-color: #ccc;
    }
    .foot ul li.home {
        width: 150px;
        font-size: 20px;
        text-shadow: 1px 1px 1px #ddd;
    }
    .foot ul li.home .icon-goodshome{
        font-size:20px;
    }
    .foot ul li a{
        font-size:12px;
        text-decoration:none;
        text-shadow: 1px 1px 1px #ddd;
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
    @media (max-width: 500px) {}
    
    @media (min-width: 400px) {}
    
    </style>
</head>

<body>
    <div class="main">
        <div class="goodsCart">
            <ul>
                <li class="submitsuccessfully">
                </li>
                <li class="content">
                    <div>
                        <p><img src="../image/catalog/no_cart.jpg"/></p>
                        <a href="index.php?route=product/categoryy">去逛逛</a>
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
            <li> <a>个人中心</a> </li>
        </ul>
    </div>
    <script type="text/javascript">
    </script>
</body>

</html>
