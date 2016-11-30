<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/goodsStyle.css" />
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
	height: 100%;
	background: #f8f8f8;
}
* {
	box-sizing: border-box;
}
.main {
	max-width: 750px;
	width: 100%;
	height: 100%;
	display: block;
	margin: auto;
}
.top, .content, .option {
	color: #2c2c2c;
	background: #fff;
}
.top {
	background: #262424;
	height: 35px;
	padding: 6px;
	width: 100%;
}
.top img {
	display: inline-block;
	height: 100%;
}
.top span {
	display: inline-block;
	float: right;
	color: #9c9ba0;
}
.top span a {
	display: inline-block;
	line-height: 16px;
}
.top span .gzc {
	color: #9c9ba0;
	border-right: 1px solid #fff;
	padding: 0 5px;
}
.content {
	width: 100%;
	display: inline-block;
}
.content ul .content ul li {
	width: 100%;
}
.content .goodsImages {
	height: 300px;
	text-align: center;
	overflow: hidden;
	height: 30%;
}
.content .goodsImages img {
	width: 100%;
}
.content .goodsIntroduce {
	border: 1px solid #e6e6e6;
	height: 20%;
	display: inline-block;
	width: 100%;
}
.content .goodsIntroduce p {
	width: 100%;
}
.content .goodsIntroduce .title, .content .goodsIntroduce .price, .content .goodsIntroduce .freight {
	font-weight: bolder;
	line-height: 20px;
	display: inline-block;
	width: 100%;
	padding: 1.5% 5%;
}
.content .goodsIntroduce .title {
	padding-top: 10px;
}
.content .goodsIntroduce .price {
	color: #e17513;
	padding-bottom: 10px;
}
.content .goodsIntroduce .freight {
	border-top: 1px solid #e6e6e6;
	color: #9b9b9b;
	font-weight: normal;
	padding-top : 8px;
	padding-bottom: 8px;
	font-size: 14px;
}
.option {
	margin: 12px 0;
	line-height: 35px;
	padding: 1% 3% .5% 5%;
	border: 1PX solid #e6e6e6;
}
.option p {
	display: inline-block;
}
.option span {
	display: inline-block;
	color: #323232;
}
.option .icon {
	width: 20px;
	vertical-align: middle;
	font-size: 27px;
	color: #9d9d9d;
	margin-right: 11px;
}
.option .goodhome {
	float: right;
	color: #9b9b9b;
}
.option i {
	display: block;
	float: right;
	color: #909090;
	line-height: 37px;
	font-size: 20px;
}
.goodsinfo {
	display: inline-block;
	background-size: 100% auto;
	
	width: 100%;
}
.goodsinfo img{
	width: 100%;
}
.foot {
	width: 100%;
	display: flex;
	position: fixed;
	bottom: 0;
}

.foot ul {
	background: #fff;
	margin: auto;
	width: 100%;
	display: flex;
	justify-content: space-between;
	width: 100%;
	border-top: 1px solid #bebebe;
}
.foot ul li {
	width: 100%;
	text-align: center;
	line-height: 48px;/*
	border-width: 0 1px 0 0;
	border-style: solid;
	border-color: #ccc;
*/
}
.foot ul .home {
	width: 250px;
	line-height: normal;
	color: #686868;
	font-size: 0;
}
.foot ul .home .icon-goodscart {
	font-size: 25px;
	color: #686868;
}
.foot ul .home a {
	display: inline-block;
	width: 100%;
	font-size: 12px;
	line-height: normal;
	padding: 0;
}
.foot ul .addToCart {
	background: #ff8856;
	color: #fff;
}
.foot ul .buyNow {
	background: #ff4344;
	color: #fff;
}

@media (min-width: 500px) {
.content .goodsImages {
	height: 770px;
}
}
.main .bootm {
	height: 35px;
	font-size: 50px;
	display: inline-block;
}
	
@media (min-width: 600px) {
.content .goodsImages {
	height: 640px;
}
}
</style>
</head>
<body>
    
<div class="main">
  <div class="top"><img src="/logo.png" alt="" /> <span> <a class="gzc">关注</a> <a >我的记录</a></span> </div>
  <div class="content">
    <ul>
      <li class="goodsImages"> <img src="/g1.jpg" /> </li>
      <li class="goodsIntroduce">
        <p> <span class="title">古井贡·正德窖藏</span> <span class="price"> ￥4500</span> <span class="freight"> 运费：免运费 </span> </p>
      </li>
    </ul>
  </div>
  <div class="option">
    <p>已选：一套正德窖藏</p>
    <i class="icon-goodslefttag"></i> </div>
  <div class="option"> 
    	<span class="icon icon-goodsshop"></span>
     	<span>大隆汇藏</span> 
     	<span class="goodhome">进入店铺<i class="icon-goodslefttag"></i></span>
  </div>
  <div class="goodsinfo">
  	<img src="/g2.jpg">
   
  </div>
  <p class="bootm"> </p>
</div>
<div class="menu"> </div>
<div class="foot">
  <ul>
    <li class="home"> <a class="icon-goodscart"> </a> <span> 购物车 </span> </li>
    <li class="addToCart"> <a>加入购物车</a> </li>
    <li class="buyNow"> <a>立即购买</a> </li>
  </ul>
</div>
</body>
</html>
