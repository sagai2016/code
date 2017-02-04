/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* global wx */

var weixinopnjssdk = function () {};

weixinopnjssdk.appId = '';
weixinopnjssdk.timestamp = '';
weixinopnjssdk.nonceStr = '';
weixinopnjssdk.signature = '';

/**
 * 标题
 * @type String
 */
weixinopnjssdk.title = '';
/**
 * 描述
 * @type String
 */
weixinopnjssdk.desc = '';
/**
 * 链接
 * @type String
 */
weixinopnjssdk.link = '';
/**
 * 链接地址
 * @type String
 */
weixinopnjssdk.imgUrl = '';

/**
 * 二维码图片
 * @type String
 */
weixinopnjssdk.QRCode=[];

weixinopnjssdk.jsApiList = ['checkJsApi',
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
    'openCard'];

/**
 * 微信js jdk 配置
 * @returns {undefined}
 */
weixinopnjssdk.config = function () {
    wx.config({
        debug: false,
        appId: this.appId,
        timestamp: this.timestamp,
        nonceStr: this.nonceStr,
        signature: this.signature,
        jsApiList: this.jsApiList
    });
};
/**
 * 微信js jdk 装载
 * @param {type} callback
 * @returns {undefined}
 */
weixinopnjssdk.ready = function (callback) {
    this.config();
    wx.ready(callback);
};

/**
 * 获取“分享给朋友”按钮点击状态及自定义分享内容接口
 * @returns {undefined}
 */
weixinopnjssdk.onMenuShareAppMessage = function () {
    var _title = this.title;
    var _desc = this.desc;
    var _link = this.link;
    var _imgUrl = this.imgUrl;
    wx.onMenuShareAppMessage({
        title: _title,
        desc: _desc,
        link: _link,
        imgUrl: _imgUrl
    });
};
/**
 * 获取“分享到朋友圈”按钮点击状态及自定义分享内容接口
 * @returns {undefined}
 */
weixinopnjssdk.onMenuShareTimeline = function () {
    var _title = this.title;
    var _link = this.link;
    var _imgUrl = this.imgUrl;
    wx.onMenuShareTimeline({
        title: _title,
        link: _link,
        imgUrl: _imgUrl
    });
};
/**
 * 图片QRcode
 * @returns {undefined}
 */
weixinopnjssdk.previewImage = function () {
    var _QRCode = this.QRCode;
    wx.previewImage({
        urls: _QRCode
    });
};


