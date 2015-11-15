<div class="container">
      
      <?php
        $datestring = "%D %M, %Y - %h:%i %a";
          $time = time();
      ?>

      <div class="row">
      
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><strong><a href="<?php echo base_url();?>index.php/profileC">
              <?php echo"$row->name $row->last_name";?></a></strong></h3>
              <a href="<?php echo base_url();?>index.php/profileC/edit">Edit Profile Info</a>
              <div>
                <p class=" text-info"><small><?php echo mdate($datestring, $time);?></small></p>
                <p style="color: green"><?php echo "$message"?></p>
              </div>
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
                </div>
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Email:</td>
                        <td><a href="mailto:info@support.com"><?php echo"$row->email";?></td>
                      </tr>
                      <tr>
                        <td>Phone:</td>
                        <td><?php echo"$row->phone";?></td>
                      </tr>
                      <tr>
                        <td>Address:</td>
                        <td><?php echo"$row->address";?></td>
                      </tr>
                   
                        
                     
                    </tbody>
                  </table>
                  
                  <a href="#" class="btn btn-primary">My Advertisements</a>
                  <a href="#" class="btn btn-primary">My Properties</a>
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            
          </div>
        </div>
      </div>
    </div>