<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <link href="../catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <style>
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                background: #f8f8f8;
            }
            * {
                box-sizing: border-box;
                list-style: none;
            }
            .main {
                max-width: 750px;
                width: 100%;
                display: block;
                margin: auto;
            }

            .header .top {
                position: fixed;
                background: #262424;
                height: 38px;
                padding: 6px;
                width: 750px;
                line-height: 26px;
                z-index: 999;
            }

            .header  .top a{
                color: #9c9ba0;
                padding: 0 5px;
            }
            .main .bootm {
                display: inline-block;
            }
            .main .content{
                padding: 2%;
                margin: auto;
                max-width: 750px;
                width:100%;

                text-align: center;
            }
            .main .content p{
                text-align: center;
                width: 100%;
                height: 26px;
                line-height: 26px;
                font-size: 26px;
            }
            .main .content form{
                border: #ccc 1px solid;
                padding: 5% 2%;
                background:#FFFFFF;
            }
            .password, .confirm{
                display: inline-block;
                width: 100%;
                margin-bottom: 30px;
                height: 25px;
                line-height: 25px;
                text-align: center;
                    padding: 2%;
            }
            .password input,.confirm input{
                outline: none;
                padding:15px;
                border:#ccc 1px solid;
                width: 100%;
                border-radius: 3px;
                height: 25px;
                line-height: 25px;
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
            #sub div,#sub button{
                border: none;
                font-size: 16px;
                padding:7px;
                background-color: #0080FF;
                width: 49%;
                border-radius: 5px;
                margin-top: 30px;
                color:white;
                display: inline-block;
            }
            #sub div a{
                color:white;
            }
            .text-danger{
                color:#f00;
                padding: 1%;
            }
        </style>
    </head>
    <body
        <div class="main">
            <div class="header">
                <div class="top">
                    <a href="index.php?route=account/login"><i class="fa fa-chevron-left"></i></a>
                </div>
                <p class="bootm"></p>
            </div>
            <div class="content">
                <p><?php echo $heading_title; ?></p>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <div class="password">
                        <input type="password" placeholder='请输入新的密码' name="password" value="<?php echo $password; ?>" id="input-password" />
                        <?php if ($error_password) { ?>
                        <div class="text-danger"><?php echo $error_password; ?></div>
                        <?php } ?>
                    </div>
                    <div class="confirm">
                        <input type="password" placeholder='请再次输入新的密码' name="confirm" value="<?php echo $confirm; ?>" id="input-confirm"/>
                        <?php if ($error_confirm) { ?>
                        <div class="text-danger"><?php echo $error_confirm; ?></div>
                        <?php } ?>
                    </div>
                    <div class="buttons clearfix" id='sub'>
                        <div><a href="<?php echo $back; ?>"><?php echo $button_back; ?></a></div>
                        <button type="submit"><?php echo $button_continue; ?></button>
                    </div>
                </form>
            </div>
        </div>


    </body>
</html>