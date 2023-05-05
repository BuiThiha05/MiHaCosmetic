<?php
global $database;
global $ariacms;
global $params;
global $ariaConfig_template;
global $analytics_code;


   //phân trang
$maxRows = $ariacms->web_information->posts_per_page; 

if(trim($ariacms->getParaUrl('?curPg')) != '' && trim($ariacms->getParaUrl('?curPg')) != 'undefined'){
	$page = trim($ariacms->getParaUrl('?curPg'));
}else if($_POST["page"]){
	$page = $_POST["page"];
}
else{
	$page =1;
}
// echo 'AAAAAAAAAAAAAAAAAA'.$page;

       $curPg = ($page > 0) ? $page : 1;
		$curRow = ($curPg - 1) * $maxRows;
		$limit = " LIMIT " . $curRow . "," . $maxRows . " ";
//phan trang	
	$query = "SELECT * FROM `e4_posts` where post_type = 'post' and post_status='active' order by id desc".$limit;
	$database->setQuery($query);
	$news = $database->loadObjectList();
	
	$query = "	SELECT * FROM `e4_posts` where post_type = 'post' and post_status='active'";

	$database->setQuery($query);
	
	$count = $database->loadObjectList();
	$count = count($count);
	
	$count_page = number_format($count/3 + 1,0);
?>
<!DOCTYPE html>
<html lang="vi">

<head>
	<?= $ariacms->getBlock("head"); ?>
	<title><?= _NEWS ?> - <?= ($ariacms->web_information->{$params->meta_title} != '') ? $ariacms->web_information->{$params->meta_title} : $ariacms->web_information->{$params->name}; ?></title>
	<meta name="description" content="<?= ($ariacms->web_information->{$params->meta_description} != '') ? $ariacms->web_information->{$params->meta_description} : $ariacms->web_information->{$params->name}; ?>" />
	<meta name="keywords" content="<?= ($ariacms->web_information->{$params->meta_keyword} != '') ? $ariacms->web_information->{$params->meta_keyword} : $ariacms->web_information->{$params->name}; ?>" />
	<meta property="og:title" content="<?= ($ariacms->web_information->{$params->meta_title} != '') ? $ariacms->web_information->{$params->meta_title} : $ariacms->web_information->{$params->name}; ?>" />
	<meta property="og:description" content="<?= ($ariacms->web_information->{$params->meta_description} != '') ? $ariacms->web_information->{$params->meta_description} : $ariacms->web_information->{$params->name}; ?>" />
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/l0xw9klt_f9lxl.css" media="all"/>
<style id='rs-plugin-settings-inline-css'>#rs-demo-id{}</style>
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/6xwxuhgu_f9lxl.css" media="all"/>
<style id='woocommerce-inline-inline-css'>.woocommerce form .form-row .required{visibility:visible;}</style>
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/l9ajug3i/2i2e4.css" media="all"/>
<style id='font-awesome-inline-css'>[data-font="FontAwesome"]:before{font-family:'FontAwesome' !important;content:attr(data-icon) !important;speak:none !important;font-weight:normal !important;font-variant:normal !important;text-transform:none !important;line-height:1 !important;font-style:normal !important;-webkit-font-smoothing:antialiased !important;-moz-osx-font-smoothing:grayscale !important;}</style>
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/8uu5fujd_f9lxl.css" media="all"/>

</head>

