<link rel="stylesheet" href="<?php echo base_url(); ?>template/back//amcharts/style.css" type="text/css">
<script src="<?php echo base_url(); ?>template/back/amcharts/amcharts.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>template/back/amcharts/serial.js" type="text/javascript"></script>
<script src="http://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/tags/markerclusterer/1.0/src/markerclusterer.js"></script>
<script src="<?php echo base_url(); ?>template/back/plugins/gauge-js/gauge.min.js"></script>

<div id="content-container">	
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('dashboard');?></h1>
    </div>
    <div id="page-content">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-4 col-lg-4">
                    <div class="panel panel-bordered panel-purple">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('24_hours_stock');?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="text-center">
                                <canvas id="gauge1" height="70" class="canvas-responsive"></canvas>
                                <p class="h4">
                                    <span class="label label-purple"><?php echo currency();?></span>
                                    <span id="gauge1-txt" class="label label-purple">0</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 col-lg-4">
                    <div class="panel panel-bordered panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('24_hours_sale');?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="text-center">
                                <canvas id="gauge2" height="70" class="canvas-responsive"></canvas>
                                <p class="h4">
                                    <span class="label label-success"><?php echo currency();?></span>
                                    <span id="gauge2-txt" class="label label-success">0</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 col-lg-4">
                    <div class="panel panel-bordered panel-black">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('24_hours_destroy');?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="text-center">
                                <canvas id="gauge3" height="70" class="canvas-responsive"></canvas>
                                <p class="h4">
                                    <span class="label label-black"><?php echo currency();?></span>
                                    <span id="gauge3-txt" class="label label-black">0</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="col-md-12 col-lg-12">
            	<div class="col-md-6 col-lg-6">
                    <div class="panel panel-bordered panel-grad">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('pending_order_map');?></h3>
                        </div>
                        <div class="map-container">
                            <div id="map" class="mapping"></div>
                        </div>
                    </div>
                </div>
            	<div class="col-md-6 col-lg-6">
                    <div class="panel panel-bordered panel-grad2">
                        <div class="panel-heading">
                            <h3 class="panel-title">
								<?php echo translate('present_customer_live_on_your_store');?>
                            </h3>
                        </div>
                        <div class="map-container">
                            <div id="map1" class="mapping"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>

<style>
	  #map-container {
		padding: 6px;
		border-width: 1px;
		border-style: solid;
		border-color: #ccc #ccc #999 #ccc;
		-webkit-box-shadow: rgba(64, 64, 64, 0.5) 0 2px 5px;
		-moz-box-shadow: rgba(64, 64, 64, 0.5) 0 2px 5px;
		box-shadow: rgba(64, 64, 64, 0.1) 0 2px 5px;
		width: 100%;
	  }
	  #map {
		width: 100%;
		height: 400px;
	  }
	  #map1 {
		width: 100%;
		height: 400px;
	  }
	  #actions {
		list-style: none;
		padding: 0;
	  }
	  #inline-actions {
		padding-top: 10px;
	  }
	  .item {
		margin-left: 20px;
	  }
</style>