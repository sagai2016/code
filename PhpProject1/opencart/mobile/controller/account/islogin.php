<?php
class ControllerAccountIslogin extends Controller {
	public function index() {
			header("Content-type: text/html; charset=utf-8"); 
			//empty(filter_input(INPUT_COOKIE,'openmenuwxmsg',FILTER_VALIDATE_BOOLEAN)) && $this->session->data['openmenuwxmsg'] = true;
			$this->session->data['openmenuwxmsg'] = true;
			if(!empty($this->session->data['customer_id']) ){
				header('Refresh:1,Url=/mobile/index.php');
				printf('<script type="text/javascript">alert("%s")</script>','转发让朋友为你助攻！');
				return false;
			}
			header("Content-type: text/html; charset=utf-8"); 
			header('Refresh:1,Url=/mobile/index.php?route=account/login');
			printf('<script type="text/javascript">alert("%s")</script>','系统发现你未注册或登录、请先注册或登录。');
			return true;
	}
}