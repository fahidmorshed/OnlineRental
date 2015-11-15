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
              <?php echo"$other_row->name $other_row->last_name";?></a></strong></h3>
              <div>
              <span class="pull-right">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                  </span>
                <p class=" text-info"><small><?php echo mdate($datestring, $time);?></small></p>
                <p style="color: green"><?php echo "$message"?></p>
              </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
                <?php $img = "";
                  if($other_row->image_id == NULL){
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
                        <td><a href="mailto:info@support.com"><?php echo"$other_row->email";?></td>
                      </tr>
                      <tr>
                        <td>Phone:</td>
                        <td><?php echo"$other_row->phone";?></td>
                      </tr>
                      <tr>
                        <td>Address:</td>
                        <td><?php echo"$other_row->address";?></td>
                      </tr>
                   
                        
                     
                    </tbody>
                  </table>
                  
                  <a href="#" class="btn btn-primary"><?php echo "$other_row->name"?>'s Advertisements</a>
                  <a href="#" class="btn btn-primary"><?php echo "$other_row->name"?>'s' Properties</a>
                </div>
              </div>
            </div>
                 <div class="panel-footer pull-right">
                        
                    </div>
            
          </div>
        </div>
      </div>
    </div>