<?php
global $ariacms;
global $params;
global $database;
global $ariaConfig_template;
	$query = "SELECT * FROM `e4_posts` where post_type = 'post' order by id desc limit 0,5";
	$database->setQuery($query);
	$posts_recent = $database->loadObjectList();
	//echo "AAAAAAAAA";
?>
<!DOCTYPE html>
<html lang="vi">

<head>
	<title><?= ($detail[$params->meta_title] != '') ? $detail[$params->meta_title] : $detail[$params->title]; ?></title>

	<meta name="description" content="<?= ($detail[$params->meta_description] != '') ? $detail[$params->meta_description] : $detail[$params->brief] ?>" />
	<meta name="keywords" content="<?= ($detail[$params->meta_keyword] != '') ? $detail[$params->meta_keyword] : $detail[$params->title]; ?>" />
	<meta property="og:title" content="<?= ($detail[$params->meta_title] != '') ? $detail[$params->meta_title] : $detail[$params->title]; ?>" />
	<meta property="og:description" content="<?= ($detail[$params->meta_description] != '') ? $detail[$params->meta_description] : $detail[$params->brief]; ?>" />
	
	<link rel='dns-prefetch' href='//fonts.googleapis.com'/>
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/l0xw9klt_f9lxl.css" media="all"/>
<style id='rs-plugin-settings-inline-css'>#rs-demo-id{}</style>
<style id='woocommerce-inline-inline-css'>.woocommerce form .form-row .required{visibility:visible;}</style>
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/l9ajug3i/2i2e4.css" media="all"/>
<style id='font-awesome-inline-css'>[data-font="FontAwesome"]:before{font-family:'FontAwesome' !important;content:attr(data-icon) !important;speak:none !important;font-weight:normal !important;font-variant:normal !important;text-transform:none !important;line-height:1 !important;font-style:normal !important;-webkit-font-smoothing:antialiased !important;-moz-osx-font-smoothing:grayscale !important;}</style>
<link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/8uu5fujd_f9lxl.css" media="all"/>

	<?= $ariacms->getBlock("head"); ?>
</head>

<body>
	<?= $ariacms->getBlock("header"); ?>

	<section class="blog-details spad">
		<div class="page-heading">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="page-title"> 
							<h2><?= $detail[$params->title]?></h2>
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
								<article id="post-155" class="post-155 post type-post status-publish format-standard has-post-thumbnail hentry category-images tag-envato tag-image tag-shop blog_entry clearfix">
								<div class="entry-content">
									<div class="featured-thumb"> 
										<a href="<?= $detail['image']?>">
											<img src="<?= $detail['image']?>" alt="Powerful and flexible premium Ecommerce themes"></a>
									</div>
										<header class="blog_entry-header clearfix">
										<div class="blog_entry-header-inner"> 
											<h2 class="blog_entry-title">
												<a href=""><?= $detail[$params->title]?></a> 
											</h2>
										</div>
									</header>
									<div class="entry-content"> 
										<ul class="post-meta"> 
											<li>
												<i class="fa fa-clock-o"></i>
												<a href="#"><?= $ariacms->unixToDate($detail['post_created'], "/")?></a>
											</li>
											
										</ul>
									</div>
									<div class="klb-post"> 
										<?=	$detail[$params->content]?>
									</div>
								</div>
								
								</article>		
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

	</section>
	 
	<?= $ariacms->getBlock("footer"); ?>
	<?= $ariacms->getBlock("footer_script"); ?>
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
<script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/3261ieg8/2i2e4.js'></script>
<script>document.addEventListener('DOMContentLoaded',function(){function wpfcgl(){var wgh=document.querySelector('noscript#wpfc-google-fonts').innerText, wgha=wgh.match(/<link[^\>]+>/gi);for(i=0;i<wgha.length;i++){var wrpr=document.createElement('div');wrpr.innerHTML=wgha[i];document.body.appendChild(wrpr.firstChild);}}wpfcgl();});</script>

</body>

</html>