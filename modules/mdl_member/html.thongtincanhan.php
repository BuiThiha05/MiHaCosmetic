<?php global $ariacms;
global $params;
global $database;
global $ariaConfig_template;
global $analytics_code;
$i = 0;
//print_r($_SESSION);

// Lấy ra đơn hàng
$query = "SELECT * FROM `e4_order_list` WHERE id_thanhvien = " . $_SESSION['member']['id'] . " order by id desc";
$database->setQuery($query);
$order_list = $database->loadObjectList();


$count = count($order_list);
?>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= _VIEW_CART ?>
        - <?= ($ariacms->web_information->{$params->meta_title} != '') ? $ariacms->web_information->{$params->meta_title} : $ariacms->web_information->{$params->name}; ?></title>

    <link href="/templates/traid/catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet"
          media="screen"/>
    <link href="/templates/traid/catalog/view/javascript/jquery/swiper/css/swiper.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- icon font -->
    <link href="/templates/traid/catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="/templates/traid/catalog/view/javascript/ionicons/css/ionicons.css" rel="stylesheet" type="text/css"/>
    <!-- end icon font -->
    <!-- end -->
    <link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/stylesheet.css" rel="stylesheet">
    <link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/header/header1.css" rel="stylesheet">
    <link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/theme.css" rel="stylesheet">
    <link href="/templates/traid/catalog/view/javascript/line-awesome/css/line-awesome.css" rel="stylesheet"
          type="text/css"/>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
    <script src="/templates/traid/catalog/view/javascript/jquery/jquery-3.1.1.min.js"></script>

    <script src="/templates/traid/catalog/view/javascript/jquery/swiper/js/swiper.min.js"></script>
    <script src="/templates/traid/catalog/view/javascript/plaza/ultimatemenu/menu.js"></script>
    <script src="/templates/traid/catalog/view/javascript/plaza/newsletter/mail.js"></script>
    <script src="/templates/traid/catalog/view/javascript/common.js"></script>
    <link rel="icon" href="<?= $ariacms->web_information->{'image-icon'} ?>">
    <!-- Quick view -->
    <script src="/templates/traid/catalog/view/javascript/plaza/cloudzoom/cloud-zoom.1.0.2.min.js"></script>
    <script src="/templates/traid/catalog/view/javascript/plaza/cloudzoom/zoom.js"></script>
    <script src="/templates/traid/catalog/view/javascript/plaza/quickview/quickview.js"></script>
    <link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/quickview/quickview.css" rel="stylesheet"
          type="text/css"/>
    <!-- General -->
    <!-- Sticky Menu -->
    <script>
        $(document).ready(function () {
            var height_box_scroll = $('.scroll-fix').outerHeight(true);
            $(window).scroll(function () {
                if ($(this).scrollTop() > 800) {
                    $('.scroll-fix').addClass("scroll-fixed");
                    $('body').css('padding-top', height_box_scroll);
                } else {
                    $('.scroll-fix').removeClass("scroll-fixed");
                    $('body').css('padding-top', 0);
                }
            });
        });
    </script>
    <!-- Scroll Top -->
    <script>
        $("#back-top").hide();
        $(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > $('body').height() / 3) {
                    $('#back-top').fadeIn();
                } else {
                    $('#back-top').fadeOut();
                }
            });
            $('#back-top').click(function () {
                $('body,html').animate({scrollTop: 0}, 800);
                return false;
            });
        });
    </script>
    <!-- Advance -->
    <!-- Bootstrap Js -->
    <script src="/templates/traid/catalog/view/javascript/bootstrap/js/bootstrap.min.js"></script>
</head>

