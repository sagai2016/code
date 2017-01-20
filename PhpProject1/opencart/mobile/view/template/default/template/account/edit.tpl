<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库｜个人资料修改</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
        <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
        <script src="view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <style>
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
                margin: auto;
            }
            .container{
                max-width: 750px;
                margin: auto;
            }

            .top a i
            {
                color: #9b9b9b;
                font-size: 16px;
            }
            .top {
                position: fixed;
                background: #262424;
                height: 38px;
                padding: 6px;
                width: 100%;
                max-width: 750px;
                line-height: 30px;
                position: fixed;
                z-index: 999;
            }
            .top img {
                display: inline-block;
                height: 100%;
            }

            .bootm{
                height: 50px;
                font-size: 50px;
                line-height: 50px;
            }
            .main{
                margin: auto;
                margin: auto;
                padding: 2%;
            }
            .main form{
                padding: 2%;
                border: solid 1px #e5e5e5;
                border-radius: 3px;
                background-color: #ffffff;
                padding-top: 0;
                min-height: 345px;
            }
            .main form .two{
                margin-bottom: 20px;
            }
            .header{
                text-align: center;
                width: 100%;
                height: 26px;
                line-height: 26px;
                font-size: 20px;
                margin-top: 13px;
                margin-bottom: 0px;
            }
            .name,.email,.tel{
                display: inline-block;
                width: 100%;
                text-align: center;
                padding: 2%;
                padding-left: 0;
                padding-top: 3%;
                padding-bottom: 3%;
            }
            .name div,.email div,.tel div{
                width: 70%;
                display: inline-block;
            }
            .name label,.email label,.tel label{
                font-size: 12px;
                padding: 0;
                display: inline-block;
                width: 25%;
                letter-spacing: 1px;
                text-align: right;
            }
            .name label i,.email label i,.tel label i{
                color: red;
                padding: 7px;
                padding-left: 0;
                margin: auto;
                font-size: 12px;
            }
            .name input,.email input,.tel input{
                padding: 8px;
                border: #e5e5e5 0.1px solid;
                width: 100%; 
                border-radius: 3px;
                font-size: 12px;
                letter-spacing: 1px;
            }
            .back,.sub{
                width: 48%;
                color: #ffffff;
                display: inline-block;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
            }
            .back a{
                width: 70%;
                color: #ffffff;
                background-color: #0080FF;
                margin-top: 20px;
                box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                display: inline-block;
                padding: 8px 12px;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
                border: 1px solid transparent;
                border-radius: 4px;
            }
            .sub input{
                width: 70%;
                color: #ffffff;
                background-color: #0080FF;
                margin-top: 20px;
                box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                display: inline-block;
                padding: 8px 12px;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
                border: 1px solid transparent;
                border-radius: 4px;
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
            input:-webkit-autofill { 
                -webkit-box-shadow: 0 0 0px 1000px white inset; 
            } 
            a:link { 
                text-decoration: none; 
            } 
            a:visited { 
                text-decoration: none; 
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="top">
                <a href="index.php?route=account/customer"><i class="fa fa-chevron-left"></i></a>
                <!--<span class=""> 
                    <a class="gzc" href="index.php?route=account/wishlist">分享美酒</a>
                    <a type="button" title="收藏" onclick="wishlist.add('137');">收藏美酒</a>
                </span>-->
            </div>
            <div class="bootm"></div>
            <div class='main'>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" >
                    <p class="header">个人资料修改</p>
                    <div class='name'>
                        <label><?php echo $entry_fullname; ?> <i>*</i></label>
                        <div>
                            <input onfocus="change(this)"  type="text" name="fullname" value="<?php echo $fullname; ?>" placeholder="<?php echo $entry_fullname; ?>" id="input-fullname" />
                            <?php if ($error_fullname) { ?>
                            <div class="text-danger"><?php echo $error_fullname; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class='email'>
                        <label><?php echo $entry_email; ?><i>*</i> </label>
                        <div>
                            <input onfocus="change(this)"  type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" />
                            <?php if ($error_email) { ?>
                            <div class="text-danger"><?php echo $error_email; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <!--<div class='tel'>
                        <label><?php echo $entry_telephone; ?> <i>*</i></label>
                        <div>
                            <input onfocus="change(this)"  type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" />
                            <?php if($sms_gateway) { ?>
                            <br />
                            <input type="button" class="btn btn-long" id="mobile_code" value="<?php echo $text_get_sms_code; ?>" />
                            <?php } ?>
                            <?php if ($error_telephone) { ?>
                            <div class="text-danger"><?php echo $error_telephone; ?></div>
                            <?php } ?>
                        </div>
                    </div>-->
                    <div class="two">
                        <div class="back"><a href="<?php echo $back; ?>" ><?php echo $button_back; ?></a></div>
                        <div class="sub">
                            <input type="submit" value="<?php echo $button_continue; ?>"  />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="foot">
            <ul>
                <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
                <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
                <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
                <li> <a href="index.php?route=account/login">用户中心</a> </li>
            </ul>
        </div>
        <script>
            function change(a) {
                $(a).css({'border-color':''}).blur(function () {
                    $(a).css("border-color", "");
                })
            }
        </script>
        <script type="text/javascript"><!--
// Sort the custom fields
                    $('.form-group[data-sort]').detach().each(function () {
                        if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('.form-group').length) {
                            $('.form-group').eq($(this).attr('data-sort')).before(this);
                        }

                        if ($(this).attr('data-sort') > $('.form-group').length) {
                            $('.form-group:last').after(this);
                        }

                        if ($(this).attr('data-sort') == $('.form-group').length) {
                            $('.form-group:last').after(this);
                        }

                        if ($(this).attr('data-sort') < -$('.form-group').length) {
                            $('.form-group:first').before(this);
                        }
                    });
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
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
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $(node).parent().find('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').val(json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
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
//--></script>

<?php if($sms_gateway) { ?>
<script type="text/javascript"><!--
$('#mobile_code').on('click', function () {
        $.ajax({
            url: 'index.php?route=extension/sms/<?php echo $sms_gateway; ?>/create_mobile_code',
            type: 'post',
            dataType: 'json',
            data: 'telephone=' + encodeURIComponent($('input[name=\'telephone\']').val()),
            beforeSend: function () {
                $('.alert-success, .alert-danger').remove();
                $('#mobile_code').attr('disabled', true);

            },
            complete: function () {
                //$('#mobile_code').attr('disabled', false);
                //$('.attention').remove();
            },
            success: function (data) {
                if (data['error']) {
                    $('#mobile_code').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + data['error'] + '</div>');
                    $('#mobile_code').attr('disabled', false);
                }

                if (data['success']) {
                    $('#mobile_code').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + data['success'] + '</div>');

                    setTimeout(function () {
                        $('#mobile_code').attr('disabled', false);
                    }, 60000);

                }
            }
        });
    });

//--></script> 
<?php } ?>
    </body>
</html>