<body>
	<?= $ariacms->getBlock("header"); ?>

	<section class="blog spad">
	
		<div class="page-heading">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="page-title"> <h2><?= _BLOG?></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="main-container col2-left-layout">
	<div class="main container">
		<div class="row">
		<div class="col-main col-sm-9 main-blog col-sm-push-3">
		<div id="main" class="blog-wrapper">
		<div id="primary" class="site-content">
		<div id="content" role="main">
		
		<?php foreach($news as $new){ ?>
		<article id="post-345" class="post-345 post type-post status-publish format-gallery has-post-thumbnail hentry category-slider tag-gallery tag-slider post_format-post-format-gallery blog_entry clearfix">
			<div class="entry-content">
				<div class="category-description std">
					<div class="slider-items-products">
						<div id="category-desc-slider" class="product-flexslider hidden-buttons">
							<div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
								<img src="<?= $new->image?>" alt="blogimage"> 
							</div>
						</div>
					</div>
				</div>
				<header class="blog_entry-header clearfix">
					<div class="blog_entry-header-inner"> 
						<h2 class="blog_entry-title">
							<a href="<?=$ariacms->actual_link?>chi-tiet/<?= $new->url_part?>.html"><?= $new->{$params->title}?></a> 
						</h2>
					</div>
				</header>
				<div class="entry-content"> 
					<ul class="post-meta">
						<li>
							<i class="fa fa-clock-o"></i>
							<a href="#"><?= $ariacms->unixToDate($new->post_created, "/")?></a>
						</li> 
						
					</ul>
				</div>
				<div class="klb-post">
					<p><?= $new->{$params->brief}?></p>
					<div class="klb-readmore"><a href="<?=$ariacms->actual_link?>chi-tiet/<?= $new->url_part?>.html" class="btn">READ MORE</a></div>
				</div>
			</div>
		</article>	
		<?php }?>
		</div>
		</div>
		
			<div class="pager">
				<div class="pages"> 
					<ul class='page-numbers'> 
						<?php if($page > 1 ){?>
						<li><a class="prev page-numbers" href="?page=1">←</a></li>
						<?php }
						for($i =$page-1;$i <$page+2;$i++){
						?>
						<li><?php if($page == $i and $i > 0 ){?><span aria-current="page" class="page-numbers current"><?= $i?></span><?php }else if($i>0 and $i <= $count_page){?><a class="page-numbers" href="?page=<?= $i?>"><?= $i?></a><?php }?></li> 
					<?php }
						 if( $page < $count_page){?>
							<li><a class="next page-numbers" href="?page=<?= $page +1?>">→</a></li> 
						 <?php }?>
					</ul> 
					
					 
				</div>
			</div>
		</div>
		</div>
		<div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9 blog-side">
		<div id="secondary" class="widget_wrapper13" role="complementary">
		<?php $query = "SELECT * FROM `e4_posts` where post_type = 'post' order by id desc limit 0,5";
				$database->setQuery($query);
				$news_latest = $database->loadObjectList();
		?>
		<div class="block widget_popular_posts"><h2 class="widget-title"><?= _LATEST_NEWS?></h2>
			<ul class="posts-list unstyled clearfix">
			<?php foreach($news_latest as $new){?>
				<li> 
					<figure class="featured-thumb"> 
						<a href="<?=$ariacms->actual_link?>chi-tiet/<?= $new->url_part?>.html"> 
							<img onload="Wpfcll.r(this,true);" src="<?= $new->image?>" data-wpfc-original-src="<?= $new->image?>" alt="<?= $new->{$params->title}?>"> 
						</a> 
					</figure> 
					<div class="content-info"> 
						<h4>
							<a href="<?=$ariacms->actual_link?>chi-tiet/<?= $new->url_part?>.html" title="<?= $new->{$params->title}?>"><?= $new->{$params->title}?></a>
						</h4> 
						<p class="post-meta">
							<time class="entry-date"><?= $ariacms->unixToDate($new->post_created, "/")?></time>
						</p>
					</div>
				</li>
			<?php }?>
			</ul>
		</div>
		<?php
		// lấy banner phụ
		$query = "SELECT a.* from e4_web_home a where a.parent > 0 and a.`icon` = 5 and status = 'active' ORDER BY `a`.`order` ";
		$database->setQuery($query);
		$banners = $database->loadObjectList();
		$count_banners = count($banners);
if($count_banners > 0){		
?>

<div class="block widget_product_slider">		
	<div class="custom-slider">
		<div>
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<?php if($count_banners >0){?>
				<ol class="carousel-indicators">
					<?php for($i = 0; $i< $count_banners; $i++){?>
						<li class="<?php if($i == 0) echo 'active'?>" data-target="#carousel-example-generic" data-slide-to="<?=$i?>"></li>
					
					<?php }?>
				</ol>
				<?php }?>
				<div class="carousel-inner">
					
					<?php 
					$i = 0;
					foreach($banners as $banner){
						?>
						<div class="item <?php if($i == 0) echo 'active';?>">
							<img onload="Wpfcll.r(this,true);" src="<?= $banner->image?>" data-wpfc-original-src="<?= $banner->image?>" alt="<?= $banner->{$params->title}?>">
							<div class="carousel-caption"> 
								<h4><?= $banner->{$params->topic}?></h4> 
								<h3><a href="<?= $banner->link?>"><?= $banner->{$params->title}?></a></h3> 
								<p><?= $banner->{$params->brief}?></p> 
								<a class="link" href="<?= $banner->link?>">Buy Now</a>
							</div>
						</div>	
					<?php 
					$i++;
					}?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php }?>
		</div>
		</div>
		</div>
	</div>
</div>
		
	</section>
	<?= $ariacms->getBlock("footer"); ?>
	<?= $ariacms->getBlock("footer_script"); ?>
	</script>
	<script>(function(){
	window.mc4wp=window.mc4wp||{
	listeners: [],
	forms: {
	on: function(evt, cb){
	window.mc4wp.listeners.push({
	event:evt,
	callback: cb
	}
	);
	}}
	}})();</script>
	<script>(function(){function maybePrefixUrlField(){
	if(this.value.trim()!==''&&this.value.indexOf('http')!==0){
	this.value="http://" + this.value;
	}}
	var urlFields=document.querySelectorAll('.mc4wp-form input[type="url"]');
	if(urlFields){
	for (var j=0; j < urlFields.length; j++){
	urlFields[j].addEventListener('blur', maybePrefixUrlField);
	}}
	})();</script>
	<script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/f41ln7h0/2i2e4.js'></script>
	<script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/o8l0w9j/2i2e4.js' id='tinvwl-js'></script>
	<script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/ftsyblfd/2i2e4.js'></script>
	<script>document.addEventListener('DOMContentLoaded',function(){function wpfcgl(){var wgh=document.querySelector('noscript#wpfc-google-fonts').innerText, wgha=wgh.match(/<link[^\>]+>/gi);for(i=0;i<wgha.length;i++){var wrpr=document.createElement('div');wrpr.innerHTML=wgha[i];document.body.appendChild(wrpr.firstChild);}}wpfcgl();});</script>

</body>

</html>