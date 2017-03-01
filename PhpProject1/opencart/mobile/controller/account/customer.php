<?php

class	ControllerAccountCustomer	extends	Controller	{

				public	function	index()	{
								if	(!empty($this->session->data['customer_id']))	{
												$this->load->model('account/customer');
												$data['userInfo']	=	$this->model_account_customer->userInfo($this->session->data['customer_id']);
												$this->response->setOutput($this->load->view('account/customer',	$data));
												return	true;
								}
								$this->response->redirect($this->url->link('common/home',	'',	true));
								return	FALSE;
				}

}
