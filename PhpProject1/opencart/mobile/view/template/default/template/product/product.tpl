<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>八窖酒库｜<?php echo $meta_title;?></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/goodsStyle.css" />
<link rel="stylesheet" type="text/css" href="../webfile/css/stylesheet/swiper.min.css" />
<link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
<script src="../webfile/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="../webfile/css/stylesheet/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="../webfile/js/bootstrap.min.js" type="text/javascript"></script>
<link href="../webfile/css/stylesheet/stylesheet.css" rel="stylesheet">
<script src="../webfile/js/moment.js" type="text/javascript"></script>
<script src="../webfile/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="../webfile/css/stylesheet/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
<link href="../webfile/css/stylesheet/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<script src="../webfile/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="../webfile/js/common.js" type="text/javascript"></script>
<script src="../webfile/js/o-script.js"></script>
<script src="../webfile/js/jquery.flexslider.js"></script> 
<script type="text/javascript" src="../webfile/js/swiper.jquery.min.js"></script>
<script src="../webfile/js/jquery.flexslider.js"></script> 
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
img{
        border-radius: 0;
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
.top, .content, .option a{
  color: #9b9b9b;
}
.top {
        position: fixed;
        background: #262424;
        height: 38px;
        padding: 6px;
        width: 100%;
        max-width: 750px;
        line-height: 27px;
        position: fixed;
        z-index: 999;
}
.top a i {
        display: inline-block;
        height: 100%;
        color: #9b9b9b;
}
.top span {
        display: inline-block;
        float: right;
        color: #9c9ba0;
        font-size: 13px;
            
}
.top span a{
        display: inline-block;
        line-height: 14px;
        color: #9c9ba0;
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
        margin-top: 38px;
}
.content .goodsImages img {
        width: 100%;
        /*padding: 10px;*/
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
        font-size: 16px
}
.content .goodsIntroduce .price {
        color: #e17513;
        padding-bottom: 10px;
        font-size: 16px
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
        line-height: 38px;
        padding: 1% 3% .5% 5%;
        border: 1PX solid #e6e6e6;
}
.option p,.option a {
        display: inline-block;
        font-size: 16px;
}
.option span 
{
        display: inline-block;
        color: #323232;
        font-size: 12px;
        
}
.option span a
{
        font-size: 14px;
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
.option .goodhome *{
    color:#ff4344;
    font-size: 13px;
    font-weight:700;
    text-shadow: 0.1px 0.1px 0.1px #ff4344;
    
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
        background: #fff;
        width: 100%;
}
.goodsinfo p{  
    font-size: 13px;
}
.goodsinfo img{
        width: 100% !important;
}
.foot {
        width: 100%;
        display: flex;
        position: fixed;
        bottom: 0;
            z-index: 999;
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
        line-height: 38px;
        border-width: 0 1px 0 0;
        border-style: solid;
        border-color: #ccc;

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
    text-shadow: 1px 1px 1px #ddd;
    margin-top: 6px;
    width: 60%;
    text-align: center;
    margin-left: -14px;
    height: 33px;
}
.foot ul .home a{
        display: inline-block;
        width: 100%;
        font-size: 14px;
        line-height: normal;
        padding: 0;
        color: #686868;
        text-shadow: 1px 1px 1px #ddd;
}
.foot ul .home span{
    position: absolute;
    top: 3px;
    left: 40px;
    font-size: 8px;
    border-radius: 100%;
    background: #f00;
    width: 18px;
    height: 18px;
    line-height: 17px;
    color: #fff;
    text-align: center;
    }
.foot ul .addToCart {
        background: #ff8856;
}
.foot ul .addToCart span{
        font-size: 14px;
        color: #fff;
        text-shadow: 0.5px 0.5px 0.5px #ddd;
}

.foot ul .buyNow {
        background: #ff4344;
}
.foot ul .buyNow a{
    font-size: 14px;
    color: #fff;
    text-shadow: 0.5px 0.5px 0.5px #ddd;
}
@media (min-width: 500px) {
.content .goodsImages {
        height: 770px;
}
}
.main .bootm {
        height: 38px;
        font-size: 50px;
        display: inline-block;
}
	
@media (min-width: 600px) {
.content .goodsImages {
        height: 640px;
}
.content .goodsImages img{
        height: 100%;
    width: inherit;
    padding: 25px 0; 
}
}
.list-unstyled li{
        color: #e17513;
        font-size: 20px;
        padding: 1.5% 5%;
        padding-bottom: 10px;
        font-weight: bolder;
}
 .control-label{
        color: #e17513;
        font-size: 16px;
        padding: 1.5% 5%;
        padding-bottom: 10px;
        font-weight: bolder;
 }
 .description{
        color: #e17513;
        font-size: 16px;
        font-weight: bolder;    
 }
#tab-description a{
        font-size: 14px;
}
.breadcrumb,#content{
    min-height: 0;
    margin: 0;
    padding: 0;
    position: absolute;
    z-index: 9999;
    width: 100%;
    font-size: 16px;
    border: none;
}
.alert-success
{
    position: absolute;
    z-index: 9999;
    width: 100%;
    border-radius: 0px;
}
a{
    text-decoration: none;
}
.QRCode{
    text-align: right;
    max-width: 750px;
    margin: auto;
    position: absolute;
    right: -590px;
    display: none;
    padding: 50%;

}
.QRCode img{
    width: 100%;
    height: 100%;
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
<div class="breadcrumb" id="content"></div>
<div class="main">
    <div class="top">
        <a href="index.php?"><i class="fa fa-chevron-left"></i></a>
        <span class=""> 
            <a class="gzc">关注八窖</a>
            <a type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">收藏美酒</a>
        </span>
    </div>
  <div class="content">
    <ul>
      <li class="goodsImages"> 
          <ul class="swiper-container">
                <li class="swiper-wrapper">
                 <?php 
                 foreach($images as $v):
                 ?>
                         <p class="swiper-slide">
                             <img src="<?php echo $v['thumb']?>">
                         </p>
                    
                 <?php endforeach?>
                  </li>
             </ul>
            
      </li>
      <li class="goodsIntroduce">
          <p> <span class="title"><?php echo $heading_title; ?></span><span class="price"><?php echo $price; ?></span></p>

         <!--产品 start-->
          <div id="product">
            
              <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
        
          </div>
          
          <!--产品 end-->
          
          
          <!-- <span class="freight"> 运费：免运费 </span> -->
        
      </li>
    </ul>
  </div>
  
  <div class="option"> 
            <span class="icon icon-goodsshop"></span>
            <span><a href="./">八窖酒库</a></span> 
            <span class="goodhome" ><a href="index.php?route=product/categoryy">进入店铺<i class="icon-goodslefttag"></i></a></span>
  </div>
 
  <div class="goodsinfo">
  	<?php echo $description; ?>
  </div>
  <p class="bootm"> </p>
</div>
<div class="menu"> </div>
<div class="foot">
  <ul>
    <li class="home">
    	<a class="icon-goodscart" href="index.php?route=checkout/cart">
    		<span>
				<?php echo $bcount>100?'99+':$bcount;?>
			</span>
		</a>
			
	</li>  
    <li class="addToCart" id="button-cart"><span >加入购物车</span></li>
    <li class="buyNow"> <a href="index.php?route=checkout/cart">去结算</a> </li>
  </ul>
</div>
    
</body>


        <script>
            var swiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                loop: true,
                grabCursor: true,
                paginationClickable: true,
                autoplay: 5000,
                autoplayDisableOnInteraction: false
            });
        </script>
