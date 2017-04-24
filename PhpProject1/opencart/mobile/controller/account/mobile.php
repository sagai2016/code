<?php

class ControllerAccountMobile extends Controller {

    private $menu = ['201101' => '手机号码不能为空', '201102' => '错误的手机号码
', '201103' => '查询无结果', '0' => '手机号码不正确', '1' => '手机号码已经被注册', '2' => '请输入手机号码'];
    private $sendSmsApiErrInfo = ['发送短信失败', '发送短信成功'];
    private $url = [['index.php?route=account/mobile/sms', 'index.php?route=account/register'],
        ['index.php?route=account/mobile/isUserMobile', 'index.php?route=account/password'],
        ['index.php?route=account/mobile/forgotten', 'index.php?route=account/reset&code=']
    ];
    private $sms;

    public function __construct($registry) {
        parent::__construct($registry);
        include(DIR_SYSTEM . 'library/mobile/sms.php');
        $this->sms = new sms();
    }

    public function index() {
        $data = [];
        $u = empty($this->request->get['u']) ? 0 : (int) $this->request->get['u'];
        $data['url'] = $this->url[$u];
        if ($u === 2) {
            $_SESSION['code'] = empty($_SESSION['code']) ? token(40) : $_SESSION['code'];
            $data['url'][0] = $this->url[$u][0];
            $data['url'][1] = $this->url[$u][1] . $_SESSION['code'];
        }
        $this->response->setOutput($this->load->view('account/mobile', $data));
    }

    /**
     * 用户手机是否存在 （修改密码）
     * @return boolean
     */
    public function isUserMobile() {
        $verificationCode = '';
        $phoneMesg = '';
        $isUser = $this->isuser($verificationCode, $this->session->data['customer_id']);

        if (!is_bool($isUser)) {
            return is_bool($isUser);
        }

        if (!empty($isUser)) {
            $this->pushSms($_SESSION['mobile'], $verificationCode, $phoneMesg);
            echo $phoneMesg;
            return TRUE;
        }
        echo json_encode(['errmsg' => $this->menu[0], 'err' => TRUE]);
        return FALSE;
    }

    /**
     * 用户注册（用户注册）
     * @return type
     */
    public function sms() {
        $verificationCode = '';
        $phoneMesg = '';
        $isUser = $this->isuser($verificationCode);
        if (!is_bool($isUser)) {
            return is_bool($isUser);
        }
       
        if ($isUser === true) {
            echo json_encode(['errmsg' => $this->menu[1], 'err' => TRUE]);
            return $isUser;
        }
        $this->pushSms($_SESSION['mobile'], $verificationCode, $phoneMesg);
        echo $phoneMesg;
    }

    /**
     *  忘记密码
     * @return type
     */
    public function forgotten() {
        $verificationCode = '';
        $phoneMesg = '';
        $isUser = $this->isuser($verificationCode);
        if (!is_bool($isUser)) {
            return is_bool($isUser);
        }
        if ($isUser === FALSE) {
            echo json_encode(['errmsg' => $this->menu[0], 'err' => TRUE]);
            return $isUser;
        }
        $this->load->model('account/customer');
        $this->model_account_customer->editCodeMobile($_SESSION['mobile'], $_SESSION['code']);
        $this->pushSms($_SESSION['mobile'], $verificationCode, $phoneMesg);
        echo $phoneMesg;
    }

    /**
     * 短信认证
     */
    public function smscheck() {
        echo json_encode((!empty($this->request->post['yzm']) && (int) $this->request->post['yzm'] === $_SESSION['rand']));
    }

    /**
     *  判断用户是否存在
     * @param type $verificationCode
     * @return boolean
     */
    private function isuser(&$verificationCode, $userID = 0) {
        $phoneMesg = '';
        $this->load->model('account/customer');
        $_SESSION['rand'] = empty($_SESSION['rand']) ? mt_rand(1000, 9999) : $_SESSION['rand'];
        $verificationCode = $_SESSION['rand'];
        $_SESSION['mobile'] = $this->request->post['telephone'];
        if (!empty($_SESSION['mobile'])) {
            if (!$this->isMobile($_SESSION['mobile'], $phoneMesg)) {
                echo json_encode(['errmsg' => $phoneMesg, 'err' => TRUE]);
                return NULL;
            }
        } else {
            //var_dump(json_encode(['errmsg'	=>	$this->menu[2],	'err'	=>	TRUE]));
            echo json_encode(['errmsg' => $this->menu[2], 'err' => TRUE]);
            return NULL;
        }
        if (empty($userID)) {
            $user = $this->model_account_customer->registerByTelephone($_SESSION['mobile']);
        } else {
            $user = $this->model_account_customer->isUserMobile($userID, $_SESSION['mobile']);
        }
        return (bool) $user['count'];
    }

    /**
     * 发送短信
     * @param type $rand
     * @param type $phoneMesg
     * @return boolean
     */
    private function pushSms($telephone, $verificationCode, &$phoneMesg) {
        $this->smsConfig($phoneMesg, 'http://114.215.196.145/sendSmsApi', 'post', ['username' => 'yishang', 'password' => 'PBM3WOcH', 'mobile' => $telephone, 'content' => '【八窖酒库】你好你的验证码为' . $verificationCode, 'xh' => '', 'dstime' => ''], ['Content-Type: application/x-www-form-urlencoded; charset=utf-8;']);
        $err = (int) mb_substr($phoneMesg, 0, 1);
        $errContent = $this->sendSmsApiErrInfo[$err];
        $phoneMesg = json_encode(['errmsg' => $errContent, 'err' => !$err]);
        return (bool) $err;
    }

    /**
     *  判断手机号时候正确
     * @param type $telephone
     * @param type $phoneMesg
     * @return boolean
     */
    private function isMobile($telephone, &$phoneMesg) {
        $content = '';
        if (!empty($telephone) && is_numeric($telephone) && mb_strlen($telephone) === 11) {
            $this->smsConfig($content, 'http://apis.juhe.cn/mobile/get?phone=' . $telephone . '&key=37f38d70bb4197e8c3af9b2ea6879fdc', 'get');
            $content = json_decode($content);
            if (!!$content->error_code) {
                $phoneMesg = $this->menu[$phoneMesg->error_code];
                return FALSE;
            }
        } else {
            $phoneMesg = $this->menu[0];
            return FALSE;
        }
        return TRUE;
    }

    /**
     *  配置发送的数据参数
     * @param type $phoneMesg
     * @param type $url
     * @param type $way
     * @param type $content
     * @param type $headers
     */
    private function smsConfig(&$phoneMesg, $url, $way, $content = '', $headers = '') {
        $this->sms->url = $url;
        $this->sms->way = $way;
        (!empty($content)) && $this->sms->content = $content;
        (!empty($headers)) && $this->sms->headers = $headers;
        $phoneMesg = $this->sms->cout();
    }

}
