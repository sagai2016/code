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
        .bootm{
            height: 25px;
            display: inline-block;
        }
        .top img {
            display: inline-block;
            height: 100%;
        }
        .container .list{
            padding: 10px;
        }
        .content{
            font-size: 16px;
            color:#FFFFFF;
            padding: 2%;
            font-size: 0;
            text-align: center;
            width: 100%;
            margin-bottom: 15px;
            display: inline-block;
            background: #fff;
            border: #c9c9c9 solid 1px;
        }
        .content h1{
            margin: 10px auto;
            font-weight: bolder;
        }
        .content img{
            width: 100%;
            box-shadow: 0 0 5px #777676;
        }
        .list .content .message{
            text-align: center;
            background-color: yellow;
            font-size: 14px;
            margin: 10px auto;
            width: 100%;
            box-shadow: 0 0 2px #777676;
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
    <body >
        <div class="container">
            <div class="top">
                <a href="./"><img src="view/theme/default/image/logo.png" alt="" /></a>
            </div>
            <p class="bootm"></p>
            <div class="list">
                <div class='node node1'>
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2.png'>
                        <div class='message'>1111</div>
                    </div>
                </div>
                <div class="node node2">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2-2.png'>
                    <div class='message'>222</div></div>
                </div>
                <div class="node node3">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2.png'>
                    <div class='message'>333</div>
                    </div>
                </div>
                <div class="node node4">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2-2.png'>
                    <div class='message'>444</div>
                    </div>
                </div>
                <div class="node node5">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2.png'>
                    <div class='message'>555</div>
                    </div>
                </div>
                <div class="node node6">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2-2.png'>
                    <div class='message'>666</div>
                    </div>
                </div>
                <div class="node node7">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2.png'>
                    <div class='message'>777</div>
                    </div>
                </div>
                <div class="node node8">
                    <div class="content">
                        <h1>我是标题</h1>
                        <img src='image/catalog/demo/manufacturer/t2-2.png'>
                    <div class='message'>888</div>
                    </div>
                </div>
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
            </div>
        </div>
        <script>
            urlinfo = window.location.href; //获取当前页面的url 
            len = urlinfo.length;//获取url的长度 
            offset = urlinfo.indexOf("&");//设置参数字符串开始的位置 
            numinfo = urlinfo.substr(offset, len);//取出参数字符串 这里会获得类似“id=1”这样的字符串 
            nums = numinfo.split("=");//对获得的参数字符串按照“=”进行分割 
            num = nums[1];//得到参数值 

            $('.list .node').hide();
            if (num) {
                $('.list .node' + num).show();
            }
        </script>


        <?php /*
        <script>
        function more() {
        urlinfo = window.location.href; //获取当前页面的url 
        len = urlinfo.length;//获取url的长度 
        offset = urlinfo.indexOf("&");//设置参数字符串开始的位置 
        numinfo = urlinfo.substr(offset, len)//取出参数字符串 这里会获得类似“id=1”这样的字符串 
        alert(numinfo);
        nums = numinfo.split("=");//对获得的参数字符串按照“=”进行分割 
        num = nums[1];//得到参数值 
        alert("您要传递的参数值是" + num);
        if (num) {
        if (num == 1) {
        var html = '';
        var html = "<div class='message'>asdfdf1</div>";
        $(".content").append(html);
        } else if (num == 2) {
        var html = '';
        var html = "<div class='message'>asdfdf2</div>";
        $(".content").append(html);
        } else if (num == 3) {
        var html = '';
        var html = "<div class='message'>asdfdf3</div>";
        $(".content").append(html);
        } else if (num == 4) {
        var html = '';
        var html = "<div class='message'>asdfdf4</div>";
        $(".content").append(html);
        } else if (num == 5) {
        var html = '';
        var html = "<div class='message'>asdfdf5</div>";
        $(".content").append(html);
        } else if (num == 6) {
        var html = '';
        var html = "<div class='message'>asdfdf6</div>";
        $(".content").append(html);
        } else if (num == 7) {
        var html = '';
        var html = "<div class='message'>asdfdf7</div>";
        $(".content").append(html);
        } else if (num == 8) {
        var html = '';
        var html = "<div class='message'>asdfdf8</div>";
        $(".content").append(html);
        }
        }
        }
        </script>
        */?>
    </body>
</html>
