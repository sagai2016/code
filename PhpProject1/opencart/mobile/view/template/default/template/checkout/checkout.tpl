<!doctype html>
<html lang="en">
<header>
<meta charset="UTF-8">
<title>八窖酒库｜结算</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="view/javascript/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="view/javascript/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<link href="view/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="view/stylesheet/stylesheet.css" rel="stylesheet">
<script src="view/javascript/jquery/jquery.flexslider.js"></script> 
<script src="view/javascript/o-script.js"></script>
<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"type="text/javascript"></script>
<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/goodsStyle.css" />
</header>
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
    dd,
    p {
        margin: 0;
        padding: 0;
        list-style: none;
        border: 0;
    }
    
    body,
    html {
        margin: 0;
        padding: 0;
        background: #f8f8f8;
    }
    
    * {
        box-sizing: border-box;
        color: #2c2c2c;
    }
    
    .main {
        max-width: 750px;
        width: 100%;
        display: block;
        margin: auto;
    }
    
    .top * {
        color: #787878;
        font-size: 15.5px;
        font-weight: 300;
    }
    
    .top {
        width: 100%;
        display: flex;
        position: fixed;
        top: 0;
    }
    
    .top .link {
        display: inline-flex;
        justify-content: space-between;
        width: 100%;
        background: rgba(255, 255, 255, .98);
    }
    
    .top .link li {
        width: 100%;
        text-align: center;
        line-height: 38px;
        border-bottom: 1px solid #e6e6e6;
    }
    
    .top .link .linkmain {
        border-bottom: 1px solid #ff2e00;
        color: #ff2e00;
    }
    .main .container{
      width: 100%;
      max-width: 750px;
    }
    .main .goodslist {
        width: 100%;
        font-size: 0;
    }
    
    .main .goodsCart {
        font-size: 0;
        width: 100%;
        padding: 1.5% 2.5%;
        /* background: #fff; */
        /* border: 1px #e5e5e5 solid; */
        margin-top: 10px;
    }
    
    .main .goodsHomeTitle {
        font-size: 0;
        width: 100%;
        padding: 2.5%;
        border: 1px #e5e5e5 solid;
        background: #fff;
    }
    
    .main .goodsHomeTitle li {
        font-size: 20px;
        vertical-align: middle;
        color: #909090;
        display: inline-block;
    }
    
    .main .goodsHomeTitle li.title {
        font-size: 16px;
        padding: 0 10px;
    }
    
    .main .goodsHomeTitle li:nth-of-type(3) {
        float: right;
    }
    /**/
    
    .main .goodsCart ul,
    .main .goodsCart ul li,
    .main .goodsCart ul li hgroup {
        width: 100%;
        background: #f8f8f8;
    }
    
    .main .goodsCart ul li hgroup {
        margin: 10px 0;
        background: #fff;
    }
    
    .main .goodsCart ul li hgroup h2 {
        border: 1px solid #ccc;
        width: 100%;
        line-height: 38px;
        font-size: 14px;
        display: inline-block;
        padding: 0 10px;
    }
    
    .main .goodsCart ul li hgroup .content {
        width: 100%;
        font-size: 12px;
        border-color: #ccc;
        border-width: 0 1px 1px 1px;
        border-style: solid;
        padding: 10px;
        display: none;
    }

    .button-account{
            color: #ffffff;
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            background-color: #c82222;
            background-image: linear-gradient(to bottom, #d12323, #bb1f1f);
            background-repeat: repeat-x;
            border-color: #bb1f1f #bb1f1f #7a1414;

                padding: 7.5px 12px;
    font-size: 12px;
    border: 1px solid #cccccc;
    border-radius: 4px;
    box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
    vertical-align: bottom;
    }
    /**/
    
    .main .bootm {
        height: 50px;
        font-size: 50px;
        display: inline-block;
    }
    
   .foot {
        width: 100%;
        display: flex;
        position: fixed;
        bottom: 0;
        z-index: 999;
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
        font-size: 12px;
    }
    .foot ul li a{
        letter-spacing:1.5px;
        font-size: 14px;
        text-shadow: 1px 1px 1px #ddd;
    }
    .foot ul .home {
        letter-spacing:1.5px;
        width: 150px;
        text-shadow: 1px 1px 1px #ddd;
    }
    .foot ul .home .icon-goodshome{
        vertical-align: middle;
        font-size: 18px;
        text-shadow: 1px 1px 1px #ddd;
    }
    
    a{
        text-decoration: none;
    }
    #button-login{
        width:74px;
    }
    #button-account{
        line-height:normal;
    }
    .btn-primary{
    margin-top:0;
        }
        .form-group p{
                padding-top: 20px;
        }
    .info{
        display: none;
        position: fixed;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: scroll;
        background: #000;
    }
    .info p{
        position: absolute;
        overflow: scroll;
        height: 85%;
        margin: 10px;
        background:#fff;
        padding: 10px ;
        padding-bottom: 150px;
        display: inline-block;
    }
    .info header{
        color: #fff;
        width: 100%;
        height:50px;
        line-height: 50px;
        padding: 0 10px;
        display: inline-block;
        text-align: center;
        font-size: 16px;
        font-weight: bolder;
        background: #000;
    }

    .info header .colse{
        float: left;
        color: #fff

    }

   /*collapse-checkout-confirm .panel-body .table-responsive .table tbody tr .text-left{
        background-color:red;
        max-width: 41px;
    }
    #collapse-checkout-confirm .panel-body .table-responsive .table tbody tr .text-left:first-child{
        background-color:yellow;
        max-width: 41px;
    }*/
    @media (max-width: 500px) {}
    
    @media (min-width: 400px) {}

