<?php

class	sms	{

				public	$url	=	'';
				public	$content	=	'';
				public	$way	=	'post';
				public	$ch;
				public	$headers;

				public	function	start()	{


								$this->{$this->way}();
								$this->headers	&&	$this->headers();
								curl_setopt($this->ch,	CURLOPT_HTTP_VERSION,	CURL_HTTP_VERSION_1_0);		//协议版本
								curl_setopt($this->ch,	CURLOPT_RETURNTRANSFER,	TRUE);																	//回发数据
								curl_setopt($this->ch,	CURLOPT_HEADER,	FALSE);																								//关闭显示头
								$res	=	curl_exec($this->ch);																																										//转载句柄
								$error	=	curl_error($this->ch);																																							//错误信息
								curl_close($this->ch);

								$this->ch	=	'';

								if	(empty($res))	{
												return	FALSE;
								}

								return	$res;
				}

				private	function	headers()	{
								curl_setopt($this->ch,	CURLOPT_HTTPHEADER,	$this->headers);
				}

				private	function	post()	{
								curl_setopt($this->ch,	CURLOPT_POST,	TRUE);
								curl_setopt($this->ch,	CURLOPT_POSTFIELDS,	http_build_query($this->content));
								$this->get();
				}

				private	function	get()	{

								curl_setopt($this->ch,	CURLOPT_URL,	$this->url);
				}

				public	function	cout()	{
								$this->ch	=	curl_init();
								return	$this->start();
				}

}

//$sms=new sms();
//$sms->url='http://114.215.196.145/sendSmsApi';
//$sms->way='post';
////'username'=>'(用户名)','password'=>'(密码)','mobile'=>'(手机号码,多个号码以逗号隔开)','content'=>'(内容，不要超过70个字)','xh'=>'(小号)','dstime'=>'(定时发送，时间格式 date('YmdHis'))'
//$sms->content=[];
//$sms->headers = ['Content-Type: application/x-www-form-urlencoded; charset=utf-8;'];
//
//var_dump($sms->cout());


