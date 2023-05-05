<?php
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
// Include Configuration File
if (file_exists("../configuration.php")) {
	require_once("../configuration.php");
} else {
	echo "Missing Configuration File";
	exit();
}
// Include Language File
if (file_exists("../languages/lang." . $ariaConfig_language . ".php")) {
	require_once("../languages/lang." . $ariaConfig_language . ".php");
} else {
	echo "Missing Language File";
	exit();
}
// Include Params File
if (file_exists("../params/params." . $ariaConfig_language . ".php")) {
	include("../params/params." . $ariaConfig_language . ".php");
} else {
	echo "Missing Params File";
	exit();
}
// Include Database Controller
if (file_exists("../include/database.php")) {
	include("../include/database.php");
} else {
	echo "Missing Database File";
	exit();
}
// Include System File
if (file_exists("../include/ariacms.php")) {
	include	("../include/ariacms.php");
} else {
	echo "Missing System File";
	exit();
}



$pid = trim($_REQUEST["pid"]);
$quantity = (trim($_REQUEST["quantity"]) != '' && trim($_REQUEST["quantity"]) != 'undefined') ? trim($_REQUEST["quantity"]) : 1;
$type = trim($_REQUEST['type']);

switch ($type) {
	case 'add':
		if ($pid != '') {
			if (!isset($_SESSION['orderCart'])) {
				$_SESSION['orderCart'] = array();
			}
			$_SESSION['orderCart'][$pid] += $quantity;
		}
		break;
	case 'edit':
		foreach ($_SESSION['orderCart'] as $productID => $value) {
			if ($productID == $pid) {
				$_SESSION['orderCart'][$productID] = $quantity;
			}
		}
		break;
	case 'delete':
		if ($pid) {

      unset($_SESSION['orderCart'][$pid]);
      //echo $pid;die;
			foreach ($_SESSION['orderCart'] as $productID => $value) {
				if ($productID == $pid) {
					unset($_SESSION['orderCart'][$productID]);
				}
			}
		} else {
			unset($_SESSION['orderCart']);
		}
		break;
}

$database = new database($ariaConfig_server, $ariaConfig_username, $ariaConfig_password, $ariaConfig_database);
$ariacms = new ariacms();
$params = new params();
$i = 0;
$id= array();
//print_r($_SESSION);
if ($_SESSION['orderCart']) {
	foreach ($_SESSION['orderCart'] as $productID => $quantity) {
		$i += $quantity;
	}
	
	foreach ($_SESSION['orderCart'] as $productID=>$value) {
		array_push($id,$productID); 
	}
}
$id=implode(",",$id);

//echo $id; die();

$query = "SELECT  a.* FROM e4_posts a WHERE  a.id in (".$id.")";
$database->setQuery($query);
$products = $database->loadObjectList();
$total=0;
if(count($products) >0){
  foreach ($products as $product){
    $total += ($_SESSION['orderCart'][$product->id] * $product->product_sale)+(($_SESSION['orderCart'][$product->id] * $product->product_sale) * $product->VAT)/100+($_SESSION['orderCart'][$product->id] * $product->Eco_tax);
  }
} 


?>


<div id="cart" class="btn-group btn-block">
  <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="btn btn-inverse btn-block btn-lg dropdown-toggle"><span id="cart-total"><span class="txt-count"><?=$i?></span><span class="text-item"> <?=_YOUR_CART?> </span><span class="text-cart"><?=$total?> VNĐ</span></span></button>
  <?php if($i == 0){?> 
   <ul class="dropdown-menu pull-right">
     <li>
      <span class="cart-dropdown-menu-close"><i class="ion-android-close"></i></span>
      <p class="text-center"><?=_YOUR_SHOPPING_CART_IS_EMPTY?></p>
    </li> 
  </ul> 
<?php }else { ?>
  <ul class="dropdown-menu pull-right">
    <li>
      <span class="cart-dropdown-menu-close"><i class="ion-android-close"></i></span>
      <?php foreach ($products as $product){?>
        <table class="table table-striped">
          <tr>
            <td class="text-center cart-image"> <a href="<?=$ariacms->actual_link?>chi-tiet/<?= $product->url_part?>.html"><img width="80" height="80" src="<?= $product->image?>" alt="Pellentesque sodales" title="Pellentesque sodales" class="img-thumbnail" /></a> </td>
            <td class="text-left cart-info">
              <a href="<?=$ariacms->actual_link?>chi-tiet/<?= $product->url_part?>.html"><?= $product->{$params->title} ?></a>                  <p>
                <span class="cart-quantity"><?= $_SESSION['orderCart'][$product->id]?> ×</span>
                <span class="cart-product-price"><?= $product->product_sale?> VNĐ</span>
              </p>
            </td>

            <td class="text-center"><button type="button" onclick="deleteCart(<?= $product->id?>)" title="Remove" class="btn btn-danger btn-xs button-cart-remove"><i class="ion-ios-close-outline"></i></button></td>
          </tr>
        </table>
      <?php }?>
      </li>
      <li>
        <div>
          <table class="table table-bordered">
            <!-- <tr>
              <td class="text-left"><strong>Sub-Total</strong></td>
              <td class="text-right">$199.99</td>
            </tr>
            <tr>
              <td class="text-left"><strong>Eco Tax (-2.00)</strong></td>
              <td class="text-right">$2.00</td>
            </tr>
            <tr>
              <td class="text-left"><strong>VAT (20%)</strong></td>
              <td class="text-right">$40.00</td>
            </tr> -->
            <tr>
              <td class="text-left"><strong><?= _Cart_totals?></strong></td>
              <td class="text-right"><?=$total ?> VNĐ</td>
            </tr>
          </table>
          <p class="text-right"><a href="<?=$ariacms->actual_link?>gio-hang.html"><strong><i class="fa fa-shopping-cart"></i><?= _VIEW_CART?></strong></a><a href="<?=$ariacms->actual_link?>giao-hang.html"><strong><i class="fa fa-share"></i><?= _CHECKOUT?></strong></a></p>
        </div>
      </li>
    </ul>
  <?php }?>
</div>