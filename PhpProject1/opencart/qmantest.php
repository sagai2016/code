<?php
class test {

    public $url = '';
    public $content = '';
    public $way = 'post';
    public $ch;
    public $headers;

    public function __construct() {
        $this->ch = curl_init();
        
    }

    public function start() {
        

        $this->{$this->way}();
        $this->headers && $this->headers();
        curl_setopt($this->ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);  //协议版本
        curl_setopt($this->ch, CURLOPT_RETURNTRANSFER, TRUE);                 //回发数据
        curl_setopt($this->ch, CURLOPT_HEADER, FALSE);                        //关闭显示头
        $res = curl_exec($this->ch);                                          //转载句柄
        $error = curl_error($this->ch);                                       //错误信息
        curl_close($this->ch);

        if (empty($res)) {
            return FALSE;
        }

        return $res;

    }

    private function headers() {
        curl_setopt($this->ch, CURLOPT_HTTPHEADER, $this->headers);
    }


    private function post() {
        curl_setopt($this->ch, CURLOPT_POST, TRUE);
        curl_setopt($this->ch, CURLOPT_POSTFIELDS, http_build_query($this->content));
        $this->get();
    }

    private function get() {

        curl_setopt($this->ch, CURLOPT_URL, $this->url);
        
    }

    public function cout() {

        return $this->start();
        
    }

}

$test=new test();

$test->url='http://114.215.196.145/sendSmsApi';
$test->way='post';
$test->content=['username'=>'yishang','password'=>'PBM3WOcH','mobile'=>'18618305030','content'=>'【八窖酒库】你好你的验证码为 123456789','xh'=>'','dstime'=>''];
$test->headers = ['Content-Type: application/x-www-form-urlencoded; charset=utf-8;'];

var_dump($test->cout());

