<?php
class View
{
	static function webImageFront()
	{
?>
		<section class="content-header">
			<h1>
				<a class="col-lg-3 col-md-4 col-sm-4 col-xs-12 btn-lg btn btn-warning " href="index.php?module=<?php echo $_REQUEST['module'] ?>"><i class="fa fa-files-o"></i> Quản lý bình luận trang chủ</a>
				<a class="col-lg-1 col-md-2 col-sm-2 col-xs-12 btn btn-success pull-right" href="index.php?module=<?php echo $_REQUEST['module'] ?>">
					Danh sách
				</a>
				<a class="col-lg-1 col-md-2 col-sm-2 col-xs-12 btn btn-success pull-right" href="javascript:void(0);" data-toggle="modal" data-target="#showCNTT" onclick="showCNTT('','ajax/chinhsach/ajax.web_image_add.php');">
					Thêm mới
				</a>
			</h1>
		</section>
<?php
	}
	static function web_image_view($web_images)
	{
		include("admin.html.web_image_view.php");
	}
}
?>