<body class="checkout-cart">
<div class="wrapper">
    <div id="back-top"><i class="ion-chevron-up"></i></div>
    <div id="header" class="header-absolute">
        <nav id="top">
            <div class="container">
                <div class="static-nav"><?= $ariacms->web_information->{$params->slogan} ?></div>


            </div>
        </nav>
        <?= $ariacms->getBlock("header_traid"); ?>

    </div>

    <style>body:not(.common-home) #header {
            margin-bottom: 20px;
        }</style>

    <div id="checkout-cart" class="container">
        <ul class="breadcrumb">
            <li><a href="<?= $ariacms->actual_link ?>/trang-chu.html"><i class="fa fa-home"></i></a></li>
            <li><a href=""><?= _PROFILE ?></a></li>
        </ul>
        <div class="alert alert-success alert-dismissible">
            <?= _INFORMATION . ": " . $_SESSION['member']['fullname'] . " - " . $_SESSION['member']['email'] . " - " . $_SESSION['member']['homephone'] ?>

        </div>
        <div class="row">
            <div id="content" class="col-sm-12">
                <h1><?= _PROFILE ?>
                </h1>

                <?php if ($count == 0) { ?>
                    <p class="cart-empty"> <?= _YOUR_CART . " " . _EMPTY ?></p>
                    <p class="return-to-shop">
                        <a class="button wc-backward" href="<?= $ariacms->actual_link ?>"><?= _RETURN_TO_SHOP ?></a>
                    </p>
                <?php } else { ?>

                    <?php foreach ($order_list as $order) {

                        // Lấy ra chi tiết đơn hàng
                        $query = "SELECT b.* FROM `e4_order_product` a 
                                    LEFT JOIN e4_posts b ON b.id = a.product_id 
                                WHERE order_id = " . $order->id;
                        $database->setQuery($query);
                        $order_product = $database->loadObjectList();
                        ?>
                        <?php
                        $color = "";

                        if($order -> status == 'cancel')  $color = "red";
                        if($order -> status == 'delivery')  $color = "blue";
                        //if($order -> status == 'cancel')  $color = "red";


                            ?>

                        <div class="row form-group">
                            <div class="col-md-5">
                                <h3 class="cart-empty" style="color: <?php echo $color?>"> <?= _NUMBER_BILLING . ":" . $count . " - Tạo lúc: " . $ariacms->unixToDate($order->date_created, "/") . " " . $ariacms->unixToTime($order->date_created, ":") ?></h3>
                            </div>
                            <div class="col-md-3" style="margin-top: 10px;">
                                <select id="status<?= $order->id ?>" class="form-control"
                                        onchange="changeStatus(<?= $order->id ?>)">
                                    <option <?= ($order->status == 'new') ? 'selected' : ''; ?> value="new" disabled>Mới
                                        tạo
                                    </option>
                                    <option <?= ($order->status == 'processed') ? 'selected' : ''; ?> value="processed"
                                                                                                      disabled>Đã xử lý
                                    </option>
                                    <option <?= ($order->status == 'ondelivery') ? 'selected' : ''; ?>
                                            value="ondelivery" disabled>Đang giao hàng
                                    </option>
                                    <option <?= ($order->status == 'delivery') ? 'selected' : ''; ?>
                                            value="delivery" <?php if ($order->status == 'new' || $order->status != 'ondelivery' || $order->status == 'cancel') echo 'disabled' ?>>
                                        Đã nhận hàng
                                    </option>
                                    <option <?= ($order->status == 'nodelivery') ? 'selected' : ''; ?>
                                            value="nodelivery" <?php if ($order->status == 'new' || $order->status == 'delivery' || $order->status == 'cancel') echo 'disabled' ?>>
                                        Chưa nhận hàng
                                    </option>
                                    <option <?= ($order->status == 'cancel') ? 'selected' : ''; ?>
                                            value="cancel" <?php if ($order->status != 'new') echo 'disabled' ?>>Hủy đơn
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <td class="text-center"><?= _Image ?></td>
                                    <td class="text-center"><?= _PRODUCT_NAME ?></td>
                                    <!--  <td class="text-left">Model</td> -->
                                    <td class="text-left"><?= _QUANTITY ?></td>
                                    <td class="text-center"><?= _UNIT_PRICE ?></td>
                                    <td class="text-center"><?= _TOTAL ?></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($order_product as $product) { ?>
                                    <tr>
                                        <td class="text-center"><a
                                                    href="<?= $ariacms->actual_link ?>chi-tiet/<?= $product->url_part ?>.html"><img
                                                        src="<?= $product->image_thumb ?>"
                                                        alt="<?= $product->{$params->title} ?>"
                                                        title="<?= $product->{$params->title} ?>"
                                                        class="img-thumbnail"/></a></td>
                                        <td class="text-center"><a href=""><?= $product->{$params->title} ?></a> <br/>
                                            <!--  <small>Delivery Date: 2011-04-22</small>                                  <br />
                                             <small>Reward Points: 900</small>                 --> </td>
                                        <!--  <td class="text-left">Product 21</td> -->
                                        <td class="text-left"><?= $_SESSION['orderCart'][$product->id] ?></td>
                                        <td class="text-center"><?= number_format($product->product_sale + ($product->product_sale * $product->VAT) / 100 + $product->Eco_tax) ?>
                                            VNĐ <br/>
                                            <small><strong>Eco Tax:</strong> <?= $product->Eco_tax ?>
                                                VNĐ/<?= _PRODUCT ?></small> <br/>
                                            <small><strong>VAT(%):</strong> <?= $product->VAT ?> %</small>
                                        </td>
                                        <td class="text-center"><?= number_format($_SESSION['orderCart'][$product->id] * ($product->product_sale + ($product->product_sale * $product->VAT) / 100 + $product->Eco_tax)) ?>
                                            VNĐ
                                        </td>
                                    </tr>
                                <?php } ?>
                                </tbody>

                            </table>
                        </div>


                        <?php $count--;
                    } ?>
                <?php } ?>
                <script>
                    function changeStatus(id) {
                        var status = $("#status" + id).val();

                        alert(status);

                        var f = "pid=" + id + "&status=" + status;

                        var _url = "<?= $ariacms->actual_link ?>ajax/ajax.updateStatus.php?" + f;

                        $.ajax({

                            url: _url,

                            data: f,

                            cache: false,

                            context: document.body,

                            success: function (data) {

                                alert("Cập nhật thành công");


                            }

                        });
                    }

                </script>
                <script>
                    function deleteCart(id) {
                        var f = "pid=" + id + "&type=delete";
                        var _url = "<?= $ariacms->actual_link ?>ajax/ajax.cart.php?" + f;
                        $.ajax({
                            url: _url,
                            data: f,
                            cache: false,
                            context: document.body,
                            success: function (data) {
                                alert("Xóa thành công ra giỏ hàng");
                                location.reload();
                            }
                        });
                    }
                </script>

                <script>
                    function editCart(id) {
                        var quantity = $("#quantity_" + id).val();
                        if (typeof quantity == "undefined" || quantity < 1) {
                            alert("Số lượng sản phẩn không được bé hơn 1");
                            quantity = 1;
                        } else {
                            var f = "pid=" + id + "&type=edit&quantity=" + quantity;
                            var _url = "<?= $ariacms->actual_link ?>ajax/ajax.cart.php?" + f;
                            $.ajax({
                                url: _url,
                                data: f,
                                cache: false,
                                context: document.body,
                                success: function (data) {
                                    location.reload();
                                }
                            });
                        }
                    }
                </script>

            </div>
        </div>
    </div>
    <?= $ariacms->getBlock("footer_traid"); ?>

</div>
</body>

</html>