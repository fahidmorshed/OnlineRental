<nav id="mainnav-container">
    <div id="mainnav">
        <!--Menu-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content" style="overflow-x:auto;">
                    <ul id="mainnav-menu" class="list-group">
                        <!--Category name-->
                        <li class="list-header"></li>
                        <!--Menu list item-->
                        <li <?php if($page_name=="dashboard"){?> class="active-link" <?php } ?> 
                        	style="border-top:1px solid rgba(69, 74, 84, 0.7);">
                            <a href="<?php echo base_url(); ?>index.php/admin/">
                                <i class="fa fa-tachometer"></i>
                                <span class="menu-title">
									<?php echo translate('dashboard');?>
                                </span>
                            </a>
                        </li>


                        <?php
                            if($this->crud_model->admin_permission('news')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="news"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/news/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('news');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>


                        <?php
                            if($this->crud_model->admin_permission('video')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="video"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/video/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('video');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>
                                                
                        <?php
                            if($this->crud_model->admin_permission('blog') ){
                        ?>
                        <li <?php if($page_name=="blog" || $page_name=="blog_category" ){?>
                                     class="active-sub" 
                                        <?php } ?> >
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">
                                    <?php echo translate('blog');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="blog" || $page_name=="blog_category"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
                                <?php
                                    if($this->crud_model->admin_permission('blog')){
                                ?>
                                <li <?php if($page_name=="blog"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/blog/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('all_blogs');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->crud_model->admin_permission('blog')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="blog_category"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/blog_category/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('all_blog_categories');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
                        <?php
                            }
                        ?>

                        
                        <?php
                            if($this->crud_model->admin_permission('user')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="user"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/user/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('users');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>


                        <?php
                            if($this->crud_model->admin_permission('reporter')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="reporter"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/reporter/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('reporter');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>
                         
                        <?php
                            if($this->crud_model->admin_permission('speciality')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="speciality"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/speciality/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('speciality');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>

                        <?php
                            if($this->crud_model->admin_permission('poll')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="poll"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/poll/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('poll');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>


                        

                        
                        <?php
                            if($this->crud_model->admin_permission('page')){
                        ?>                      
                            <li <?php if($page_name=="page"){?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/page/">
                                    <i class="fa fa-file-text"></i>
                                    <span class="menu-title">
                                        <?php echo translate('create_new_page');?>
                                    </span>
                                </a>
                            </li>
                        <?php
                            }
                        ?>


                        

            			<?php
                        	if($this->crud_model->admin_permission('site_settings') ||
								$this->crud_model->admin_permission('banner')){
						?>
                        <li <?php if($page_name=="banner" || 
										$page_name=="site_settings" ){?>
                                         class="active-sub" 
                                            <?php } ?> >
                            <a href="#">
                                <i class="fa fa-desktop"></i>
                                    <span class="menu-title">
                                		<?php echo translate('front_settings');?>
                                    </span>
                                		<i class="fa arrow"></i>
                            </a>
            
                            <!--Submenu-->
                            <ul class="collapse <?php if($page_name=="banner" || 
    														$page_name=="site_settings" ){?>
                                                             in
                                                                <?php } ?>" >
                                
								
								
                                <?php
                                    if($this->crud_model->admin_permission('banner')){
                                ?>
                                    <!--Menu list item-->
                                    <li <?php if($page_name=="banner"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/banner/">
                                            <i class="fa fa-circle fs_i"></i>
                                            	<?php echo translate('banner_settings');?>
                                        </a>
                                    </li>
                                    <!--Menu list item-->
                                <?php
                                    }
                                ?>
								<?php
                                    if($this->crud_model->admin_permission('site_settings')){
                                ?>                      
                                    <li <?php if($page_name=="site_settings"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/site_settings/general_settings/">
                                            <i class="fa fa-circle fs_i"></i>
                                            	<?php echo translate('site_settings');?>
                                        </a>
                                    </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>



                        <?php
                            if($this->crud_model->admin_permission('widget')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="widget"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/widget/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('widget');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>
                        

                         <?php
                            if($this->crud_model->admin_permission('menu')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="menu"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/menu/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('menu');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>


                         <?php
                            if($this->crud_model->admin_permission('useful_link')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="useful_link"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/useful_link/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('useful_link');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>


                        <?php
                            if($this->crud_model->admin_permission('gallery')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="gallery"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/gallery/">
                                <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('gallery');?>
                                    </span>
                            </a>
                        </li>
                        <!--Menu list item-->
                        <?php
                            }
                        ?>
                        
                        
            			<?php
                        	if($this->crud_model->admin_permission('role') ||
								$this->crud_model->admin_permission('admin') ){
						?>
                        <li <?php if($page_name=="role" || 
                                        $page_name=="admin" ){?>
                                             class="active-sub" 
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">
                                	<?php echo translate('staffs');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="admin" || 
															$page_name=="role"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
								<?php
                                    if($this->crud_model->admin_permission('admin')){
                                ?>
                                <li <?php if($page_name=="admin"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/admins/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('all_staffs');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->crud_model->admin_permission('role')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="role"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/role/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('staff_permissions');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>
                        
            			<?php
                        	if($this->crud_model->admin_permission('newsletter') ||
								$this->crud_model->admin_permission('contact_message') ){
						?>
                        <li <?php if($page_name=="newsletter" || 
                                        $page_name=="contact_message" ){?>
                                             class="active-sub" 
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-envelope"></i>
                                <span class="menu-title">
                                	<?php echo translate('messaging');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="newsletter" || 
															$page_name=="contact_message"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
								<?php
                                    if($this->crud_model->admin_permission('newsletter')){
                                ?>
                                <li <?php if($page_name=="newsletter"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/newsletter">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('newsletters');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                
                                <?php
                                    if($this->crud_model->admin_permission('contact_message')){
                                ?>
                                <li <?php if($page_name=="contact_message"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/contact_message">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('contact_messages');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>

                        <?php
                            if($this->crud_model->admin_permission('seo')){
                        ?>
                        <li <?php if($page_name=="seo_settings"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/seo_settings">
                                <i class="fa fa-search-plus"></i>
                                <span class="menu-title">
                                    SEO
                                </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>

                       
                        
                        <?php
                            if($this->crud_model->admin_permission('language')){
                        ?> 
                        <li <?php if($page_name=="language"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/language_settings">
                                <i class="fa fa-language"></i>
                                <span class="menu-title">
                                    <?php echo translate('language');?>
                                </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        
                        
                        <li <?php if($page_name=="manage_admin"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/manage_admin/">
                                <i class="fa fa-lock"></i>
                                <span class="menu-title">
                                	<?php echo translate('manage_admin_profile');?>
                                </span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="http://activeitzone.com/check/" class="activate_bar" target="_blank">
                                <i class="fa fa-check-circle"></i>
                                <span class="menu-title">
                                	<?php echo translate('activate');?>
                                </span>
                            </a>
                        </li>
                </div>
            </div>
        </div>
    </div>
</nav>
<style>
.activate_bar{
border-left: 3px solid #1ACFFC;	
transition: all .6s ease-in-out;
}
.activate_bar:hover{
border-bottom: 3px solid #1ACFFC;
transition: all .6s ease-in-out;
background:#1ACFFC !important;
color:#000 !important;	
}
</style>