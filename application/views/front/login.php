<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please Login</h3>
			 	</div>
			  	<div class="panel-body">
			    <form accept-charset="UTF-8" method="post" action="<?php echo base_url();?>index.php/loginC/do_login">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		<?php if($try == "tried")
			    		echo"<div >
			    			<h6 style=\"color: OrangeRed\">Your Email or Password is incorrect. Try Again!</h6>
			 			</div>"
			 			?>
			    		<div class="form-group">
			    			<strong><a  href="<?php echo base_url();?>index.php/loginC/register">Click here to Register now!</a></strong>
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
			    	</fieldset>
			      </form>
			    </div>
			</div>
		</div>
	</div>
</div>