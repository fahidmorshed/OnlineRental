
<!-- JS Global Compulsory -->
<script src="<?php echo base_url();?>template/front/plugins/jquery/jquery.min.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/jquery/jquery-migrate.min.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script src="<?php echo base_url();?>template/front/plugins/back-to-top.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/smoothScroll.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/counter/waypoints.min.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/counter/jquery.counterup.min.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/master-slider/masterslider/masterslider.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/master-slider/masterslider/jquery.easing.min.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/modernizr.js"></script>
<script src="<?php echo base_url();?>template/front/plugins/login-signup-modal-window/js/main.js"></script> <!-- Gem jQuery -->
<!-- JS Customization -->
<script src="<?php echo base_url();?>template/front/js/custom.js"></script>
<!-- JS Page Level -->
<script src="<?php echo base_url();?>template/front/js/app.js"></script>
<script src="<?php echo base_url();?>template/front/js/plugins/fancy-box.js"></script>
<script src="<?php echo base_url();?>template/front/js/plugins/owl-carousel.js"></script>
<?php
	if(isset($slider)){
		if($slider == 'slider'){
?>
<script src="<?php echo base_url();?>template/front/js/plugins/master-slider-showcase1.js"></script>
<?php
		} else if($slider=='slider1'){
?>
<script src="<?php echo base_url();?>template/front/js/plugins/master-slider-showcase4.js"></script>
<?php
		} else if($slider=='slider2'){
?>
<script src="<?php echo base_url();?>template/front/js/plugins/master-slider-showcase3.js"></script>
<?php
		}
	}
?>

<script>
	jQuery(document).ready(function() {
		App.init();
		App.initCounter();
		FancyBox.initFancybox();
		OwlCarousel.initOwlCarousel();
		OwlCarousel.initOwlCarousel2();

		<?php
	if(isset($slider)){
		if($slider == 'slider'){
		 ?>
		    MasterSliderShowcase1.initMasterSliderShowcase1();
		 <?php
				} else if($slider=='slider1'){
		?>
		      MasterSliderShowcase4.initMasterSliderShowcase4();
		<?php
				} else if($slider=='slider2'){
		?>
		      MasterSliderShowcase3.initMasterSliderShowcase3();
		<?php
				}
			}
		?>
	
		
	});
</script>
<!--[if lt IE 9]>
	<script src="<?php echo base_url();?>template/front/plugins/respond.js"></script>
	<script src="<?php echo base_url();?>template/front/plugins/html5shiv.js"></script>
	<script src="<?php echo base_url();?>template/front/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->