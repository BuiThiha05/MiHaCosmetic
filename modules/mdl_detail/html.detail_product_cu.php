<?php
global $ariacms;
global $params;
global $database;
global $ariaConfig_template;
global $analytics_code;
	
	
		
	$quantity =(trim($_REQUEST["quantity"]) != '' && trim($_REQUEST["quantity"]) != 'undefined') ? trim($_REQUEST["quantity"]) : 1;
	$query = "SELECT * FROM `e4_posts` where post_type = 'product' order by rating desc limit 0,6";
	$database->setQuery($query);
	$products_rating = $database->loadObjectList();
	$count_comment =0;
	
	$query = "SELECT * FROM `e4_posts` where post_type = 'product' order by rating desc limit 0,6";
	$database->setQuery($query);
	$products_rating = $database->loadObjectList();
	
		// danh mục con
	$query =  'SELECT c.id,c.parent FROM `e4_posts` a LEFT JOIN e4_term_relationships b on a.id = b.object_id LEFT JOIN e4_term_taxonomy c on c.id = b.term_taxonomy_id WHERE a.id = '.$detail[id].' and c.taxonomy = "product_category"';
	$database->setQuery($query);
	$category = $database->loadRow();
	//danh mục cha
	$dad_category =  'SELECT id FROM `e4_term_taxonomy` WHERE parent = '.$category['parent'].' and taxonomy = "product_category"';
	
	$query = "SELECT * FROM `e4_posts_image` where object_id =".$detail["id"] ;
	$database->setQuery($query);
	$products_image = $database->loadObjectList();
	
	$query = "SELECT * FROM `e4_comment` where post_id = ".$detail[id]." order by id asc";
	$database->setQuery($query);
	$comments = $database->loadObjectList();
	$comment_count =count($comments);
	
	// sản phẩm liên quan
	$query = "SELECT a.* FROM `e4_posts` a where a.id in (select a.id from `e4_posts` a 
																					LEFT JOIN e4_term_relationships b on a.id = b.object_id 
																					LEFT JOIN e4_term_taxonomy c on c.id = b.term_taxonomy_id 
																					WHERE a.post_type = 'product' and a.id != {$detail['id']} and c.id in(".$dad_category.")) order by a.id desc limit 0,6";
	$database->setQuery($query);
	$products_recent = $database->loadObjectList();
	
