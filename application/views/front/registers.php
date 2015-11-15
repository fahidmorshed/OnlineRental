<!--<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="modal-dialog modal-md">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up  <small>It's free!</small></h3>
			 			</div> 
			 			<div class="panel-body">
			    		<form  action="<?php echo base_url();?>index.php/loginC/register/create"  method="post">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                   <input type="text" name="name" id="name" class="form-control input-sm" placeholder="Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="phone" id="last_name" class="form-control input-sm" placeholder="phone">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="address"  class="form-control input-sm" placeholder="address">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div> -->

<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please Sign Up <small> It's free!</small></h3>
			 	</div>
			 	<div class="panel-heading">
			    	<h3 class="panel-title" style="color: red"><small><b><?php echo"$message";?></b></small></h3>
			 	</div>
			  	<div class="panel-body">
			    <form accept-charset="UTF-8" action="<?php echo base_url();?>index.php/loginC/register/create"  method="post"">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control input-sm" placeholder="First Name" name="name" id="name" type="text">
			    		</div>
			    		<div class="form-group">
			    		    <input class="form-control input-sm" placeholder="Last Name" name="lastname" id="lastname" type="text">
			    		</div>
			    		<div class="form-group">
			    		    <input class="form-control input-sm" placeholder="Email@some.com" name="email" id="email" type="email">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" id="password" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Confirm Password" name="cpassword" type="password" id="cpassword" value="">
			    		</div>
			    		<div class="form-group">
			    		    <input class="form-control input-sm" placeholder="Phone" name="phone" id="phone" type="number">
			    		</div>
			    		
			    		<div class="form-group">
			    		    <input class="form-control input-sm" placeholder="Address" name="address" id="address" type="text">
			    		</div>
			    		<div class="form-group">
			    			<strong><a  href="<?php echo base_url();?>index.php/loginC">Already Registered? Click Here!</a></strong>
			    		</div>
			    		<input class="btn btn-lg btn-info btn-block" type="submit" name ='submit' value="Register">
			    	</fieldset>
			      </form>
			    </div>
			</div>
		</div>
	</div>
</div>