
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <style>

            span {
                display: inline-block;
            }

            input{
                display: inline-block;
            }
            .showtime{
                display: none;
            }

        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

        <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="main">
            <div class="content">
                <div class='telephone'>
                    <input type="text" name="telephone"  placeholder='请输入手机号' id="input-telephone"  />
                </div>
                <div>
                    <input type="text" name="yzm"  placeholder='请输入手机验证码' id="input-yzm"  />
                    <span  class="Telz">获取验证码</span><span class='showtime'></span>
                </div>       
                <div class='sub'>
                    <input type="submit" id="gotoreg"  value="继续"/>
                </div>
            </div>
        </div>
    </body>
    <script src="//cdn.bootcss.com/move.js/0.5.0/move.js"></script>
    <script type="text/javascript">
        var t, timeout;
        var setTimeouts = function () {
            t++;
            var startTime = 180;
            if (t > startTime) {
                $('.Telz').show();
                $('.showtime').hide();
                clearTimeout(timeout);
                return false;
            }
            $('.showtime').text(startTime - t);
            timeout = setTimeout(setTimeouts, 1000);
        };
        $(function () {
            $('.Telz').bind('click', function () {
                t = 0;

                $.ajax({
                    type: 'POST',
                    url: "index.php?route=account/mobile/sms",
                    data: 'telephone=' + $('#input-telephone').val(),
                    dataType: 'json',
                    success: function (info) {
                        if (info.err !== true) {
                            $('.Telz').hide();
                            $('.showtime').show();
                            setTimeouts();
                        } else
                        {
                            $('#input-telephone').after('<span>' + info.errmsg + '</span>');
                        }
                    }});

            });

            $("#input-telephone").on('click', function () {
                $(this).next('span').empty();
            });

            $('#gotoreg').on('click', function () {
                $.ajax({
                    type: 'POST',
                    url: "index.php?route=account/mobile/updateSms",
                    data: 'yzm=' + $('#input-yzm').val(),
                    dataType: 'json',
                    success: function (info) {
                        alert(info);
                       // location.href = 'index.php?route=account/register';
                    }
                });
            });

        });
    </script>
</html>