</style>
<body>
    
  <div class="main">
      <ul class="goodsHomeTitle">
          <li class="icon-goodsshop"></li>
          <li class="title">八窖酒库</li>
          <li class="icon-goodslefttag"></li>
      </ul>
      <!-- <p class="bootm"></p> -->
  <div class="container">
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" <?php echo 'class="'.$class.'"'; ?>><?php echo $content_top; ?>

      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_option; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-checkout-option">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php if (!$logged && $account != 'guest') { ?>
        <div class="panel panel-default">
            
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_account; ?></h4>
          </div>
            
          <div class="panel-collapse collapse" id="collapse-payment-address">
            <div class="panel-body"></div>
          </div>
            
        </div>
        <?php } else { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_payment_address; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-payment-address">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php } ?>
        <?php if ($shipping_required) { ?>
        <div class="panel panel-default" style="display: none;">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_shipping_address; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-shipping-address">
            <div class="panel-body"></div>
          </div>
        </div>
        <div class="panel panel-default" style="display: none;">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_shipping_method; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-shipping-method">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php } ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_payment_method; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-payment-method">
            <div class="panel-body"></div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_confirm; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-checkout-confirm">
            <div class="panel-body"></div>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
      <p class="bootm"></p>      
    </div>
       <div class="foot">
        <ul>
            <li class="home"><a href="index.php?" class="icon-goodshome"></a></li>
            <li> <a href="index.php?route=product/categoryy">全部商品</a> </li>
            <li> <a href="index.php?route=checkout/cart">购物车</a> </li>
            <li> <a href="index.php?route=account/login">个人中心</a> </li>
        </ul>
    </div>

    <div class="info">
       <header>服务协议</header>
<p> <strong class="title"> 本协议由您与八窖酒库共同缔结，本协议具有合同效力。 </strong> <br>
  <strong>一、 协议内容及签署</strong><br>
  1.本协议内容包括协议正文及所有八窖酒库已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何八窖酒库提供的服务均受本协议约束。 <br>
  2.您应当在使用网店平台之前认真阅读全部协议内容，对于协议中以加粗字体显示的内容，您应重点阅读。如您对协议有任何疑问的，应向八窖酒库咨询。但无论您事实上是否在使用网店平台之前认真阅读了本协议内容，只要您使用网店平台，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得八窖酒库对您问询的解答等理由，主张本协议无效，或要求撤销本协议。 <br>
  3.您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用网店平台。 <br>
  4.八窖酒库有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。如您不同意相关变更，应当立即停止使用网店平台。您继续使用网店平台的，即表示您接受经修订的协议和规则。 <br>
  &#160; <br>
  <strong>二、 注册</strong><br>
  1.注册者资格 <br>
  您确认，在您完成注册程序或以其他八窖酒库允许的方式实际使用网店服务时，<strong>您应当是年满18周岁（自然人），具备完全民事权利能力、完全民事行为能力和能独立承担民事责任的自然人、法人或其他合法组织。</strong>若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且八窖酒库有权注销（冻结）您的账户，并向您及您的监护人索偿。 <br>
  2.账户 <br>
  在您签署本协议，完成会员注册程序或以其他八窖酒库允许的方式实际使用网店服务时，八窖酒库会向您提供编号账户。 您可以对账户设置会员名和密码，通过该会员名密码或与该会员名密码关联的其它用户名密码登陆网店平台。您设置的会员名不得侵犯或涉嫌侵犯他人合法权益。如您连续一年未使用您的会员名和密码登录网店，八窖酒库有权终止向您提供网店服务，注销您的账户。账户注销后，相应的会员名将开放给任意用户注册登记使用。 <br>
  您应对您的账户（会员名）和密码的安全，以及对通过您的账户（会员名）和密码实施的行为负责。除非有法律规定或司法裁定，且征得八窖酒库的同意，否则，账户（会员名）和密码不得以任何方式转让、赠与或继承（与账户相关的财产权益除外）。如果发现任何人不当使用您的账户或有任何其他可能危及您的账户安全的情形时，您应当立即以有效方式通知八窖酒库，要求八窖酒库暂停相关服务。您理解八窖酒库对您的请求采取行动需要合理时间，八窖酒库对在采取行动前已经产生的后果（包括但不限于您的任何损失）不承担任何责任。 <br>
  为方便您使用网店服务，您同意并授权八窖酒库将您在注册、使用网店平台过程中提供、形成的信息传递给向您提供其他服务的网店提供平台或其他组织，或从提供其他服务的网店服务平台或其他组织获取您在注册、使用其他服务期间提供、形成的信息。 <br>
  3.会员 <br>
  在您按照注册页面提示填写信息、阅读并同意本协议并完成全部注册程序后或以其他八窖酒库允许的方式实际使用网店平台时，您即成为八窖酒库会员（亦称会员）。 <br>
  在注册时，您应当按照法律法规要求，或注册页面的提示准确提供，并及时更新您的资料，以使之真实、及时，完整和准确。如有合理理由怀疑您提供的资料错误、不实、过时或不完整的，八窖酒库有权向您发出询问及/或要求改正的通知，并有权直接做出删除相应资料的处理，直至中止、终止对您提供部分或全部网店平台。八窖酒库对此不承担任何责任。 <br>
  您应当准确填写并及时更新您提供的电子邮件地址、联系电话、联系地址、邮政编码等联系方式，以便八窖酒库或其他会员与您进行有效联系，因通过这些联系方式无法与您取得联系，导致您在使用网店平台过程中产生任何损失或增加费用的，八窖酒库不承担任何责任。 您在使用网店平台过程中，所产生的应纳税赋，以及一切硬件、软件、服务及其它方面的费用，均由您独自承担。 <br>
  &#160; <br>
  <strong>三、 网店平台</strong><br>
  1.通过八窖酒库提供的网店服务和其它服务，会员可在八窖酒库平台上发布交易信息、查询商品和服务信息、达成交易意向并进行交易、对其他会员进行评价、参加八窖酒库组织的活动以及使用其它信息服务及技术服务。 <br>
  2.您了解并同意，八窖酒库有权应政府部门（包括司法及行政部门）的要求，向其提供您在网店平台填写的注册信息和交易记录等必要信息。如您涉嫌侵犯他人隐私，则八窖酒库亦有权在初步判断涉嫌侵权行为存在的情况下，向权利人提供您必要的身份信息。 <br>
  &#160; <br>
  <strong>四、 网店平台服务使用规范</strong><br>
  1.在网店平台上使用服务过程中，您承诺遵守以下约定： <br>
  （1)在使用网店平台服务及其他相关服务过程中实施的所有行为均遵守相关法律、法规等规范性文件及网店平台各项规则的规定和要求，不违背社会公共利益或公共道德，不损害他人的合法权益，不违反本协议及相关规则。您如果违反前述承诺，产生任何法律后果的，您应以自己的名义独立承担所有的法律责任，并确保八窖酒库免于因此产生任何损失。 <br>
  （2)不对网店平台上的任何数据作商业性利用，包括但不限于在未经八窖酒库事先书面同意的情况下，以复制、传播等任何方式使用网店平台上展示的资料。 <br>
  （3)不使用任何装置、软件或例行程序干预或试图干预网店平台的正常运作或正在网店平台上进行的任何交易、活动。您不得采取任何将导致不合理的数据负载加诸网店平台网络设备的行动。 <br>
  2.您了解并同意： <br>
  （1)八窖酒库有权对您是否违反上述承诺做出单方认定，并根据单方认定结果适用规则予以处理或终止向您提供服务，且无须征得您的同意或提前通知予您。 <br>
  （2)经行政或司法机关的生效法律文书确认您存在违法或侵权行为，或者八窖酒库根据自身的判断，认为您的行为涉嫌违反本协议和/或规则的条款或涉嫌违反法律法规的规定的，则八窖酒库有权在网店平台上公示您的该等涉嫌违法或违约行为及八窖酒库已对您采取的措施。 <br>
  （3)对于您在网店平台上实施的行为，包括您未在网店平台上实施但已经对网店平台及其用户产生影响的行为，八窖酒库有权单方认定您行为的性质及是否构成对本协议和/或规则的违反，并据此作出相应处罚。您应自行保存与您行为有关的全部证据，并应对无法提供充要证据而承担的不利后果。 <br>
  （4)对于您涉嫌违反承诺的行为对任意第三方造成损害的，您均应当以自己的名义独立承担所有的法律责任，并应确保八窖酒库免于因此产生损失或增加费用。 <br>
  （5) 如您涉嫌违反有关法律或者本协议之规定，使八窖酒库遭受任何损失，或受到任何第三方的索赔， 或受到任何行政管理部门的处罚，您应当赔偿八窖酒库因此造成的损失及（或）发生的费用，包括合理的律师费用。 <br>
  &#160; <br>
  <strong>五、 特别授权</strong><br>
  您完全理解并不可撤销地授予八窖酒库及其关联公司下列权利： <br>
  对于您提供的资料及数据信息，您授予八窖酒库及其关联公司通用的、永久的、免费的许可使用权利 (并有权在多个层面对该权利进行再授权)。此外，八窖酒库及其关联公司有权(全部或部份地) 使用、复制、修订、改写、发布、翻译、分发、执行和展示您的全部资料数据（包括 <br>
  但不限于注册资料、交易行为数据及全部展示于网店平台的各类信息）或制作其派生作品，并以现在已知或日后开发的任何形式、媒体或技术，将上述信息纳入其它作品内。 <br>
  &#160; <br>
  <strong>六、责任范围和责任限制</strong><br>
  1.八窖酒库负责按"现状"和"可得到"的状态向您提供网店平台服务。但八窖酒库对网店平台服务不作任何明示或暗示的保证，包括但不限于网店平台服务的适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，八窖酒库也不对网店平台服务所涉及的技术及信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性作出任何承诺和保证。 <br>
  2.除非法律法规明确要求，或出现以下情况，否则，八窖酒库没有义务对所有用户的注册数据及有关的其它事项进行事先审查： <br>
  （1) 八窖酒库有合理的理由认为特定会员及具体交易事项可能存在违法或违约情形。 <br>
  （2) 八窖酒库有合理的理由认为用户在网店平台的行为涉嫌违法或不当。 <br>
  3.您了解并同意，八窖酒库不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿 (无论八窖酒库是否已被告知该等损害赔偿的可能性) ： <br>
  （1) 使用或未能使用网店平台服务。 <br>
  （2) 第三方未经批准的使用您的账户或更改您的数据。 <br>
  （3) 通过网店平台服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。 <br>
  （4) 您对网店平台服务的误解。 <br>
  （5) 任何非因八窖酒库的原因而引起的与网店平台服务有关的其它损失。 <br>
  4.八窖酒库有权对商品价格进行随时调整时。因价格调整导致您的订单价格与调整之后的价格不符的，按如下情况处理： <br>
  （1）库房已发货，则按调整之前的的价格收取商品费用 <br>
  （2）库房未发货，八窖酒库会通知您此订单失效，需要重新按照新的价格下单。 <br>
  5.不论在何种情况下，八窖酒库均不对由于信息网络正常的设备维护，信息网络连接故障，电脑、通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。 <br>
  &#160; <br>
  <strong>七、 协议终止</strong><br>
  1.您同意，八窖酒库有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部网店平台服务，暂时冻结或永久冻结（注销）您的账户，且无须为此向您或任何第三方承担任何责任。 <br>
  2.出现以下情况时，八窖酒库有权直接以注销账户的方式终止本协议: <br>
  （1)八窖酒库终止向您提供服务后，您涉嫌再一次直接或间接或以他人名义注册为八窖酒库用户的； <br>
  （2)您提供的电子邮箱不存在或无法接收电子邮件，且没有其他方式可以与您进行联系，或八窖酒库以其它联系方式通知您更改电子邮件信息，而您在八窖酒库通知后三个工作日内仍未更改为有效的电子邮箱的。 <br>
  （3) 您注册信息中的主要内容不真实或不准确或不及时或不完整。 <br>
  （4）本协议（含规则）变更时，您明示并通知八窖酒库不愿接受新的服务协议的； <br>
  （5) 其它八窖酒库认为应当终止服务的情况。 <br>
  3.您有权向八窖酒库要求注销您的账户，经八窖酒库审核同意的，将注销（永久冻结）您的账户，届时，您与八窖酒库基于本协议的合同关系即终止。您的账户被注销（永久冻结）后，八窖酒库没有义务为您保留或向您披露您账户中的任何信息，也没有义务向您或第三方转发任何您未曾阅读或发送过的信息。 <br>
  4.您同意，您与八窖酒库的合同关系终止后，八窖酒库仍享有下列权利 <br>
  （1) 继续保存您的注册信息及您使用网店平台服务期间的所有交易信息。 <br>
  （2) 您在使用网店平台服务期间存在违法行为或违反本协议和/或规则的行为的，八窖酒库仍可依据本协议向您主张权利。 <br>
  5.八窖酒库中止或终止向您提供网店平台服务后，对于您在服务中止或终止之前的交易行为依下列原则处理，您应独力处理并完全承担进行以下处理所产生的任何争议、损失或增加的任何费用，并应确保八窖酒库免于因此产生任何损失或承担任何费用： <br>
  （1) 您在服务中止或终止之前已经与八窖酒库达成买卖合同，但合同尚未实际履行的，八窖酒库有权删除该买卖合同及其交易的相关信息； <br>
  （2）您在服务中止或终止之前已经与八窖酒库达成买卖合同且已履行的，八窖酒库可以不删除该项交易，但八窖酒库有权在中止或终止服务的同时将相关情形通知您。 <br>
  &#160; <br>
  <strong>八、隐私权政策</strong><br>
  您在本站进行注册、浏览、下单购物、评价、参加活动等行为时，涉及您真实姓名/名称、通信地址、联系电话、电子邮箱、订单详情、评价或反馈、投诉内容、cookies等信息的，本站有权从完成交易、提供配送、售后及客户服务、开展活动、完成良好的客户体验等多种角度予以收集，并将对其中涉及个人隐私信息予以严格保密，除非得到您的授权、或为履行强行性法律义务（如机关指令）、或按照您的需求为您提供更良好的合作、本注册协议或其他条款另有约定外，本站不会向外界披露您的隐私信息。 <br>
  本站会通过用户注册的邮箱为用户发送八窖酒库相关产品及活动信息，如不想继续订阅接收，可通过邮件页面的退订按钮实现退订。 <br>
  如您需更改您在本站注册的手机、邮箱等个人隐私信息，可在用户中心自行修改或通过以下方式联系我们进行修改： <br>
  八窖酒库客服电话：400-825-7799 <br>
  &#160; <br>
  <strong>九、法律适用、管辖与其它</strong><br>
  1.本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用商业惯例和行业惯例。 <br>
  2.因本协议产生之争议，应依照中华人民共和国法律予以处理，并以上海当地法院为审管辖法院。 </p>
    </div>

