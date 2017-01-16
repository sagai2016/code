<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>八窖酒库</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
        <script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="view/stylesheet/stylesheet.css" rel="stylesheet">
        <script src="view/javascript/common.js" type="text/javascript"></script>
        <script src="view/javascript/o-script.js" type="text/javascript"></script>
    </head>
    <style>
        {*        h3{
        text-align: center;
        margin-bottom: 30px;
        }
        .em input{
        padding:15px;
        border:#DDDDDD 1px solid;
        width: 70%;
        border-radius: 3px;
        height: 25px;
        line-height: 25px;
        letter-spacing:1px;
        }
        p,form{
        text-align: center;
        margin-bottom: 30px;
        }
        p{
        padding: 5px 20px ;
        }

        .sub input{
        font-size: 16px;
        padding:7px;
        background-color: #0080FF;
        width: 50%;
        border-radius: 5px;
        margin-top: 30px;
        color:white;
        border: none;
        }
        .back{
        text-align: center;
        margin-top: 30px;
        }
        .back a{
        width: 50%;
        font-size: 16px;
        padding:9px 60px;
        background-color: #0080FF;
        border-radius: 5px;
        margin-top: 30px;
        color:white;
        }*}

        *{
            outline: none;
        }
        .main{
            max-width: 750px;
            margin:20% auto ;
        }
        .main strong{
            font-size: 25px;
            display: inline-block;
            width: 100%;
            /* padding: 20px; */
            text-align: center;
            line-height: 47px;

        }
        .main span{
            width: 100%;
            display: inline-block;
            line-height: 23px;
            padding: 10px 20px;
        }
        .main form p{
            display: block;
            margin: 20px auto;
            width: 95%;
            text-align: center;

        }
        .main form p input{
            border: 1px solid #e4e4e4;
            width: 100%;
            line-height: 33px;
            padding:0 15px;
        }
        .main form p a,
        .main form p button
        {
            font-size: 14px;
            background-color: #0080FF;
            border: none;
            line-height: 33px;
            display: inline-block;
            width:150px;
            border-radius:3px;
            color:#fff;
        }
    </style>
    <body>
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
        <?php } ?>
        <div class="main">
            <strong><?php echo $heading_title; ?></strong>
            <span><?php echo $text_email; ?></span>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <p><input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email"/></p>
                <p>
                    <a href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
                    <button><?php echo $button_continue; ?></button>
                </p>
            </form>
        </div>


    </body>
</html>