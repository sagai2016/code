<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>八窖酒库</title>
	<script src="../webfile/js/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=8">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-control" content="no-cache">
	<meta http-equiv="Cache" content="no-cache">
	<link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/goodsStyle.css" />
	<link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/swiper.min.css" />
	<script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="../webfile/js/jquery.min.js"></script>
	<script type="text/javascript" src="../webfile/js/swiper.jquery.min.js"></script>
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
		dd {
			margin: 0;
			padding: 0;
			list-style: none;
			border: 0;
		}
		
		* {
			color: #676767;
			font-size: 14px;
			box-sizing: border-box;
		}
		
		body,
		html {
			margin: 0;
			padding: 0;
			background: #f8f8f8;
		}
		
		.main * {
			box-sizing: border-box;
		}
		
		.main {
			max-width: 750px;
			width: 100%;
			display: block;
			margin: auto;
		}
		
		.main .header {
			font-size: 0;
			text-align: center;
		}
		
		.main .header a {
			font-size: 0;
		}
		
		.main .header img {
			max-height: 355px;
			width: 100%;
			margin: auto;
			font-size: 0;
		}
		
		.main .banner {
			width: 100%;
			padding: 0 10px;
			/*height: 217px;*/
			height: inherit;
			/*165px*/
			overflow: hidden;
		}
		
		.main .banner div,
		.main .banner ul,
		.main .banner li {
			height: inherit;
		}
		
		.main .banner li img {
			width: 100%;
		}
		
		.main .ad2 {
			margin: 5px 0;
			height: inherit;
			background-size: 100% auto;
			padding: 0 10px;
		}
		
		.main .ad2 p {
			text-align: center;
			color: #aa7d46;
			font-size: 16px;
		}
		
		.main .ad2 a img {
			width: 100%;
		}
		
		.main .adList {
			width: 100%;
			background: #eee;
			padding-bottom: 1px;
		}
		
		.main .adList img {
			width: 100%;
		}
		
		.main .adList dt {
			height: inherit;
			background: #fff;
			text-align: center;
			width: 100%;
			margin: auto;
			border: #e9e9e9 1px solid;
			margin-bottom: 2px;
		}
		
		.main .adList dd {
			width: 100%;
			overflow: hidden;
		}
		
		.main .adList dd ul {
			width: 100%;
			font-size: 0;
			font-size: 0;
		}
		
		.main .adList dd ul li {
			display: inline-block;
			width: 50%;
			font-size: 0;
			background: #fff;
			border: 1px solid #eee;
			vertical-align: top;
			border-radius: 5px;
			margin: 5px 2px;
		}
		
		.main .adList dd ul li img {
			border-radius: 5px;
			box-shadow: 0 0 2px #666;
		}
		
		.main .adList .product {
			margin: 5px;
			padding: 0 1%;
		}
		
		.bootm {
			height: 43px;
			font-size: 25px;
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
		
		.foot ul li a {
			letter-spacing: 1.5px;
			font-size: 14px;
			text-decoration: none;
			text-shadow: 1px 1px 1px #ddd;
		}
		
		.foot ul .home .icon-goodshome {
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
		
		a {
			text-decoration: none;
		}
		
		.mess {
			text-align: center;
			/* line-height: 35px; */
			border-radius: 3px;
			margin: 10px auto;
			font-weight: bolder;
			max-width: 750px;
			width: 100%;
		}
		
		.mess img {
			display: inline-block;
			width: 100%;
		}
		
		.swiper-pagination-bullet-active {
			opacity: 1;
			background: #c12414;
		}
		
		.openmenuwxmsg_div {
			width: 100%;
			height: 100%;
			position: fixed;
			background: rgba(0, 0, 0, .50);
			z-index: 9999;
		}
		
		.openmenuwxmsg_div div {
			background: url('/banner/banner20174-2/openmenuwxmsg.png');
			width: 80%;
			height: 33%;
			background-size: contain;
			background-repeat: no-repeat;
			float: right;
		}
	</style>
</head>

<body>
    <?php if(!empty($openmenuwxmsg)): ?>
	<div class="openmenuwxmsg_div">
		<div>
		</div>
	</div>
	<?php endif?>

	<div class="main">
		<div class="header">
			<img src="../image/catalog/little_images/bajiaojiuku.png?M=<?php echo time()?>" />
		</div>
		<div class="banner">
			<div class="swiper-container">
				<ul class="swiper-wrapper">

					<li class="swiper-slide">
						<a href="/banner/banner20174-2/index.html"><img src="/banner/banner20174-2/zdjc.jpg"></a>
					</li>
					<li class="swiper-slide">
						<a href="index.php?route=account/login"><img src="../image/catalog/home_banner/goReg.jpg"></a>
					</li>
					<li class="swiper-slide">
						<a href="index.php?route=common/product&product_id=149"><img src="../image/catalog/home_banner/zhengde.jpg"></a>
					</li>
					<li class="swiper-slide">
						<a href="index.php?route=common/product&product_id=141"><img src="../image/catalog/home_banner/tianniang.jpg"></a>
					</li>
				</ul>
				<span class="swiper-pagination"></span>
			</div>
		</div>

		<div class="adList">
			<dl>
				<dt>
					<img src="../image/catalog/little_images/t4-1.jpg?M=<?php echo time()?>">
				</dt>
				<dd class="swiper-container2">

					<!--<div class="ad2">
                       <a href="/banner/banner20174-2/"><img src="/banner/banner20174-2/zdjc2.jpg?M=<?php echo time()?>"></a>
                    </div>-->
					<div class="ad2">
						<a href="/banner/banner20172/index.html"><img src="../image/catalog/little_images/yx.jpg?M=<?php echo time()?>"></a>
					</div>

				</dd>
			</dl>
		</div>

		<div class="adList">
			<dl>
				<dt>
					<img src="../image/catalog/little_images/t4.png?M=<?php echo time()?>">
				</dt>
				<dd class="swiper-container2">

					<!--<ul class="swiper-wrapper">
                            <?php 
                            foreach($product as $v):
                            ?>
                                <li class="swiper-slide">
                                    <a  href="index.php?route=common/product&product_id=<?php echo $v['product_id'] ;?>">
                                        <img src="../image/<?php echo $v['image']?>">
                                    </a>
                                </li>
                            <?php endforeach?>
        
                        </ul>-->
				</dd>
			</dl>
			<?php 
                foreach($datu as $v):
                ?>
			<div class="product">
				<a href="index.php?route=common/product&product_id=<?php echo $v['product_id'] ;?>">
                        <img src="../image/<?php echo $v['image']?>">
                    </a>
			</div>
			<?php endforeach?>

		</div>
		<div class="adList">
			<dl>
				<dt>
					<img src="../image/catalog/little_images/t5.jpg?M=<?php echo time()?>">
				</dt>
				<div class="product">
					<a href="index.php?route=product/category&path=64"><img src="../image/catalog/little_images/maotai.jpg?M=<?php echo time()?>"></a>
				</div>
				<div class="product">
					<a href="index.php?route=product/category&path=65"><img src="../image/catalog/little_images/wuliangye.jpg?M=<?php echo time()?>"></a>
				</div>
			</dl>
		</div>
	</div>
	<!--<div class="foot">
            <ul>
                <li class="home"><a class="icon-goodshome" href="index.php"></a></li>
    
                <?php foreach($categories as $categorie):?>
    
                <li> <a href="<?php echo  $categorie['href']?>"><?php echo $categorie['name']?></a> </li>
                <?php endforeach?>
            </ul>
        </div>-->
	<div class="mess">

		<img src="../image/catalog/little_images/last1.jpg?M=<?php echo time()?>">
	</div>

	<div class="bootm"></div>
	<div class="foot">
		<ul>
			<li class="home">
				<a href="index.php?" class="icon-goodshome"></a>
			</li>
			<li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
			<li> <a href="index.php?route=checkout/cart">购物车</a> </li>
			<li> <a href="index.php?route=account/login">用户中心</a> </li>
		</ul>
	</div>
	

	<script>
		var swiper = new Swiper('.swiper-container', {
			pagination: '.swiper-pagination',
			loop: true,
			grabCursor: true,
			paginationClickable: true,
			autoplay: 5000,
			autoplayDisableOnInteraction: false
		});
		var swiper = new Swiper('.swiper-container2', {
			slidesPerView: 2.3,
			slidesPerGroup: 1
		});
	</script>
</body>


<?php if(!empty($_SESSION['signPackage'])):?>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="../webfile/js/weixinopnjssdk.js"></script>
<script type="text/javascript">
		$(function () {
			weixinopnjssdk.appId = '<?php echo $_SESSION['signPackage']['appId']?>';
			weixinopnjssdk.timestamp = '<?php echo $_SESSION['signPackage']['timestamp']?>';
			weixinopnjssdk.nonceStr = '<?php echo $_SESSION['signPackage']['nonceStr']?>';
			weixinopnjssdk.nonceStr = '<?php echo $_SESSION['signPackage']['nonceStr']?>';
			weixinopnjssdk.signature = '<?php echo $_SESSION['signPackage']['signature']?>';

			//weixinopnjssdk.title=$('title').text();
			// weixinopnjssdk.desc="收藏级文化白酒优选商城";
			weixinopnjssdk.title = '转发积酒票，千元名酒百元得！' + "\r\n" + '看你好友多不多！';
			weixinopnjssdk.desc = "即日起向好友推荐八窖酒库，可获得“八窖酒票”奖励。";
			weixinopnjssdk.link = "<?php echo 'http://'.$_SERVER['HTTP_HOST'].'/mobile/index.php?'.'&num='.$num?>";
			<?php ?>
				weixinopnjssdk.imgUrl="<?php echo 'http://'.$_SERVER['HTTP_HOST'].'/image/catalog/demo/manufacturer/newlogo.png'; ?>";

			weixinopnjssdk.ready(function () {
				/*获取“分享给朋友”按钮点击状态及自定义分享内容接口*/
				weixinopnjssdk.onMenuShareAppMessage();
				/*获取“分享到朋友圈”按钮点击状态及自定义分享内容接口*/
				weixinopnjssdk.onMenuShareTimeline();

			});
		});

</script>
<?php endif;?>

<script type="text/javascript">
	<!--
		$('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
			$.ajax({
				url: 'index.php?route=product/product/getRecurringDescription',
				type: 'post',
				data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
				dataType: 'json',
				beforeSend: function () {
					$('#recurring-description').html('');
				},
				success: function (json) {
					$('.alert, .text-danger').remove();

					if (json['success']) {
						$('#recurring-description').html(json['success']);
					}
				}
			});
		});

</script>
<?php if(!empty($openmenuwxmsg)): ?>
<script type="text/javascript">
	<!--
		$('openmenuwxmsg_div').show();
	    $('.openmenuwxmsg_div').on('click', function () {

        $.post('http://cart.jlwhjl.com/mobile/index.php?route=common/home/openmenuwxmsg',{ 'state': 'off' },function(p){
            if(p===true){
                $('.openmenuwxmsg_div').hide();
            }
        },'json');
	});
	-->

</script>


<?php endif?>

</html>