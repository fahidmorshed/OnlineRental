<div class="container">
      
      <?php
        $datestring = "%D %M, %Y - %h:%i %a";
          $time = time();
          $time = gmt_to_local($time);
        
      ?>

      <div class="row">
      
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><?php echo"$row->name $row->last_name";?><strong> > Edit</strong></h3>
              <a href="<?php echo base_url();?>index.php/profileC">Go Back</a>
              
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
                <?php $img = "";
                  if($row->image_id == NULL){
                    $img = "images/users/default_user.jpg";
                  }
                  else{
                    $img = "images/users/".$row->image_id;
                  }
                ?> 

                <img src="<?php echo base_url();?><?php echo"$img";?>" class="img-circle img-responsive"></img>
                <div id="selectImage">
                        <label>Upload New Image</label><br>
                        <?php echo form_open_multipart('upload_controller/do_upload');?> 
                        <?php echo "<input type='file' name='userfile' size='20' id='file'/> "; ?>
                        <?php echo "<input type='submit' name='submit' value='Upload' class='submit'/> ";?>
                        </div>
                        <?php echo "</form>"?>
                <!--<input type='image' src="<?php echo base_url();?>images/extra/browse.png" class="img-box img-responsive" name="image">
                <input type='image' src="<?php echo base_url();?>images/extra/upload.png" class="img-box img-responsive" name="image"> -->
                
                </div>
                
                <div class=" col-md-9 col-lg-9 "> 
                <form method="post" action="<?php echo base_url();?>index.php/profileC/submit_change">
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td><label>Change Email:</label>
                        <input type="email" name="email" id="email" class="form-control" placeholder="<?php echo"$row->email";?>" value="<?php echo"$row->email";?>">
                        </td>
                      </tr>
                      <tr>
                        <td><label>New Password:</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="" value="<?php echo"$row->password";?>">
                        </td>
                      </tr>
                      <tr>
                        <td><label>Change First Name:</label>
                        <input type="text" name="name" id="name" class="form-control" placeholder="<?php echo"$row->name";?>" value="<?php echo"$row->name";?>">
                        </td>
                      </tr>
                      <tr>
                        <td><label>Change Last Name:</label>
                        <input type="text" name="lastname" id="lastname" class="form-control" placeholder="<?php echo"$row->last_name";?>" value="<?php echo"$row->last_name";?>">
                        </td>
                      </tr>
                      <tr>
                        <td><label>Change Phone:</label>
                        <input type="number" name="phone" id="phone" class="form-control" placeholder="<?php echo"$row->phone";?>" value="<?php echo"$row->phone";?>"></td>
                      </tr>
                      <tr>
                        <td><label>Change Address:</label>
                        <input type="text" name="address" id="address" class="form-control" placeholder="<?php echo"$row->address";?>" value="<?php echo"$row->address";?>"></td>
                      </tr>
                      <tr><td>
                        
                      </td>
                      </tr>
                     
                    </tbody>
                  </table>
                  
                  <input type="Submit" class="btn btn-warning" value="Submit Change">
                  <a href="<?php echo base_url();?>index.php/profileC" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                </form>     
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>