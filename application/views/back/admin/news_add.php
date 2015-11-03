<div class="row">
    <div class="col-md-12">
		<?php
            echo form_open(base_url() . 'index.php/admin/news/do_add/', array(
                'class' => 'form-horizontal',
                'method' => 'post',
                'id' => 'news_add'
            ));
        ?>
            <div class="panel-body">
                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" for="news_title"><?php echo translate('news_title');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="title" id="title" 
                        	placeholder="<?php echo translate('news_title');?>" class="form-control required">
                    </div>
                </div>
                 
                 <div class="form-group ">
                    <label class="col-sm-4 control-label"><?php echo translate('news_summary');?></label>
                   <div class="col-sm-6 abstract">
                       <textarea class="summernotes" data-height="200" data-name="summary" ></textarea>
                   </div>
                </div>
                <div class="form-group ">
                    <label class="col-sm-4 control-label"><?php echo translate('news_description');?></label>
                   <div class="col-sm-6 abstract">
                       <textarea class="summernotes" data-height="200" data-name="description" ></textarea>
                   </div>
                </div>

               <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-2"><?php echo translate('news_image');?></label>
                <div class="col-sm-6">
                    <span class="pull-left btn btn-default btn-file">
                        <?php echo translate('select_news_image');?>
                        <input type="file" name="img" id='imgInp' accept="image">
                    </span>
                    <br><br>
                    <span id='wrap' class="pull-left" >
                        <img src="<?php echo base_url(); ?>uploads/others/photo_default.png" 
                        	width="48.5%" id='blah' > 
                    </span>
                </div>
            </div>

                 <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" for="news_date"><?php echo translate('news_date');?></label>
                    <div class="col-sm-6">
                        <input type="date" name="date" id="date" 
                        	placeholder="<?php echo translate('news_date');?>" class="form-control required">
                    </div>
                </div>

                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" for="news_admin"><?php echo translate('news_admin');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="admin" id="admin" 
                        	placeholder="<?php echo translate('news_admin');?>" class="form-control required">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('news_speciality');?></label>
                    <div class="col-sm-6">
                        <?php echo $this->crud_model->select_html('speciality','speciality_id','title','add','demo-cs-multiselect','') ?>
                    </div>
                 </div>

                 <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" for="news_status"><?php echo translate('news_status');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="status" id="status" 
                        	placeholder="<?php echo translate('news_status');?>" class="form-control required">
                    </div>
                </div>

                  <div class="form-group">
	                <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('category');?></label>
	                <div class="col-sm-6">
	                    <?php echo $this->crud_model->select_html('category','category_id','category_name','add','demo-chosen-select','') ?>
	                </div>
                 </div>


                  <div class="form-group">
	                <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('reporter');?></label>
	                <div class="col-sm-6">
	                    <?php echo $this->crud_model->select_html('reporter','reporter_id','name','add','demo-chosen-select','') ?>
	                </div>
                 </div>


                
              
                                               
            
             
            </div>
    
            <div class="panel-footer">
                <div class="row">
                	<div class="col-md-11">
                        <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn pull-right" 
                            onclick="ajax_set_full('add','<?php echo translate('add_news'); ?>','<?php echo translate('successfully_added!'); ?>','news_add',''); ">
                            	<?php echo translate('reset');?>
                        </span>
                    </div>
                    
                    <div class="col-md-1">
                        <span class="btn btn-success btn-md btn-labeled fa fa-upload pull-right" onclick="form_submit('news_add','<?php echo translate('successfully_added!'); ?>')" ><?php echo translate('upload');?></span>
                    </div>
                    
                </div>
            </div>
    
        </form>
    </div>
</div>
<input type="hidden" id="nums" value='1' />
<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js">
</script>

<script>


    function other_forms(){}
	
	function set_summer(){
        $('.summernotes').each(function() {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
			if(now.closest('.abstract').find('.val').length){
			} else {
            	now.closest('.abstract').append('<input type="hidden" class="val" name="'+n+'">');
				now.summernote({
					height: h,
					onChange: function() {
						now.closest('.abstract').find('.val').val(now.code());
					}
				});
				now.closest('.abstract').find('.val').val(now.code());
			}
        });
	}
	
    $(document).ready(function() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
		set_summer();
    });
    function other(){
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
    }
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#wrap').hide('fast');
				$('#blah').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp").change(function() {
		readURL(this);
	});

	$(document).ready(function() {
		$("form").submit(function(e){
			return false;
		});
	});
	
</script>

<style>
.btm_border{
  border-bottom: 1px solid #ebebeb;
  padding-bottom: 15px;	
}
.remove{
	color:#FFF !important;
	margin-right:5px !important;
	font-size:20px !important;
	transition: all .4s ease-in-out;	
}
.remove:hover{
	color:#003376 !important;	
}
</style>


<!--Bootstrap Tags Input [ OPTIONAL ]-->

