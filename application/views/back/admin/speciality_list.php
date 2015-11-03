	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="false" data-show-columns="false" data-search="true" >
			<thead>
				<tr>
					<th><?php echo translate('no');?></th>
					<th><?php echo translate('title');?></th>					
					
					
					<th><?php echo translate('position');?></th>		
					<th class="text-right"><?php echo translate('options');?></th>
				</tr>
			</thead>
	
			<tbody >
			<?php
				$i=0;
            	foreach($all_specialitys as $row){
            		$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
				<td><?php echo $row['title']; ?></td>
				
				<td><?php echo $row['position']; ?></td>
               
				<td class="text-right">
                
                    
                    <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    	onclick="ajax_set_full('edit','<?php echo translate('edit_speciality'); ?>','<?php echo translate('successfully_edited!'); ?>','speciality_edit','<?php echo $row['speciality_id']; ?>')" data-original-title="Edit" data-container="body">
                        	<?php echo translate('edit');?>
                    </a>
                   
                    
				</td>
			</tr>
            <?php
            	}
			?>
			</tbody>
		</table>
	</div>
   