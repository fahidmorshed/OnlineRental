<div class="container">
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
			                   <input type="text" name="name" id="name" class="form-control input-sm" placeholder="Property Name">
			    					</div>
			    				</div>
			    			</div>		
			    			<div class="form-group">
			    				<input type="text" name="fulladdress" id="fulladdress" class="form-control input-sm" placeholder="Full Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="address"  class="form-control input-sm" placeholder="property address">
			    					</div>
			    				</div>
			    			</div>
			    			<input type="submit" value="Add Property" class="btn btn-info btn-block">
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>