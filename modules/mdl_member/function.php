<?php
class Model
{
	public static function thongtincanhan()
	{
		global $database;
		global $ariacms;



		date_default_timezone_set('Asia/Ho_Chi_Minh');
		
		if(!$ariacms->checkUserLogin()){
			echo '<script language="javascript">alert("Vui lòng đăng nhập để sử dụng chức năng.");window.location.href ="/";</script>';
		}
		
		View::thongtincanhan();
	}

}
