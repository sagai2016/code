<?php
require_once "test/jssdk.php";
$jssdk = new JSSDK("wxc067b3c9618e913c", "34a76ef2cb2cb56289a3c27b3fccf9bd");
$signPackage = $jssdk->GetSignPackage();
?>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
  wx.config({
    debug: false,
    appId: '<?php echo $signPackage["appId"];?>',
    timestamp: <?php echo $signPackage["timestamp"];?>,
    nonceStr: '<?php echo $signPackage["nonceStr"];?>',
    signature: '<?php echo $signPackage["signature"];?>',
    jsApiList: [
      // 所有要调用的 API 都要加到这个列表中
       'checkJsApi',
        'onMenuShareTimeline',
        'onMenuShareAppMessage',
        'onMenuShareQQ',
        'onMenuShareWeibo',
        'onMenuShareQZone',
        'hideMenuItems',
        'showMenuItems',
        'hideAllNonBaseMenuItem',
        'showAllNonBaseMenuItem',
        'translateVoice',
        'startRecord',
        'stopRecord',
        'onVoiceRecordEnd',
        'playVoice',
        'onVoicePlayEnd',
        'pauseVoice',
        'stopVoice',
        'uploadVoice',
        'downloadVoice',
        'chooseImage',
        'previewImage',
        'uploadImage',
        'downloadImage',
        'getNetworkType',
        'openLocation',
        'getLocation',
        'hideOptionMenu',
        'showOptionMenu',
        'closeWindow',
        'scanQRCode',
        'chooseWXPay',
        'openProductSpecificView',
        'addCard',
        'chooseCard',
        'openCard'
    ]
  });
wx.ready(function () {
  wx.previewImage({
  current: 'http://www.baidu.com', // 当前显示图片的http链接
    urls: ['http://cart.jlwhjl.com/image/catalog/QRcode.jpg','http://cart.jlwhjl.com/image/catalog/QRcode.jpg'] // 需要预览的图片http链接列表
   });

  wx.onMenuShareAppMessage({
      title: 'test',
      desc: '老来分享个子',
      link: 'http://www.baidu.com',
      imgUrl: 'http://cart.jlwhjl.com/image/catalog/QRcode.jpg',
      trigger: function (res) {
        // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
        alert('用户点击发送给朋友');
      },
      success: function (res) {
        alert('已分享');
      },
      cancel: function (res) {
        alert('已取消');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });

  wx.onMenuShareTimeline({
     title: 'test',
      desc: '老来分享个子',
      link: 'http://www.baidu.com',
      imgUrl: 'http://cart.jlwhjl.com/image/catalog/QRcode.jpg',
      trigger: function (res) {
        // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
        alert('用户点击分享到朋友圈');
      },
      success: function (res) {
        alert('已分享');
      },
      cancel: function (res) {
        alert('已取消');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });

});

</script>
</html>