<?php if(!empty($_SESSION['signPackage'])):?>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="../webfile/js/weixinopnjssdk.js"></script>
<script type="text/javascript">
$(function(){
        weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
        weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
        weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
        weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';

        //weixinopnjssdk.title=$('title').text();

        weixinopnjssdk.desc=$('.title').text();
        weixinopnjssdk.link="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'].'&num='.$num?>";
        weixinopnjssdk.imgUrl="<?php echo 'http://'.$_SERVER['HTTP_HOST'].mb_substr($images[0]['thumb'],2); ?>";
        
        weixinopnjssdk.QRCode=<?php echo json_encode(['http://'.$_SERVER['HTTP_HOST'].'/'.'image/catalog/code.jpg']); ?>;
        

        weixinopnjssdk.ready(function(){

            /*获取“分享给朋友”按钮点击状态及自定义分享内容接口*/
            weixinopnjssdk.onMenuShareAppMessage();
            /*获取“分享到朋友圈”按钮点击状态及自定义分享内容接口*/
            weixinopnjssdk.onMenuShareTimeline();
            /*图片QRcode*/
            $(".gzc").on('click', function () {
                weixinopnjssdk.previewImage();
            });
            
        });
});
</script>
<?php endif;?>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
    
  
                                
                               
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {

			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');
                        //alert('您已将产品加入购物车');
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				console.log(json['fcount']);
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                $(".home span").text("");  
                $(".home span").text(json['fcount']>=100?99:json['fcount']);              
				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
</html>
