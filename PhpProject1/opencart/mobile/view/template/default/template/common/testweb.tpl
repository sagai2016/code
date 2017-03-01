<!DOCTYPE html>
<html>
<head>
	   <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
       <style type="text/css">
           .huodong{
            display: block;
            padding: 10px;
           }
           .huodong header{
                margin: auto;
                display: block;
                text-align: center;
                font-size: 20px;
                font-weight: bolder;
                line-height: 45px;
           }
           .huodong content{
                font-size: 12px;
                line-height: 25px;
                margin-bottom: 30px;
                display: inline-block;
           }
           .click{
                margin: auto;
                width: 150px;
                background: #05d;
                display: block;
                padding: 10px;
                text-align: center;
                border-radius: 5px;
                color: #fff;
           }
       </style>
	<title></title>
</head>
<body>
<div class="huodong">
<header>八窖酒库活动</header>
<content>
众所周知HTML5 属于万维网联盟 (W3C), 这个组织为整个网络界提供了标准，如此形成的协议可在全世界通行。在 2016 年 11 月， W3C 对长期行使的 HTML 5 标准进行了更新，它是2年内的第一次小更新。许多最开始提出的 HTML 5.1 功能特性都因为设计上的缺陷和缺乏浏览器厂商的支持而去掉了。
尽管有一些元素和功能提升被带进了 HTML 5.1 里面, 但它仍然是一个小的更新。其中的一些新的元素包含了组合标签, 现在这样的元素包括有
</content>
<footer><a class="click">点击领取卡券</a></footer>
</div>


<script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="view/javascript/weixinopnjssdk.js?time=<?php time();?>"></script>
<script type="text/javascript">
$(function(){
        weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
        weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
        weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
        weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
        weixinopnjssdk.ready(function(){
	        $('.click').on('click',function(){
	        	weixinopnjssdk.addCard("<?php echo $info[0]?>","<?php echo $info[1]?>","<?php echo $info[2]?>",function(){
	        			alert("记得使用哦");
                        window.history.back(); 
	        	})
	        });
        });
    });
</script>

</body>
</html>