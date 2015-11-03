</br>
</br>
</br>
</br>
</br> 
</br>
<div class="container">
  <div class="row">
    <style>body {
    padding-top: 50px;
}
.dropdown.dropdown-lg .dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}
.btn-group .form-horizontal .btn[type="submit"] {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.form-horizontal .form-group {
    margin-left: 0;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}

@media screen and (min-width: 768px) {
    #adv-search {
        width: 500px;
        margin: 0 auto;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 500px;
    }
}</style>
<form class="form-horizontal" role="form" method="post" action="<?php echo base_url();?>index.php/searchC/get_result">
    <div class="col-md-12">
            <div class="input-group" id="adv-search">
                <input type="text" class="form-control" placeholder="Search for homes..." name="keywords"/>
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                        
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Bed Rooms</label>
                                    <select class="form-control">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">More Than 3</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Minimum Rent</label>
                                    <input class="form-control" type="text" />
                                  </div>

                                  <div class="form-group">
                                    <label for="contain">Maximum Rent</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <form class="form-horizontal" role="form" >
                                  <div class="form-group">
                                    <label for="filter">Select City</label>
                                    <select class="form-control">
                                        <option value="1">Dhaka</option>
                                        <option value="2">Chittagong</option>
                                        <option value="3">Khulna</option>
                                        <option value="4">Rajshahi</option>
                                        <option value="5">Barisal</option>
                                        <option value="6">Bagerhat</option>
                                        <option value="7">Bandarban</option>
                                        <option value="8">Comilla</option>
                                    </select>
                                  </div>
                                  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                </form>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                        
                    </div>
                </div>
            </div>
          </div>
        </div>
  </div>
  </form>
</div>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>