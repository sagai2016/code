<html>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>八窖酒库｜用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="view/stylesheet/stylesheet.css" rel="stylesheet">
    <link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
    <script src="view/javascript/common.js" type="text/javascript"></script>
    <script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
    <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <style>
        .container {
            text-align: center;
        }
        .nav-tabs{
            margin-bottom: 0px;
        }
        .tab-content{
            border: 1px solid #ddd;
            padding: 10px;
        }
        #input-captcha{
            width: 40% !important;
        }
        #yzm img{
            float: left !important;
            margin-left: 2%;
        }
        .btn{
            border: none;
            color: #ffffff;
            background-color: #0080FF;;
            margin-top: 20px;
            width: 48%;
            font-size: 16px;
        }
        .buttons{
            margin-top: 50px;
        }
        .home{
            width: 48%;
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
        a{
            text-decoration: none;
        }
        a:link { 
            text-decoration: none; 
        } 
        a:visited { 
            text-decoration: none; 
        } 
    </style>
    <body>
        <div class="container">
            <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
            <?php } ?>
            <div class="row">
                <?php $class = 'col-sm-12'; ?>
                <div id="content" <?php echo 'class="'.$class.'"'; ?>><?php echo $content_top; ?>
                     <h2><?php echo $heading_title; ?></h2>
                    <div class="round">
                        <form action="index.php?route=account/register" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <ul class="nav nav-tabs">
                                <li <?php if ($registertype == 'email') { ?> class="active" <?php } ?> ><a href="#tab-email" data-toggle="tab" onClick="setEmailRegister()"><?php echo $tab_email_register; ?></a>
                                    <input id="email-register" class="hidden" type="radio" name="registertype" <?php if ($registertype == 'email') { ?>  checked="checked" <?php } ?>  value="email">
                                </li>
                                <li <?php if ($registertype == 'mobile') { ?> class="active" <?php } ?> ><a href="#tab-mobile" data-toggle="tab" onClick="setMobileRegister()"><?php echo $tab_mobile_register; ?></a>
                                    <input id="mobile-register" class="hidden" type="radio" name="registertype" <?php if ($registertype == 'mobile') { ?>  checked="checked" <?php } ?> value="mobile">
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane <?php if ($registertype == 'email') { ?> active <?php } ?> " id="tab-email">

                                    <div class="form-group required">
                                        <div class="col-sm-10">
                                            <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                            <?php if ($error_email) { ?>
                                            <div class="text-danger"><?php echo $error_email; ?></div>
                                            <?php } ?>
                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane <?php if ($registertype == 'mobile') { ?> active <?php } ?> " id="tab-mobile">
                                    <div class="form-group required">
                                        <div class="col-sm-10">
                                            <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />

                                            <?php if($sms_gateway) { ?>
                                            <br />
                                            <input type="button" class="btn btn-long" id="mobile_code" value="<?php echo $text_get_sms_code; ?>" />
                                            <?php } ?>

                                            <?php if ($error_telephone) { ?>
                                            <div class="text-danger"><?php echo $error_telephone; ?></div>
                                            <?php } ?>
                                        </div>
                                    </div>



                                    <?php if($sms_gateway) { ?>

                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-sms"><?php echo $entry_sms_code; ?></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="sms_code" value="<?php echo $sms_code; ?>" placeholder="<?php echo $entry_sms_code; ?>" id="input-sms-code" class="form-control" />
                                            <?php if ($error_sms_code) { ?>
                                            <div class="text-danger"><?php echo $error_sms_code; ?></div>
                                            <?php } ?>
                                        </div>
                                    </div>

                                    <?php } ?>

                                </div>

                                <div class="form-group required"  <?php echo 'style="display:'.(count($customer_groups) > 1 ? 'block' : 'none').'"'; ?>;>
                                     <label class="col-sm-2 control-label"><?php echo $entry_customer_group; ?></label>
                                    <div class="col-sm-10">
                                        <?php foreach ($customer_groups as $customer_group) { ?>
                                        <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                                <?php echo $customer_group['name']; ?></label>
                                        </div>
                                        <?php } else { ?>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                                                <?php echo $customer_group['name']; ?></label>
                                        </div>
                                        <?php } ?>
                                        <?php } ?>
                                    </div>
                                </div>

                                <?php foreach ($custom_fields as $custom_field) { ?>
                                <?php if ($custom_field['location'] == 'account') { ?>
                                <?php if ($custom_field['type'] == 'select') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                                            <option value=""><?php echo $text_select; ?></option>
                                            <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
                                            <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } else { ?>
                                            <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } ?>
                                            <?php } ?>
                                        </select>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'radio') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <div>
                                            <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="radio">
                                                <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
                                                <label>
                                                    <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                    <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                <label>
                                                    <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                    <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                            <?php } ?>
                                        </div>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'checkbox') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <div>
                                            <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="checkbox">
                                                <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $register_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <label>
                                                    <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                    <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                <label>
                                                    <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                    <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                            <?php } ?>
                                        </div>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'text') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'textarea') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'file') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                        <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'date') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <div class="input-group date">
                                            <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                            </span></div>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'time') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <div class="input-group time">
                                            <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                            </span></div>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if ($custom_field['type'] == 'datetime') { ?>
                                <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <div class="input-group datetime">
                                            <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                            </span></div>
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php } ?>
                                <?php } ?>

                                <div class="form-group required">
                                    <div class="col-sm-10">
                                        <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                        <?php if ($error_password) { ?>
                                        <div class="text-danger"><?php echo $error_password; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-10">
                                        <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
                                        <?php if ($error_confirm) { ?>
                                        <div class="text-danger"><?php echo $error_confirm; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>

                                <?php echo $captcha; ?>


                            </div>

                            <?php if ($text_agree) { ?>
                            <div class="buttons">
                                <div>
                                    <?php echo $text_agree; ?>
                                    <?php if ($agree) { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                    <?php } else { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                    <?php } ?>
                                    &nbsp;
                                    <div>
                                        <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                                        <a class="home" href="index.php?route=account/login">返回登录</a>
                                    </div>

                                </div>
                                <?php } else { ?>
                                <div>
                                    <div>
                                        <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <?php if(!empty($_SESSION['signPackage'])):?>
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
        <script src="view/javascript/weixinopnjssdk.js"></script>
        <script type="text/javascript">
        $(function(){
                weixinopnjssdk.appId='<?php echo $_SESSION['signPackage']['appId']?>';
                weixinopnjssdk.timestamp='<?php echo $_SESSION['signPackage']['timestamp']?>';
                weixinopnjssdk.nonceStr='<?php echo $_SESSION['signPackage']['nonceStr']?>';
                weixinopnjssdk.signature='<?php echo $_SESSION['signPackage']['signature']?>';
                
                weixinopnjssdk.ready(function(){
                wx.hideOptionMenu();
                });
            });
        </script>
        <?php endif;?>
        <script type="text/javascript"><!--

            function setEmailRegister() {
                $('input:radio[name=registertype][value=email]').click();
            }

            function setMobileRegister() {
                $('input:radio[name=registertype][value=mobile]').click();
            }

            //--></script>

        <script type="text/javascript"><!--
        // Sort the custom fields
            $('#account .form-group[data-sort]').detach().each(function () {
                if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
                    $('#account .form-group').eq($(this).attr('data-sort')).before(this);
                }

                if ($(this).attr('data-sort') > $('#account .form-group').length) {
                    $('#account .form-group:last').after(this);
                }

                if ($(this).attr('data-sort') == $('#account .form-group').length) {
                    $('#account .form-group:last').after(this);
                }

                if ($(this).attr('data-sort') < -$('#account .form-group').length) {
                    $('#account .form-group:first').before(this);
                }
            });

            $('#address .form-group[data-sort]').detach().each(function () {
                if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
                    $('#address .form-group').eq($(this).attr('data-sort')).before(this);
                }

                if ($(this).attr('data-sort') > $('#address .form-group').length) {
                    $('#address .form-group:last').after(this);
                }

                if ($(this).attr('data-sort') == $('#address .form-group').length) {
                    $('#address .form-group:last').after(this);
                }

                if ($(this).attr('data-sort') < -$('#address .form-group').length) {
                    $('#address .form-group:first').before(this);
                }
            });

            $('input[name=\'customer_group_id\']').on('change', function () {
                $.ajax({
                    url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,
                    dataType: 'json',
                    success: function (json) {
                        $('.custom-field').hide();
                        $('.custom-field').removeClass('required');

                        for (i = 0; i < json.length; i++) {
                            custom_field = json[i];

                            $('#custom-field' + custom_field['custom_field_id']).show();

                            if (custom_field['required']) {
                                $('#custom-field' + custom_field['custom_field_id']).addClass('required');
                            }
                        }


                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            });

            $('input[name=\'customer_group_id\']:checked').trigger('change');
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

            $('.time').datetimepicker({
                pickDate: false
            });

            $('.datetime').datetimepicker({
                pickDate: true,
                pickTime: true
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
