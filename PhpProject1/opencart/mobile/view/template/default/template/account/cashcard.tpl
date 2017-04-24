<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/> 
        <title>八窖酒库</title> 
        <style>
            .main{
                text-align: center;
            }
            .main span{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <div class="main"></div>
        <script>
            var startTime = <?php echo $startTime;?>;
        var overTime =<?php echo $overTime;?>;
        
        var Q_html = [];
        Q_html.query = function(code){
                    return document.querySelector(code);
        }
        Q_html.modle = function(htmtag){
                    return document.createElement(htmtag);
                }
            
        var jx= 0;
    var O_main = Q_html.query('.main');
        var O_body = Q_html.query('body');
            var O_html = Q_html.query('html');
        
        O_main.style.width=O_html.style.width=O_body.style.width='100%';
        O_main.style.height=O_html.style.height=O_body.style.height='100%';
                    O_main.style.margin=O_html.style.margin=O_body.style.margin=0;
                    O_main.style.padding=O_html.style.padding=O_body.style.padding=0;
        
        var O_span = Q_html.modle('span');
            O_main.appendChild(O_span);

        var timestamp = Date.parse(new Date());
        var dates = new Date();
        var y = dates.getFullYear();
                    var m = dates.getMonth();
                    var d = dates.getDate();
                    var h = startTime;
                    var mm =0;
                    var s = 0;

        var sjc =parseInt(new Date(y,m,d,h,mm,s).valueOf());
        sjc+= (parseInt(dates.getHours())>overTime && !parseInt(dates.getHours())==0)?24*60*60*1000:0;
        AfterTime = new Date(sjc);
        
        var jp = function(){

                    jx++;
            if (parseInt(dates.getHours()) >= startTime && parseInt(dates.getHours()) < overTime){
            //O_span.innerText = "抢钱了";
            location.href = 'index.php?route=account/mt';
        }
        else
        {
                    LeaveTime = AfterTime - new Date();
            LeaveDays = Math.floor(LeaveTime / (1000 * 60 * 60 * 24)); //天  
            LeaveHours = Math.floor(LeaveTime / (1000 * 60 * 60) % 24); //时  
            LeaveMinutes = Math.floor(LeaveTime / (1000 * 60) % 60); //分  
            LeaveSeconds = Math.floor(LeaveTime / 1000 % 60); //秒  
            var c = new Date();
            var q = c.getMilliseconds();
            if (q < 10)
            {
            q = "00" + c.getMilliseconds();
            }  
            if(q>=10 && q<100)
            {
                    q = "0" + c.getMilliseconds();
            }
            if(LeaveDays>=0 && LeaveHours>=0 &&  LeaveMinutes>=0 && LeaveSeconds>=0 && q>0){
            O_span.innerHTML = "距离开抢还有<font color=red>" + LeaveDays + "</font>天<font color=red>" + LeaveHours + "</font>时<font color=red>" + LeaveMinutes + "</font>分<font color=red>" + LeaveSeconds + "</font>秒<font color=red>" + q + "</font>毫秒";
            } 
            else{
                    //O_span.innerText = "抢钱了";
                    location.href = 'index.php?route=account/mt';
            } 
            }
            setTimeout(jp,100);
                    };
            jp();
            
            </script>
    </body>
</html>