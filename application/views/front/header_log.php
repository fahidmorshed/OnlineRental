<div class="header-v8 header-sticky">
		<!-- Topbar blog -->
		<div class="blog-topbar">
			
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-xs-8">
						<?php $username = $this->session->userdata('user_name');
							if($username == ""){
								$username = "Guest";
							}
						?>
						<div class="topbar-time"><strong><a href="<?php echo base_url();?>index.php/homeC">Welcome <?php echo "$username";?> to Online Rental Service</a></strong></div>
						<div class="topbar-toggler"><span class="fa fa-angle-down"></span></div>
						<ul class="topbar-list topbar-menu">
							
							<li><a href="#">Contact</a></li>
							<li><a href="#">About Us</a></li>
							
							<li><strong><a class="cd-signin" style="color: FireBrick" href="<?php echo base_url();?>index.php/loginC/do_loggout">Loggout</a></strong></li>
							
						</ul>
					</div>

					
				</div><!--/end row-->
			</div><!--/end container-->
		</div>
		<!-- End Topbar blog -->

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
							<li class="dropdown home active">
								<a href="<?php echo base_url();?>index.php/homeC">
									Home
								</a>
								
							</li>
							<!-- End Home -->

							<!-- Find A Home -->
							<li class="dropdown mega-menu-fullwidth">
								<a href="<?php echo base_url();?>index.php/searchC">
									Find A Home
								</a>
							</li>
							<!-- End Find A Home -->

							<!-- Post Ad -->
							<li class="dropdown mega-menu-fullwidth">
								<a href="<?php echo base_url();?>index.php/propertyC">
									Post Property
								</a>
							</li>
							<!-- End Post Ad -->

							<!-- My Profile -->
							<li class="dropdown mega-menu-fullwidth">
								<a href="<?php echo base_url();?>index.php/profileC">
									My Profile
								</a>
								
							</li>
							<!-- End My Profile -->

							<!-- Lifestyle -->
							<li class="dropdown mega-menu-fullwidth">
								<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
									Recent Reviews
								</a>
								
							</li>
							<!-- End Lifestyle -->
							<li class="dropdown mega-menu-fullwidth">
								<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
									Inbox
								</a>
								
							</li>
						</ul>
					</div><!--/responsive container-->
				</div><!--/navbar-collapse-->
			</div><!--/end contaoner-->
		</div>
		<!-- End Navbar -->
	</div>