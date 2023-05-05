<?php
global $ariacms;
global $params;
global $ariaConfig_template;
global $analytics_code;
?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->

<!-- Mirrored from amino.demo2.towerthemes.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 03 Nov 2021 03:10:37 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?=$category{$params->title}?></title>
	<base  />
	<link href="/templates/traid/catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="/templates/traid/catalog/view/javascript/jquery/css/jquery-ui.css" type="text/css" rel="stylesheet" media="screen" />
	<link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/category/filter.css" type="text/css" rel="stylesheet" media="screen" />
	<link href="/templates/traid/catalog/view/javascript/jquery/swiper/css/swiper.min.css" rel="stylesheet" type="text/css" />
	<!-- icon font -->
	<link href="/templates/traid/catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="/templates/traid/catalog/view/javascript/ionicons/css/ionicons.css" rel="stylesheet" type="text/css" />
	<!-- end icon font -->
	<!-- end -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/stylesheet.css" rel="stylesheet">
	<link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/header/header1.css" rel="stylesheet">
	<link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/theme.css" rel="stylesheet">
	<link href="/templates/traid/catalog/view/javascript/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css2?family=Great+Vibes&amp;display=swap" rel="stylesheet">
	<script src="/templates/traid/catalog/view/javascript/jquery/jquery-3.1.1.min.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/jquery/swiper/js/swiper.min.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/jquery/jquery-ui.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/plaza/category/filter.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/plaza/category/grid.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/plaza/ultimatemenu/menu.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/plaza/newsletter/mail.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/common.js" ></script>
	<!-- <link href="flour.html" rel="canonical" />
	<link href="flour4658.html?page=2" rel="next" /> -->
	<link rel="icon" href="<?= $ariacms->web_information->{'image-icon'} ?>">
	<!-- Quick view -->
	<script src="/templates/traid/catalog/view/javascript/plaza/cloudzoom/cloud-zoom.1.0.2.min.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/plaza/cloudzoom/zoom.js" ></script>
	<script src="/templates/traid/catalog/view/javascript/plaza/quickview/quickview.js" ></script>
	<link href="/templates/traid/catalog/view/theme/tt_amino1/stylesheet/plaza/quickview/quickview.css" rel="stylesheet" type="text/css" />
	<!-- General -->
	<!-- Sticky Menu -->
	<script >
		$(document).ready(function () {	
			var height_box_scroll = $('.scroll-fix').outerHeight(true);
			$(window).scroll(function () {
				if ($(this).scrollTop() > 800) {
					$('.scroll-fix').addClass("scroll-fixed");
					$('body').css('padding-top',height_box_scroll);
				} else {
					$('.scroll-fix').removeClass("scroll-fixed");
					$('body').css('padding-top',0);
				}
			});
		});
	</script>
	<!-- Scroll Top -->
	<script>
		$("#back-top").hide();
		$(function () {
			$(window).scroll(function () {
				if ($(this).scrollTop() > $('body').height()/3) {
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
	<script src="/templates/traid/catalog/view/javascript/bootstrap/js/bootstrap.min.js" ></script>
</head>


<body class="product-category">
	<div class="wrapper">

		<div id="back-top"><i class="ion-chevron-up"></i></div>

		<div id="header" class="header-absolute" >	
			<nav id="top" >
				<div class="container">
					<div class="static-nav"><?= $ariacms->web_information->{$params->slogan} ?></div>


				</div>
			</nav>
			<?= $ariacms->getBlock("header_traid"); ?>
		</div>
         
       

         
		<div id="product-category" class="container layer-category">
			<div class="show-sidebar hidden-lg hidden-md">
				<i class="fa fa-filter"></i>
				<i class="ion-android-close"></i>
			</div>
			<div class="layered-navigation-block"></div>
			<div class="ajax-loader">
				<img src="/templates/traid/image/catalog/ajax-loader.gif" alt="" />
			</div> 

			<div class="row">
				<aside id="column-left" class="col-sm-3 col-xs-12">
					<?= $ariacms->getBlock("product_left_traid"); ?>
				</aside>
				<div id="content" class="col-sm-9">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#"><?php if( $category[$params->title]){ echo $category[$params->title];} else{echo _PRODUCT;} ?></a></li>
					</ul>
					<h1><?php if( $category[$params->title]){ echo $category[$params->title];} else{echo _PRODUCT;} ?></h1>


					<?= $ariacms->getBlock("product_sale_traid"); ?>
				</div>
			</div>

			<script >
				$(document).ready(function() {
					$('.show-sidebar').click(function () {
						if($(this).hasClass('opened')) {
							$(this).removeClass('opened');
						} else {
							$(this).addClass('opened');
						}
						$('.layer-category #column-left,.layer-category #column-right').toggle();
					});
				});
			</script>
		</div>




		<?= $ariacms->getBlock("footer_traid"); ?>




	</div> 
</body>
</html>
