<?php
global $ariacms;
//echo "AAAAAAAAA".$ariacms->getParam("task");die;
switch (true) {

	case ($ariacms->getParam("task") == 'chinh-sua-thong-tin'):
		Model::editthongtincanhan();
		break;


	default:
		Model::thongtincanhan();
		break;

}