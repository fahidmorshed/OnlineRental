<div class="header-v8 header-sticky">
		<!-- Topbar blog -->
		<div class="blog-topbar">
			
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-xs-8">
						
						<div class="topbar-time"><strong><a href="<?php echo base_url();?>index.php/homeC">Welcome Guest to Online Rental Service</a></strong></div>
						<div class="topbar-toggler"><span class="fa fa-angle-down"></span></div>
						<ul class="topbar-list topbar-menu">
							
							<li><a href="#">Contact</a></li>
							<li><a href="#">About Us</a></li>
							


							<li><strong><a  href="<?php echo base_url();?>index.php/loginC/register" style="color: LightSeaGreen">Register</a></strong></li>
							<li><strong><a class="cd-signin" href="<?php echo base_url();?>index.php/loginC" style="color: DarkOliveGreen ">Login</a></strong></li>

							
						</ul>
					</div>

					
				</div><!--/end row-->
			</div><!--/end container-->
		</div>
		<!-- End Topbar blog -->


		<?php
					$homeA = "";
					$searchA = "";
					$propertyA = "";
					$loginA = "";
					$reviewA = "";
					$registerA = "";
					if($page_name=='home'){
						$homeA = "active";
					}
					else if($page_name=='search'){
						$searchA = "active";
					}
					else if($page_name=='login'){
						$loginA = "active";
					}
					else if($page_name=='registers'){
						$registerA = "active";
					}
					else if($page_name=='recent_reviews'){
						$reviewA = "active";
					}
					
				?>

		<!-- Navbar -->
		<div class="navbar mega-menu" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="res-container">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<div class="navbar-brand">
						<a href="<?php echo base_url();?>index.php/homeC">
							<img src="<?php echo base_url();?>template/front/img/themes/rental.png" alt="Logo">
							Online Rental
						</a>
					</div>
				</div><!--/end responsive container-->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-responsive-collapse">
					<div class="res-container">
						<ul class="nav navbar-nav">
							<!-- Home -->
							<li class="dropdown home <?php echo "$homeA"?>">
								<a href="<?php echo base_url();?>index.php/homeC">
									Home
								</a>
								
							</li>
							<!-- End Home -->

							<!-- Find A Home -->
							<li class="dropdown home <?php echo "$searchA"?>">
								<a href="<?php echo base_url();?>index.php/searchC">
									Find A Home
								</a>
							</li>
							<!-- End Find A Home -->

							<!-- Lifestyle -->
							<li class="dropdown home <?php echo "$reviewA"?>">
								<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
									Recent Reviews
								</a>
								
							</li>
							<!-- End Lifestyle -->

							<!-- Login -->
							<li class="dropdown home <?php echo "$loginA"?>" >
								<a href="<?php echo base_url();?>index.php/loginC">
									Login
								</a>
							</li>
							<!-- Login -->

							<li class="dropdown home <?php echo "$registerA"?>">
								<a href="<?php echo base_url();?>index.php/loginC/register">
									Register
								</a>
							</li>

						</ul>
					</div><!--/responsive container-->
				</div><!--/navbar-collapse-->
			</div><!--/end contaoner-->
		</div>
		<!-- End Navbar -->
	</div>