</body>

<?php if(!empty($_SESSION['signPackage'])):?>
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


<script type="text/javascript">
$(function(){
    $(document).delegate('.agree','click',function(){
        $(".info").slideToggle(50);
        return false;
    })
})
$("header,.colse,.info").on('click',function(){
    $(".info").hide(50);
})
</script>


<script type="text/javascript"><!--
$(document).on('change', 'input[name=\'account\']', function() {
	if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});

<?php if (!$logged) { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/login',
        dataType: 'html',
        success: function(html) {
           $('#collapse-checkout-option .panel-body').html(html);

			$('#collapse-checkout-option').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-checkout-option\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } else { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_address',
        dataType: 'html',
        success: function(html) {
            $('#collapse-payment-address .panel-body').html(html);

			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } ?>

// Checkout
$(document).delegate('#button-account', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function() {
        	$('#button-account').button('loading');
		},
        complete: function() {
			$('#button-account').button('reset');
        },
        success: function(html) {
            $('.alert, .text-danger').remove();

            $('#collapse-payment-address .panel-body').html(html);

			if ($('input[name=\'account\']:checked').val() == 'register') {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
			} else {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
			}

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/login/save',
        type: 'post',
        data: $('#collapse-checkout-option :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				// Highlight any found errors
				$('input[name=\'email\']').parent().addClass('has-error');
				$('input[name=\'password\']').parent().addClass('has-error');
		   }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Register
$(document).delegate('#button-register', 'click', function() {


    var data = $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select');

    $.ajax({
        url: 'index.php?route=checkout/register/save',
        type: 'post',
        data: data,
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function(html) {
                            location.reload();
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

							$('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

   							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_address',
                        dataType: 'html',
                        success: function(html) {
                            location.reload();
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    complete: function() {
                        $('#button-register').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);

						$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Payment Address
$(document).delegate('#button-payment-address', 'click', function() {
// var data = $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select');
    data = $('form').serialize();
    data += "&shipping_address="+$('input[name=payment_address]').val();
    $.ajax({
        url: 'index.php?route=checkout/payment_address/save',
        type: 'post',
        data: data,
        dataType: 'json',
        beforeSend: function() {
        	$('#button-payment-address').button('loading');
		},
        complete: function() {
			$('#button-payment-address').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>

                $.ajax({
                    url: 'index.php?route=checkout/shipping_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-shipping-address .panel-body').html(html);

						$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-address\']').trigger('click');

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                      
                            shippingAddress(data)
                        
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Shipping Address
//$(document).delegate('#button-shipping-address', 'click', function() {
var shippingAddress = function(data){

    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: data,
        // data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-shipping-address').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-address').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-address').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                        shippingMethod();
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
}//);

// Guest
$(document).delegate('#button-guest', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
       		$('#button-guest').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

						    $('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/guest_shipping',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest Shipping
$(document).delegate('#button-guest-shipping', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest_shipping/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-guest-shipping').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest-shipping').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest-shipping').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
var shippingMethod = function(){
//$(document).delegate('#button-shipping-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        //data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        data:'shipping_method=free.free&comment',
        dataType: 'json',
        beforeSend: function() {
        	$('#button-shipping-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-method').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
}//);

$(document).delegate('#button-payment-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
         	$('#button-payment-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-payment-method').button('reset');
                
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-checkout-confirm\']').trigger('click');
					},
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
//--></script>                                                                                                                                                                                                                                                                                                                                                                                   
</html>

