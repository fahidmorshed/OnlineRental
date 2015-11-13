<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<?php include 'includes_top.php'; ?>
</head>

<body class="header-fixed header-fixed-space-v2">
<div class="wrapper">
	<!--=== Header v8 ===-->
	<?php //include 'header.php'; 
	date_default_timezone_set('Asia/Dhaka');
	$username = $this->session->userdata('user_name');
	if($username == ""){
		include 'header.php';
	}
	else{
		include 'header_log.php';
	}
	?>
	<!--=== End Header v8 ===-->

	<!-- Master Slider -->
	<?php 
		if(isset($slider)){
			include $slider.'.php';
		} 
	?>
	<!-- End Master Slider -->

	<!--=== Container Part ===-->
	<?php include $page_name.'.php'; ?>	
	<!--=== End Container Part ===-->
<?php include 'footer.php'; ?>
</div><!--/wrapper-->

<?php include 'includes_bottom.php'; ?>

</body>
</html>