?>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?=$detail["title_vi"]?></title>
    <link rel='dns-prefetch' href='//fonts.googleapis.com' />
    <link rel="alternate" type="application/rss+xml" title="Qualis - Responsive eCommerce Theme &raquo; Feed" href="https://klbtheme.com/qualis/feed/" />
    <link rel="alternate" type="application/rss+xml" title="Qualis - Responsive eCommerce Theme &raquo; Comments Feed" href="https://klbtheme.com/qualis/comments/feed/" />
    <link rel="alternate" type="application/rss+xml" title="Qualis - Responsive eCommerce Theme &raquo; Organic Grape Tomatoes Comments Feed" href="https://klbtheme.com/qualis/product/organic-grape-tomatoes/feed/" />
    <link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/l0xw9klt_f9lvt.css" media="all" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <style id='rs-plugin-settings-inline-css'>
        #rs-demo-id {}
    </style>
    <link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/6xwxuhgu_f9m46.css" media="all" />
    <style id='woocommerce-inline-inline-css'>
        .woocommerce form .form-row .required {
            visibility: visible;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/l9ajug3i_f9lvt.css" media="all" />
    <style id='font-awesome-inline-css'>
        [data-font="FontAwesome"]:before {
            font-family: 'FontAwesome' !important;
            content: attr(data-icon) !important;
            speak: none !important;
            font-weight: normal !important;
            font-variant: normal !important;
            text-transform: none !important;
            line-height: 1 !important;
            font-style: normal !important;
            -webkit-font-smoothing: antialiased !important;
            -moz-osx-font-smoothing: grayscale !important;
        }
    </style>
	
    <link rel="stylesheet" type="text/css" href="<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/css/8uu5fujd_f9lxl.css" media="all" />
   	<?php $ariacms->getBlock("head"); ?>
</head>

<body class="product-template-default single single-product postid-94 theme-qualis mmm mega_main_menu-2-1-7 woocommerce woocommerce-page woocommerce-no-js tinvwl-theme-style wpb-js-composer js-comp-ver-6.4.2 vc_responsive">
    <div id="preloader"></div>
    <div >
		<?= $ariacms->getBlock("header"); ?>	
       <div class="page-heading">
		
		<div class="page-title"> <h2><?=$detail[$params->title]?></h2></div>
	</div>
        <div class="main-container col1-layout">
            <div class="main">
                <div class="col-main">
                    <div class="product-view" itemscope="" itemtype="http://schema.org/Product" itemid="#product_base">
                        <div class="woocommerce-notices-wrapper"></div>
                        <div id="product-94" class="blog_entry clearfix product type-product post-94 status-publish first instock product_cat-vegetables has-post-thumbnail shipping-taxable purchasable product-type-simple">
                            <div class="product-essential container">
                                <div class="row">
                                    <div class="product-img-box col-lg-5 col-sm-5 col-xs-12">
										<?php if($detail['product_price'] > 0){?>
										<div class="new-label new-top-left">Hot</div>
										<div class="sale-label sale-top-left">-<?= number_format((($detail['product_price']-$detail['product_sale'] )/$detail['product_price'])* 100,0) ?>%</div>
                                        <?php }?>
										<div class="product-image woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-4 images" data-columns="4" style="opacity: 0; transition: opacity .25s ease-in-out;">
                                            <figure class="woocommerce-product-gallery__wrapper">
                                                <div data-thumb="<?= $detail['image']?>" data-thumb-alt=""  class="woocommerce-product-gallery__image">
                                                    <a href="#"><img width="600" height="600" src="<?= $detail['image']?>" class="wp-post-image" alt="" loading="lazy" title="p3" data-caption="" data-src="<?= $detail['image']?>"
                                                            data-large_image="<?= $detail['image']?>" data-large_image_width="800" data-large_image_height="800" srcset="<?= $detail['image']?> 600w, <?= $detail['image']?> 150w, <?= $detail['image']?> 300w, <?= $detail['image']?> 768w, <?= $detail['image']?> 450w, <?= $detail['image']?> 80w, <?= $detail['image']?> 99w, <?= $detail['image']?> 800w"
                                                            sizes="(max-width: 600px) 100vw, 600px" /></a>
                                                </div>
												<?php foreach($products_image as $product_image){?>
													<div data-thumb="<?= $product_image->image_link?>" data-thumb-alt="" class="woocommerce-product-gallery__image">
														<a href="#"><img width="600" height="600" src="<?= $product_image->image_link?>" class="wp-post-image" alt="" loading="lazy" title="p3" data-caption="" data-src="<?= $product_image->image_link?>"
																data-large_image="<?= $product_image->image_link?>" data-large_image_width="800" data-large_image_height="800" srcset="<?= $product_image->image_link?> 600w, <?= $product_image->image_link?> 150w, <?= $product_image->image_link?> 300w, <?= $product_image->image_link?> 768w, <?= $product_image->image_link?> 450w, <?= $product_image->image_link?> 80w, <?= $product_image->image_link?> 99w, <?= $product_image->image_link?> 800w"
																sizes="(max-width: 600px) 100vw, 600px" /></a>
													</div>
												<?php }?>
                                            </figure>
                                        </div>
										
                                    </div>
									<?php 
									$query = "SELECT a.* FROM `e4_posts` a where a.id = (select min(a.id) from `e4_posts` a 
																					LEFT JOIN e4_term_relationships b on a.id = b.object_id 
																					LEFT JOIN e4_term_taxonomy c on c.id = b.term_taxonomy_id 
																					WHERE a.post_type = 'product' and a.id > {$detail['id']} and c.id in(".$dad_category."))" ;
										$database->setQuery($query);
										$products_next = $database->loadRow();
										
										$query = "SELECT a.* FROM `e4_posts` a where a.id = (select max(a.id) from `e4_posts` a 
																					LEFT JOIN e4_term_relationships b on a.id = b.object_id 
																					LEFT JOIN e4_term_taxonomy c on c.id = b.term_taxonomy_id 
																					WHERE a.post_type = 'product' and a.id < {$detail['id']} and c.id in(".$dad_category."))" ;
										$database->setQuery($query);
										$products_prev = $database->loadRow();
									
									
									?>
                                    <div class="product-shop col-lg- col-sm-7 col-xs-12">
                                        <div class="product-next-prev"> 
										<?php if(isset($products_next)){?>
											<a rel="next" class="product-next" href="<?= $ariacms->actual_link ?>chi-tiet/<?= $products_next['url_part']?>.html" title="<?= $products_next[$params->title]?>">
												<span></span>
											</a> 
										<?php }if(isset($products_prev)){?>
											<a rel="prev" href="<?= $ariacms->actual_link ?>chi-tiet/<?= $products_prev['url_part']?>.html"
													title="<?= $products_prev[$params->title]?>" class="product-prev"><span></span>
											</a>
											<?php }?>
										</div>
                                        <div class="product-name">
                                            <h1 class="product_title entry-title">  <?= $detail[$params->title]?></h1>
                                        </div>
                                        <div class="woocommerce-product-rating">
                                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:<?= ($detail['rating']/5)*100?>%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                            </div>
											<a href="#reviews" class="woocommerce-review-link" rel="nofollow">(<span class="count"><?= $comment_count?></span> customer review)</a></div>
                                        <p class="price">
											<?php if($detail['product_price']>0){?>
											<del>
												<span class="woocommerce-Price-amount amount">
													<bdi><?= number_format($detail['product_price'],0,""," ")?></bdi><span class="woocommerce-Price-currencySymbol">Đ</span>
												</span>
											</del>
											<?php }?>
											<span class="woocommerce-Price-amount amount">
												<bdi><span class="woocommerce-Price-currencySymbol"></span><?= number_format($detail['product_sale'],0,""," ")?><span class="woocommerce-Price-currencySymbol">Đ</span></bdi>
											 </span>
                                        </p>
                                        <div class="add-to-box">
                                            <div class="add-to-cart">
                                                
                                                    <div class="pull-left">
                                                        <div class="custom pull-left">
                                                            <div class="quantity"> 
																<label class="screen-reader-text" for="quantity_5fcffe151afba"><?= $detail[$params->title]?></label>
																<button class="minus reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
																<input type="text" id="quantity" class="count input-text qty input-text qty text" step="10" min="1" max="" name="quantity" value="<?= $quantity?>" title="Qty" size="4" placeholder="" inputmode="numeric"/> 
																<button class="plus increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
															</div>
                                                        </div>
                                                    </div>
													<a href="#" class="button btn-cart"  onclick="addCart(<?= $detail['id']?>)"><?= _ADD_TO_CART?></a>
                                                
                                            </div>
                                        </div>
                                        <div class="woocommerce-product-details__short-description">
                                            <p><?= $detail[$params->brief]?></p>
                                        </div>
                                        <div class="tinv-wraper woocommerce tinv-wishlist tinvwl-shortcode-add-to-cart" data-product_id="<?= $detail['id']?>">
                                            <div class="tinv-wishlist-clear"></div>
											<a href="#" onclick="addWish(<?= $detail['id']?>)" role="button" aria-label="Add to Wishlist" class="tinvwl_add_to_wishlist_button tinvwl-icon-heart tinvwl-position-shortcode" data-tinv-wl-list="[]" data-tinv-wl-product="94" data-tinv-wl-productvariation="0"
                                                data-tinv-wl-productvariations="[0]" data-tinv-wl-producttype="simple" data-tinv-wl-action="add">
												<span class="tinvwl_add_to_wishlist-text"><?= _ADD_TO_WISHLIST?></span></a>
                                            <div class="tinv-wishlist-clear"></div>
                                            <div class="tinvwl-tooltip"><?= _ADD_TO_WISHLIST?></div>
                                        </div>
                                        <div class="social social-container">
                                            <ul class="link">
                                                <li class="fb">
                                                    <a href="<?=$ariacms->web_information->facebook ?>" class="facebook" aria-label="Share this page with Facebook" role="button"></a>
                                                </li>
                                                <li class="tw">
                                                    <a href="<?=$ariacms->web_information->twitter ?>" class="twitter" aria-label="Share this page with Twitter"></a>
                                                </li>
                                                <li class="googleplus">
                                                    <a href="#" class="googleplus" aria-label="Share this page with Google Plus"></a>
                                                </li>
                                                
                                            </ul>
                                        </div>
										
                                        <ul class="shipping-pro">
                                            <?= $detail[$params->chinhsach]?>
                                        </ul>
									
                                        <!--div class="product_meta"> <span class="sku_wrapper">SKU: <span class="sku">K27SA62</span></span> <span class="posted_in">Category: <a href="" rel="tag">Vegetables</a></span></div-->
                                    </div>
                                </div>
                            </div>
							
                            <div class="product-collateral container" >
								<div class="woocommerce-tabs wc-tabs-wrapper" >
									<ul id="product-detail-tab" class="nav nav-tabs product-tabs tabs wc-tabs" role="tablist">
										<li class="description_tab" id="tab-title-description" role="tab" aria-controls="tab-description"> <a href="#tab-description"><?= _DESCRIPTION?></a> </li>
										<li class="reviews_tab" id="tab-title-reviews" role="tab" aria-controls="tab-reviews"> <a href="#tab-reviews"> <?= _REVIEWS?> (<?= $comment_count?>) </a> </li>
									</ul>
									<div id="productTabContent" class="tab-content">
										<div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab" id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">
											<?= $detail[$params->content]?>
										</div>
										<div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--reviews panel entry-content wc-tab" id="tab-reviews" role="tabpanel" aria-labelledby="tab-title-reviews">
											<div id="reviews" class="woocommerce-Reviews">
											<?php if($count_comment > 0){?>
												<div id="comments">
													<h2 class="woocommerce-Reviews-title">
														<?= $count_comment?> review for <span><?= $detail[$params->title]?></span> </h2>
													<ol class="commentlist">
														<li class="review byuser comment-author-sinan bypostauthor even thread-even depth-1" id="li-comment-6">
															<div id="comment-6" class="comment_container"> 
																<img onload="Wpfcll.r(this,true);" src="https://klbtheme.com/qualis/wp-content/plugins/wp-fastest-cache-premium/pro/images/blank.gif" alt='' data-wpfc-original-src='https://secure.gravatar.com/avatar/3384f98a21c5dce2051e8f5a20928b05?s=60&#038;d=mm&#038;r=g'
																	data-wpfc-original-srcset='https://secure.gravatar.com/avatar/3384f98a21c5dce2051e8f5a20928b05?s=120&#038;d=mm&#038;r=g 2x' class='avatar avatar-60 photo' height='60' width='60' loading='lazy'/>
																<div class="comment-text">
																	<div class="star-rating" role="img" aria-label="Rated 5 out of 5"><span style="width:100%">Rated <strong class="rating">5</strong> out of 5</span></div>
																	<p class="meta"> <strong class="woocommerce-review__author">admin </strong> <span class="woocommerce-review__dash">&ndash;</span> <time class="woocommerce-review__published-date" datetime="2018-12-24T08:57:39+03:00">24 December 2018</time>                                                                        </p>
																	<div class="description">
																		<p>Donec rutrum congue leo eget malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
																	</div>
																</div>
															</div>
														</li>
													</ol>
												</div>
											<?php }else{?>
												<div id="review">
													<h2 class="woocommerce-Reviews-title">
														<?= $comment_count?> <?= _review_for?> <span><?= $detail[$params->title]?></span> 
													</h2>
													<?php if($comment_count>0){?>
													<ol class="commentlist">
														<?php foreach($comments as $comment){?>
														<li class="review byuser comment-author-sinan bypostauthor even thread-even depth-1" id="li-comment-3"> 
															<div id="comment-3" class="comment_container"> 
																<img src="<?= $ariacms->actual_link ?>upload//mac-dinh.jpg" alt="" data-wpfc-original-srcset="<?= $ariacms->actual_link ?>upload//mac-dinh.jpg 2x" class="avatar avatar-60 photo" height="60" width="60" loading="lazy" srcset="<?= $ariacms->actual_link ?>upload//mac-dinh.jpg 2x"> 
																<div class="comment-text"> 
																	<div class="star-rating" role="img" aria-label="Rated <?= $comment->rating?> out of 5">
																		<span style="width:<?= ($comment->rating/5)*100?>%">Rated <strong class="rating"><?= $comment->rating?></strong> out of 5</span>
																	</div>
																	<p class="meta"> 
																		<strong class="woocommerce-review__author"><?= $comment->name?></strong> 
																			<span class="woocommerce-review__dash">–</span> 
																			<time class="woocommerce-review__published-date" datetime="2018-12-17T10:49:57+03:00"><?= $ariacms->unixToDate($comment->date_comment, "/") . " " . $ariacms->unixToTime($comment->date_comment, ":") ?></time>
																	</p> 
																	<div class="description">
																		<p><?= $comment->content?></p>
																	</div>
																</div>
															</div>
														</li>
														<?php }?>
													</ol>
													
													<?php }
													}?>
												</div>
												<div id="review_form_wrapper">
													<div id="review_form">
														<div id="respond" class="comment-respond">
															<span id="reply-title" class="comment-reply-title"><?= _Add_a_review?><small><a rel="nofollow" id="cancel-comment-reply-link" href="#respond" style="display:none;">Cancel reply</a></small></span>
															<form  method="post" id="commentform" class="comment-form">
																<p class="comment-notes">
																	<span id="email-notes"><?= _Your_email_address?> <span class="required">*</span>
																</p>
																<div class="comment-form-rating">
																	<label for="rating"><?=_Your_rating?>;&nbsp;<span class="required">*</span></label>
																	<select name="rating" id="rating" required> 
																		<option value="">Rate&hellip;</option> 
																		<option value="5" >Perfect</option> 
																		<option value="4">Good</option> 
																		<option value="3">Average</option> 
																		<option value="2">Not that bad</option> 
																		<option value="1">Very poor</option> 
																	</select>
																</div>
																<p class="comment-form-comment">
																	<label for="content"><?= _Your_review?>&nbsp;<span class="required">*</span></label>
																	<textarea id="content" name="content" cols="45" rows="8" required></textarea>
																</p>
																<p class="comment-form-author">
																	<label for="name"><?= _NAME?>&nbsp;<span class="required">*</span></label>
																	<input id="name" name="name" type="text" value="" size="30" required />
																</p>
																<p class="comment-form-email">
																	<label for="email">Email&nbsp;<span class="required">*</span></label>
																	<input id="email" name="email" type="email" value="" size="30" required />
																</p>
																<p class="form-submit">
																	<a onclick="comment(<?= $detail['id']?>);" name="submit" id="submit" class="btn btn-success" ><?= _Submit?> <a/> 
																</p>
															</form>
														</div>
													</div>
												</div>
												
												<div class="clear"></div>
											</div>
										</div>
									</div>
									
								</div>
								<script>
													function comment(id){
														
														var rating = $("#rating").val();
														if ( rating < 1) {													  
														    return;
														}
														
														var content = $("#content").val();
														if ( content == "") {
														   alert("Bạn chưa điền comment");
														   document.getElementById("content").focus();
														    return;
														}
														
														var name = $("#name").val();
														if (name == "") {
														   alert("Bạn chưa điền tên");
														   document.getElementById("name").focus();
														    return;
														   
														}
														
														var mail = $("#email").val();
														if (!mail.includes("@")) {
														   alert("Bạn chưa điền mail");
														    document.getElementById("email").focus();
														   return;
														}												
														var f = "id=" + id + "&rating=" + rating + "&content=" + content+"&name=" + name+"&mail=" + mail;
														var _url = "<?= $ariacms->actual_link ?>ajax/ajax.comment.php?"+f;
														$.ajax({
															url: _url,
															data: f,
															cache: false,
															context: document.body,
															success: function(data) {
																alert("Đánh giá thành công");
																$("#review").html(data);
															}
														});
													}
												</script>
                                <div class="box-additional">
                                    <div class="related-pro container">
                                        <div class="slider-items-products">
                                            <div class="new_title center">
                                                <h2><?= _RELATED_PRODUCTS?></h2>
                                            </div>
                                            <div id="related-slider" class="product-flexslider hidden-buttons">
                                                <div class="slider-items slider-width-col4 products-grid">
												<?php foreach($products_rating as $product_rating){?>
													<div class="owl-item" style="width: 248px;">
														<div class="item">
															<a href="<?= $product_rating->url_part?>.html" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a>
															<div class="item-inner">
																<a href="<?= $product_rating->url_part?>.html" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a>
																<div class="item-img">
																	<a href="<?= $product_rating->image?>.html" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a>
																	<div class="item-img-info">
																		<a href=<?= $product_rating->url_part?>.html" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a>
																		<a href="<?= $product_rating->url_part?>.html" title="Organic Sweet Banana" class="product-image">
																			<img src="<?= $product_rating->image?>" alt="Organic Sweet Banana">
																		</a>
																		<?php if($product_rating->product_price > 0){?>
																			<div class="new-label new-top-left">Hot</div>
																			<div class="sale-label sale-top-left">-<?= number_format((($product_rating->product_price-$product_rating->product_sale )/$product_rating->product_price)* 100,0) ?>%</div>
																		<?php }?>
																			
																		<div class="item-box-hover">
																			<div class="box-inner">
																				<div class="product-detail-bnt">
																					<a class="button detail-bnt" onclick="view(<?= $product_rating->id?>)">
																						<span>Quick View</span>
																					</a>
																				</div>
																				<div class="actions">
																					<span class="add-to-links">
																						<div class="tinv-wraper woocommerce tinv-wishlist tinvwl-shortcode-add-to-cart" data-product_id="114">
																							<div class="tinv-wishlist-clear"></div>
																								<a onclick="addWish(<?= $product_rating->id?>)" role="button" aria-label="Add to Wishlist" class="tinvwl_add_to_wishlist_button fa fa-heart tinvwl-position-shortcode" data-tinv-wl-list="[]" data-tinv-wl-product="114" data-tinv-wl-productvariation="0" data-tinv-wl-productvariations="[0]" data-tinv-wl-producttype="simple" data-tinv-wl-action="add">
																									<span class="tinvwl_add_to_wishlist-text">Add to Wishlist</span>
																								</a>
																								<div class="tinv-wishlist-clear"></div>
																								<div class="tinvwl-tooltip">Add to Wishlist</div>
																						</div>
																						
																					</span>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="add_cart">
																		<a onclick="addCart(<?= $product_rating->id?>)" data-quantity="1" class="button btn-cart button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="114" data-product_sku="K67SA62" aria-label="Add “Organic Sweet Banana” to your cart" rel="nofollow"><span>Add to cart</span></a>
																	</div>
																</div>
																<div class="item-info">
																	<div class="info-inner">
																		<div class="item-title">
																			<a href="#" title="<?=$product_rating->title_vi?>"><?=$product_rating->title_vi?></a>
																		</div>
																		<div class="item-content">
																			<div class="rating">
																				<div class="ratings">
																					<div class="star-rating" role="img" aria-label="Rated <?=$product_rating->rating?> out of 5">
																						<span style="width:<?= ($product_rating->rating/5)*100?>%">Rated <strong class="rating"><?=$product_rating->rating?></strong> out of 5</span>
																					</div>
																				</div>
																			</div>
																			<div class="item-price">
																				<div class="price-box">
																					<span class="regular-price">
																						<span class="price">
																						<?php if($product_rating->product_price>0){?>
																							<del>
																								<span class="woocommerce-Price-amount amount">
																									<bdi><?=number_format($product_rating->product_price,0,""," ")?><span class="woocommerce-Price-currencySymbol">Đ</span></bdi>
																								</span>
																							</del> 
												<?php }?>
																							<ins>
																								<span class="woocommerce-Price-amount amount">
																									<bdi><?=number_format($product_rating->product_sale,0,""," ")?><span class="woocommerce-Price-currencySymbol">Đ</span></bdi>
																								</span>
																							</ins>
																						</span> 
																					</span>
																				</div>
																			</div>
																		</div>
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
       
        <div class="ajaxphp-results" id="view"></div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
		<?= $ariacms->getBlock("footer"); ?>
    </div>
    <script type="application/ld+json">
        {
            "@context": "https:\/\/schema.org\/",
            "@graph": [{
                "@context": "https:\/\/schema.org\/",
                "@type": "BreadcrumbList",
                "itemListElement": [{
                    "@type": "ListItem",
                    "position": 1,
                    "item": {
                        "name": "Home",
                        "@id": "https:\/\/klbtheme.com\/qualis"
                    }
                }, {
                    "@type": "ListItem",
                    "position": 2,
                    "item": {
                        "name": "Vegetables",
                        "@id": "https:\/\/klbtheme.com\/qualis\/product-category\/vegetables\/"
                    }
                }, {
                    "@type": "ListItem",
                    "position": 3,
                    "item": {
                        "name": "Organic Grape Tomatoes",
                        "@id": "https:\/\/klbtheme.com\/qualis\/product\/organic-grape-tomatoes\/"
                    }
                }]
            }, {
                "@context": "https:\/\/schema.org\/",
                "@type": "Product",
                "@id": "https:\/\/klbtheme.com\/qualis\/product\/organic-grape-tomatoes\/#product",
                "name": "Organic Grape Tomatoes",
                "url": "https:\/\/klbtheme.com\/qualis\/product\/organic-grape-tomatoes\/",
                "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero.",
                "image": "https:\/\/klbtheme.com\/qualis\/wp-content\/uploads\/2018\/12\/p3.jpg",
                "sku": "K27SA62",
                "offers": [{
                    "@type": "Offer",
                    "price": "7.99",
                    "priceValidUntil": "2021-12-31",
                    "priceSpecification": {
                        "price": "7.99",
                        "priceCurrency": "GBP",
                        "valueAddedTaxIncluded": "false"
                    },
                    "priceCurrency": "GBP",
                    "availability": "http:\/\/schema.org\/InStock",
                    "url": "https:\/\/klbtheme.com\/qualis\/product\/organic-grape-tomatoes\/",
                    "seller": {
                        "@type": "Organization",
                        "name": "Qualis - Responsive eCommerce Theme",
                        "url": "https:\/\/klbtheme.com\/qualis"
                    }
                }],
                "aggregateRating": {
                    "@type": "AggregateRating",
                    "ratingValue": "5.00",
                    "reviewCount": 1
                },
                "review": [{
                    "@type": "Review",
                    "reviewRating": {
                        "@type": "Rating",
                        "bestRating": "5",
                        "ratingValue": "5",
                        "worstRating": "1"
                    },
                    "author": {
                        "@type": "Person",
                        "name": "admin"
                    },
                    "reviewBody": "Donec rutrum congue leo eget malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    "datePublished": "2018-12-24T08:57:39+03:00"
                }]
            }]
        }
    </script>
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="pswp__bg"></div>
        <div class="pswp__scroll-wrap">
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>
            <div class="pswp__ui pswp__ui--hidden">
                <div class="pswp__top-bar">
                    <div class="pswp__counter"></div><button class="pswp__button pswp__button--close" aria-label="Close (Esc)"></button>
                    <button class="pswp__button pswp__button--share" aria-label="Share"></button>
                    <button class="pswp__button pswp__button--fs" aria-label="Toggle fullscreen"></button>
                    <button class="pswp__button pswp__button--zoom" aria-label="Zoom in/out"></button>
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div><button class="pswp__button pswp__button--arrow--left" aria-label="Previous (arrow left)"></button>
                <button class="pswp__button pswp__button--arrow--right" aria-label="Next (arrow right)"></button>
                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>
        </div>
    </div><noscript id="wpfc-google-fonts"><link rel='stylesheet' id='qualis-font-css' href='//fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700|Oswald:300,400,500,600,700|Open+Sans:700,600,800,400|Rubik:400,400i,500,500i,700,700i,900&#038;subset=latin,latin-ext' type='text/css' media='all'/>
</noscript>
    <script id='wc-add-to-cart-js-extra'>
        var wc_add_to_cart_params = {
            "ajax_url": "\/qualis\/wp-admin\/admin-ajax.php",
            "wc_ajax_url": "\/qualis\/?wc-ajax=%%endpoint%%",
            "i18n_view_cart": "View cart",
            "cart_url": "https:\/\/klbtheme.com\/qualis\/cart\/",
            "is_cart": "",
            "cart_redirect_after_add": "no"
        };
    </script>
    <script>
        (function() {
            var c = document.body.className;
            c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
            document.body.className = c;
        })()
    </script>
    <script id='contact-form-7-js-extra'>var wpcf7={"apiSettings":{"root":"https:\/\/klbtheme.com\/qualis\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"}};</script>
<script id='wc-single-product-js-extra'>var wc_single_product_params={"i18n_required_rating_text":"Hãy đánh giá sản phẩm","review_rating_required":"yes","flexslider":{"rtl":false,"animation":"slide","smoothHeight":true,"directionNav":false,"controlNav":"thumbnails","slideshow":false,"animationSpeed":500,"animationLoop":false,"allowOneSlide":false},"zoom_enabled":"","zoom_options":[],"photoswipe_enabled":"1","photoswipe_options":{"shareEl":false,"closeOnScroll":false,"history":false,"hideAnimationDuration":0,"showAnimationDuration":0},"flexslider_enabled":"1"};
 </script>
<script id='woocommerce-js-extra'>var woocommerce_params={"ajax_url":"\/qualis\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/qualis\/?wc-ajax=%%endpoint%%"};</script>
<script id='wc-cart-fragments-js-extra'>var wc_cart_fragments_params={"ajax_url":"\/qualis\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/qualis\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_b82fd1e602d3929a2e8e26009ed3c00d","fragment_name":"wc_fragments_b82fd1e602d3929a2e8e26009ed3c00d","request_timeout":"5000"};</script>
<script id='yith-woocompare-main-js-extra'>var yith_woocompare={"ajaxurl":"\/qualis\/?wc-ajax=%%endpoint%%","actionadd":"yith-woocompare-add-product","actionremove":"yith-woocompare-remove-product","actionview":"yith-woocompare-view-table","actionreload":"yith-woocompare-reload-product","added_label":"Added","table_title":"Product Comparison","auto_open":"yes","loader":"https:\/\/klbtheme.com\/qualis\/wp-content\/plugins\/yith-woocommerce-compare\/assets\/images\/loader.gif","button_text":"Compare","cookie_name":"yith_woocompare_list","close_label":"Close"};</script>
<script id='tinvwl-js-extra'>var tinvwl_add_to_wishlist={"text_create":"Create New","text_already_in":"Product already in Wishlist","simple_flow":"","hide_zero_counter":"","i18n_make_a_selection_text":"Please select some product options before adding this product to your wishlist.","tinvwl_break_submit":"No items or actions are selected.","tinvwl_clipboard":"Copied!","allow_parent_variable":"","block_ajax_wishlists_data":"","update_wishlists_data":"","hash_key":"ti_wishlist_data_b82fd1e602d3929a2e8e26009ed3c00d","nonce":"520807b1db","rest_root":"https:\/\/klbtheme.com\/qualis\/wp-json\/","plugin_url":"https:\/\/klbtheme.com\/qualis\/wp-content\/plugins\/ti-woocommerce-wishlist\/"};</script>
<script id='qualis-quick-ajax-js-extra'>var MyAjax={"ajaxurl":"https:\/\/klbtheme.com\/qualis\/wp-admin\/admin-ajax.php","security":"5ede86eb2a","current_page":"1","per_page":"0"};</script>
<script id='qualis-slidetext-js-extra'>var slidetext={"speed":"3000"};</script>
<script id='wp-util-js-extra'>var _wpUtilSettings={"ajax":{"url":"\/qualis\/wp-admin\/admin-ajax.php"}};</script>
<script id='wc-add-to-cart-variation-js-extra'>var wc_add_to_cart_variation_params={"wc_ajax_url":"\/qualis\/?wc-ajax=%%endpoint%%","i18n_no_matching_variations_text":"Sorry, no products matched your selection. Please choose a different combination.","i18n_make_a_selection_text":"Please select some product options before adding this product to your cart.","i18n_unavailable_text":"Sorry, this product is unavailable. Please choose a different combination."};</script>
<script id='qualis-plus-minus-js-extra'>var quantityklb={"maxklb":""};</script>
<script id='qualis-related-products-js-extra'>var related={"displayitem":"5"};</script>
    <script src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/js1.js'></script>
    <script>
        function setREVStartSize(e) {
            try {
                var pw = document.getElementById(e.c).parentNode.offsetWidth,
                    newh;
                pw = pw === 0 || isNaN(pw) ? window.innerWidth : pw;
                e.tabw = e.tabw === undefined ? 0 : parseInt(e.tabw);
                e.thumbw = e.thumbw === undefined ? 0 : parseInt(e.thumbw);
                e.tabh = e.tabh === undefined ? 0 : parseInt(e.tabh);
                e.thumbh = e.thumbh === undefined ? 0 : parseInt(e.thumbh);
                e.tabhide = e.tabhide === undefined ? 0 : parseInt(e.tabhide);
                e.thumbhide = e.thumbhide === undefined ? 0 : parseInt(e.thumbhide);
                e.mh = e.mh === undefined || e.mh == "" || e.mh === "auto" ? 0 : parseInt(e.mh, 0);
                if (e.layout === "fullscreen" || e.l === "fullscreen")
                    newh = Math.max(e.mh, window.innerHeight);
                else {
                    e.gw = Array.isArray(e.gw) ? e.gw : [e.gw];
                    for (var i in e.rl)
                        if (e.gw[i] === undefined || e.gw[i] === 0) e.gw[i] = e.gw[i - 1];
                    e.gh = e.el === undefined || e.el === "" || (Array.isArray(e.el) && e.el.length == 0) ? e.gh : e.el;
                    e.gh = Array.isArray(e.gh) ? e.gh : [e.gh];
                    for (var i in e.rl)
                        if (e.gh[i] === undefined || e.gh[i] === 0) e.gh[i] = e.gh[i - 1];
                    var nl = new Array(e.rl.length),
                        ix = 0,
                        sl;
                    e.tabw = e.tabhide >= pw ? 0 : e.tabw;
                    e.thumbw = e.thumbhide >= pw ? 0 : e.thumbw;
                    e.tabh = e.tabhide >= pw ? 0 : e.tabh;
                    e.thumbh = e.thumbhide >= pw ? 0 : e.thumbh;
                    for (var i in e.rl) nl[i] = e.rl[i] < window.innerWidth ? 0 : e.rl[i];
                    sl = nl[0];
                    for (var i in nl)
                        if (sl > nl[i] && nl[i] > 0) {
                            sl = nl[i];
                            ix = i;
                        }
                    var m = pw > (e.gw[ix] + e.tabw + e.thumbw) ? 1 : (pw - (e.tabw + e.thumbw)) / (e.gw[ix]);
                    newh = (e.type === "carousel" && e.justify === "true" ? e.gh[ix] : (e.gh[ix] * m)) + (e.tabh + e.thumbh);
                }
                if (window.rs_init_css === undefined) window.rs_init_css = document.head.appendChild(document.createElement("style"));
                document.getElementById(e.c).height = newh;
                window.rs_init_css.innerHTML += "#" + e.c + "_wrapper { height: " + newh + "px }";
            } catch (e) {
                console.log("Failure at Presize of Slider:" + e)
            }
        };
    </script>
    <script>
        (function() {
            window.mc4wp = window.mc4wp || {
                listeners: [],
                forms: {
                    on: function(evt, cb) {
                        window.mc4wp.listeners.push({
                            event: evt,
                            callback: cb
                        });
                    }
                }
            }
        })();
    </script>
    <script>
        (function() {
            function maybePrefixUrlField() {
                if (this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
                    this.value = "http://" + this.value;
                }
            }
            var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
            if (urlFields) {
                for (var j = 0; j < urlFields.length; j++) {
                    urlFields[j].addEventListener('blur', maybePrefixUrlField);
                }
            }
        })();
    </script>
    <script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/js2.js'></script>
    <script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/js3.js' id='tinvwl-js'></script>
    <script defer src='<?= $ariacms->actual_link ?>templates/<?= $ariaConfig_template ?>/js/js4.js'></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            function wpfcgl() {
                var wgh = document.querySelector('noscript#wpfc-google-fonts').innerText,
                    wgha = wgh.match(/<link[^\>]+>/gi);
                for (i = 0; i < wgha.length; i++) {
                    var wrpr = document.createElement('div');
                    wrpr.innerHTML = wgha[i];
                    document.body.appendChild(wrpr.firstChild);
                }
            }
            wpfcgl();
        });
    </script>

</body>

</html>
<!-- WP Fastest Cache file was created in 0.42042589187622 seconds, on 09-12-20 1:28:37 -->
