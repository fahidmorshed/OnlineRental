<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Crud_model extends CI_Model
{
    /*	
	 *	Developed by: Active IT zone
	 *	Date	: 14 July, 2015
	 *	Active Supershop eCommerce CMS
	 *	http://codecanyon.net/user/activeitezone
	 */
	 
    function __construct()
    {
        parent::__construct();
    }
    
    function clear_cache()
    {
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }
    
    /////////GET NAME BY TABLE NAME AND ID/////////////
    function get_field($type, $type_id = '', $field = 'name')
    {
        if ($type_id != '') {
            $l = $this->db->get_where($type, array(
                $type . '_id' => $type_id
            ));
            $n = $l->num_rows();
            if ($n > 0) {
                return $l->row()->$field;
            }
        }
    }
    
    /////////Filter One/////////////
    function filter_one($table, $type, $value)
    {
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($type, $value);
        return $this->db->get()->result_array();
    }
    
    // FILE_UPLOAD
    function img_thumb($type, $id, $ext = '.jpg', $width = '400', $height = '400')
    {
        $this->load->library('image_lib');
        ini_set("memory_limit", "-1");
        
        $config1['image_library']  = 'gd2';
        $config1['create_thumb']   = TRUE;
        $config1['maintain_ratio'] = TRUE;
        $config1['width']          = $width;
        $config1['height']         = $height;
        $config1['source_image']   = 'uploads/' . $type . '_image/' . $type . '_' . $id . $ext;
        
        $this->image_lib->initialize($config1);
        $this->image_lib->resize();
        $this->image_lib->clear();
    }
    
    // FILE_UPLOAD
    function file_up($name, $type, $id, $multi = '', $no_thumb = '', $ext = '.jpg')
    {
        if ($multi == '') {
            move_uploaded_file($_FILES[$name]['tmp_name'], 'uploads/' . $type . '_image/' . $type . '_' . $id . $ext);
            if ($no_thumb == '') {
                $this->crud_model->img_thumb($type, $id, $ext);
            }
        } elseif ($multi == 'multi') {
            $ib = 1;
            foreach ($_FILES[$name]['name'] as $i => $row) {
                $ib = $this->file_exist_ret($type, $id, $ib);
                move_uploaded_file($_FILES[$name]['tmp_name'][$i], 'uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $ib . $ext);
                if ($no_thumb == '') {
                    $this->crud_model->img_thumb($type, $id . '_' . $ib, $ext);
                }
            }
        }
    }
    
    // FILE_UPLOAD : EXT :: FILE EXISTS
    function file_exist_ret($type, $id, $ib, $ext = '.jpg')
    {
        if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $ib . $ext)) {
            $ib = $ib + 1;
            $ib = $this->file_exist_ret($type, $id, $ib);
            return $ib;
        } else {
            return $ib;
        }
    }
    
    
    // FILE_VIEW
    function file_view($type, $id, $width = '100', $height = '100', $thumb = 'no', $src = 'no', $multi = '', $multi_num = '', $ext = '.jpg')
    {
        if ($multi == '') {
            if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . $ext)) {
                if ($thumb == 'no') {
                    $srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . $ext;
                } elseif ($thumb == 'thumb') {
                    $srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . '_thumb' . $ext;
                }
                
                if ($src == 'no') {
                    return '<img src="' . $srcl . '" height="' . $height . '" width="' . $width . '" />';
                } elseif ($src == 'src') {
                    return $srcl;
                }
            }
            
        } else if ($multi == 'multi') {
            $num    = $this->crud_model->get_field($type, $id, 'num_of_imgs');
            //$num = 2;
            $i      = 0;
            $p      = 0;
            $q      = 0;
            $return = array();
            while ($p < $num) {
                $i++;
                if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext)) {
                    if ($thumb == 'no') {
                        $srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext;
                    } elseif ($thumb == 'thumb') {
                        $srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . '_thumb' . $ext;
                    }
                    
                    if ($src == 'no') {
                        $return[] = '<img src="' . $srcl . '" height="' . $height . '" width="' . $width . '" />';
                    } elseif ($src == 'src') {
                        $return[] = $srcl;
                    }
                    $p++;
                } else {
                    $q++;
                    if ($q == 10) {
                        break;
                    }
                }
                
            }
            if (!empty($return)) {
                if ($multi_num == 'one') {
                    return $return[0];
                } else if ($multi_num == 'all') {
                    return $return;
                } else {
                    $n = $multi_num - 1;
                    unset($return[$n]);
                    return $return;
                }
            } else {
                return false;
            }
        }
    }
    
    
    // FILE_VIEW
    function file_dlt($type, $id, $ext = '.jpg', $multi = '', $m_sin = '')
    {
        if ($multi == '') {
            if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . $ext)) {
                unlink("uploads/" . $type . "_image/" . $type . "_" . $id . $ext);
            }
            if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . "_thumb" . $ext)) {
                unlink("uploads/" . $type . "_image/" . $type . "_" . $id . "_thumb" . $ext);
            }
            
        } else if ($multi == 'multi') {
            $num = $this->crud_model->get_field($type, $id, 'num_of_imgs');
            if ($m_sin == '') {
                $i = 0;
                $p = 0;
                while ($p < $num) {
                    $i++;
                    if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext)) {
                        unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . $ext);
                        $p++;
                        $data['num_of_imgs'] = $num - 1;
                        $this->db->where($type . '_id', $id);
                        $this->db->update($type, $data);
                    }
                    
                    if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . "_thumb" . $ext)) {
                        unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . "_thumb" . $ext);
                    }
                    if ($i > 50) {
                        break;
                    }
                }
            } else {
                if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $m_sin . $ext)) {
                    unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . $ext);
                }
                if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . "_thumb" . $ext)) {
                    unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . "_thumb" . $ext);
                }
                $data['num_of_imgs'] = $num - 1;
                $this->db->where($type . '_id', $id);
                $this->db->update($type, $data);
            }
        }
    }
    
    //DELETE MULTIPLE ITEMS	
    function multi_delete($type, $ids_array)
    {
        foreach ($ids_array as $row) {
            $this->file_dlt($type, $row);
            $this->db->where($type . '_id', $row);
            $this->db->delete($type);
        }
    }
    
    //DELETE SINGLE ITEM	
    function single_delete($type, $id)
    {
        $this->file_dlt($type, $id);
        $this->db->where($type . '_id', $id);
        $this->db->delete($type);
    }
    
    //GET PRODUCT LINK
    function product_link($product_id,$quick='')
    {
		if($quick=='quick'){
			return base_url() . 'index.php/home/quick_view/' . $product_id;
		} else {
			$name = url_title($this->crud_model->get_field('product', $product_id, 'title'));
        	return base_url() . 'index.php/home/product_view/' . $product_id . '/' . $name;
		}
    }
    

    /////////SELECT HTML/////////////
    function select_html($from, $name, $field, $type, $class, $e_match = '', $condition = '', $c_match = '', $onchange = '')
    {
        $return = '';
        $other  = '';
        $multi  = 'no';
        $phrase = 'Choose a ' . $name;
        if ($class == 'demo-cs-multiselect') {
            $other = 'multiple';
            $name  = $name . '[]';
            if ($type == 'edit') {
                $e_match = json_decode($e_match);
                if ($e_match == NULL) {
                    $e_match = array();
                }
                $multi = 'yes';
            }
        }
        $return = '<select name="' . $name . '" onChange="' . $onchange . '(this.value)" class="' . $class . '" ' . $other . '  data-placeholder="' . $phrase . '" tabindex="2" >';
        if (!is_array($from)) {
            if ($condition == '') {
                $all = $this->db->get($from)->result_array();
            } else if ($condition !== '') {
                if(is_array($condition)){
                    foreach ($condition as $key => $llk) {
                        $this->db->where($llk,$c_match[$key]);
                    }
                    $all = $this->db->get($from)->result_array();
                } else {
                    $all = $this->db->get_where($from, array(
                        $condition => $c_match
                    ))->result_array();                    
                }
            }
            
            $return .= '<option value="">Choose one</option>';
            
            foreach ($all as $row):
                if ($type == 'add') {
                    $return .= '<option value="' . $row[$from . '_id'] . '">' . $row[$field] . '</option>';
                } else if ($type == 'edit') {
                    $return .= '<option value="' . $row[$from . '_id'] . '" ';
                    if ($multi == 'no') {
                        if ($row[$from . '_id'] == $e_match) {
                            $return .= 'selected=."selected"';
                        }
                    } else if ($multi == 'yes') {
                        if (in_array($row[$from . '_id'], $e_match)) {
                            $return .= 'selected=."selected"';
                        }
                    }
                    $return .= '>' . $row[$field] . '</option>';
                }
            endforeach;
        } else {
            $all = $from;
            $return .= '<option value="">Choose one</option>';
            foreach ($all as $row):
                if ($type == 'add') {
                    $return .= '<option value="' . $row . '">';
                    if ($condition == '') {
                        $return .= ucfirst(str_replace('_', ' ', $row));
                    } else {
                        $return .= $this->crud_model->get_field($condition, $row, $c_match);
                    }
                    $return .= '</option>';
                } else if ($type == 'edit') {
                    $return .= '<option value="' . $row . '" ';
                    if ($row == $e_match) {
                        $return .= 'selected=."selected"';
                    }
                    $return .= '>';
                    
                    if ($condition == '') {
                        $return .= ucfirst(str_replace('_', ' ', $row));
                    } else {
                        $return .= $this->crud_model->get_field($condition, $row, $c_match);
                    }
                    
                    $return .= '</option>';
                }
            endforeach;
        }
        $return .= '</select>';
        return $return;
    }
    
    //CHECK IF PRODUCT EXISTS IN TABLE
    function exists_in_table($table, $field, $val)
    {
        $ret = '';
        $res = $this->db->get($table)->result_array();
        foreach ($res as $row) {
            if ($row[$field] == $val) {
                $ret = $row[$table . '_id'];
            }
        }
        if ($ret == '') {
            return false;
        } else {
            return $ret;
        }
        
    }
    
    //FORM FIELDS
    function form_fields($array)
    {
        $return = '';
        foreach ($array as $row) {
            $return .= '<div class="form-group">';
            $return .= '    <label class="col-sm-4 control-label" for="demo-hor-inputpass">' . $row . '</label>';
            $return .= '    <div class="col-sm-6">';
            $return .= '       <input type="text" name="ad_field_values[]" id="demo-hor-inputpass" class="form-control">';
            $return .= '       <input type="hidden" name="ad_field_names[]" value="' . $row . '" >';
            $return .= '    </div>';
            $return .= '</div>';
        }
        return $return;
    }
    
    // PAGINATION
    function pagination($type, $per, $link, $f_o, $f_c, $other, $current, $seg = '3', $ord = 'desc')
    {
        $t   = explode('#', $other);
        $t_o = $t[0];
        $t_c = $t[1];
        $c   = explode('#', $current);
        $c_o = $c[0];
        $c_c = $c[1];
        
        $this->load->library('pagination');
        $this->db->order_by($type . '_id', $ord);
        $config['total_rows']  = $this->db->count_all_results($type);
        $config['base_url']    = base_url() . $link;
        $config['per_page']    = $per;
        $config['uri_segment'] = $seg;
        
        $config['first_link']      = '&laquo;';
        $config['first_tag_open']  = $t_o;
        $config['first_tag_close'] = $t_c;
        
        $config['last_link']      = '&raquo;';
        $config['last_tag_open']  = $t_o;
        $config['last_tag_close'] = $t_c;
        
        $config['prev_link']      = '&lsaquo;';
        $config['prev_tag_open']  = $t_o;
        $config['prev_tag_close'] = $t_c;
        
        $config['next_link']      = '&rsaquo;';
        $config['next_tag_open']  = $t_o;
        $config['next_tag_close'] = $t_c;
        
        $config['full_tag_open']  = $f_o;
        $config['full_tag_close'] = $f_c;
        
        $config['cur_tag_open']  = $c_o;
        $config['cur_tag_close'] = $c_c;
        
        $config['num_tag_open']  = $t_o;
        $config['num_tag_close'] = $t_c;
        $this->pagination->initialize($config);
        
        $this->db->order_by($type . '_id', $ord);
        return $this->db->get($type, $config['per_page'], $this->uri->segment($seg))->result_array();
    }
    
    //IF PRODUCT ADDED TO CART
    function is_added_to_cart($product_id, $set = '', $op = '')
    {
        $carted = $this->cart->contents();
        //var_dump($carted);
        if (count($carted) > 0) {
            foreach ($carted as $items) {
                if ($items['id'] == $product_id) {
                    
                    if ($set == '') {
                        return true;
                    } else {
                        if($set == 'option'){
                            $option = json_decode($items[$set],true);
                            return $option[$op]['value'];
                        } else {
                            return $items[$set];
                        }
                    }
                }
            }
        } else {
            return false;
        }
    }
    
    
    //GETTING IDS OF A TABLE FILTERING SPECIFIC TYPE OF VALUE RANGE
    function ids_between_values($table, $value_type, $up_val, $down_val)
    {
        $this->db->order_by($table . '_id', 'desc');
        return $this->db->get_where($table, array(
            $value_type . ' <=' => $up_val,
            $value_type . ' >=' => $down_val
        ))->result_array();
    }
    
    //DAYS START-END TIMESTAMP
    function date_timestamp($date, $type)
    {
        $date = explode('-', $date);
        $d    = $date[2];
        $m    = $date[1];
        $y    = $date[0];
        if ($type == 'start') {
            return mktime(0, 0, 0, $m, $d, $y);
        }
        if ($type == 'end') {
            return mktime(0, 0, 0, $m, $d + 1, $y);
        }
    }
    
    
    //GETTING BOOTSTRAP COLUMN VALUE
    function boot($num)
    {
        return (12 / $num);
    }
    
    //GETTING LIMITING CHARECTER
    function limit_chars($string, $char_limit)
    {
        $length = 0;
        $return = array();
        $words  = explode(" ", $string);
        foreach ($words as $row) {
            $length += strlen($row);
            $length += 1;
            if ($length < $char_limit) {
                array_push($return, $row);
            } else {
                array_push($return, '...');
                break;
            }
        }
        
        return implode(" ", $return);
    }
    
    //GETTING LOGO BY TYPE
    function logo($type)
    {
        $logo = $this->db->get_where('ui_settings', array(
            'type' => $type
        ))->row()->value;
        return base_url() . 'uploads/logo_image/logo_' . $logo . '.png';
    }
    

    function is_added_by($type,$id,$user_id,$user_type = 'vendor')
    {
        $added_by = json_decode($this->db->get_where($type,array($type.'_id'=>$id))->row()->added_by,true);
        if($user_type == 'admin'){
            $user_id = $added_by['id'];
        }
		$this->benchmark->mark_time();
        if($added_by['type'] == $user_type && $added_by['id'] == $user_id){
            return true;
        } else {
            return false;
        }
    }


    
    //GETTING ADMIN PERMISSION
    function admin_permission($codename)
    {
        if ($this->session->userdata('admin_login') != 'yes') {
            return false;
        }
        /*
        $admin_id   = $this->session->userdata('admin_id');
        $admin      = $this->db->get_where('admin', array(
            'admin_id' => $admin_id
        ))->row();
		$this->benchmark->mark_time();
        $permission = $this->db->get_where('permission', array(
            'codename' => $codename
        ))->row()->permission_id;
        if ($admin->role == 1) {
            return true;
        } else {
            $role             = $admin->role;
            $role_permissions = json_decode($this->crud_model->get_field('role', $role, 'permission'));
            if (in_array($permission, $role_permissions)) {
        */
                return true;
        /*
            } else {
                return false;
            }
        }
        */
    }
    
    //GETTING NUMBER OF WISHED PRODUCTS BY CURRENT USER
    function user_wished()
    {
        $user = $this->session->userdata('user_id');
        return count(json_decode($this->get_field('user', $user, 'wishlist')));
    }
    
    //ADDING PRODUCT TO WISHLIST
    function add_wish($product_id)
    {
        $user = $this->session->userdata('user_id');
        if ($this->get_field('user', $user, 'wishlist') !== 'null') {
            $wished = json_decode($this->get_field('user', $user, 'wishlist'));
        } else {
            $wished = array();
        }
        if ($this->is_wished($product_id) == 'no') {
            array_push($wished, $product_id);
            $this->db->where('user_id', $user);
            $this->db->update('user', array(
                'wishlist' => json_encode($wished)
            ));
        }
    }
    
    //REMOVING PRODUCT FROM WISHLIST
    function remove_wish($product_id)
    {
        $user = $this->session->userdata('user_id');
        if ($this->get_field('user', $user, 'wishlist') !== 'null') {
            $wished = json_decode($this->get_field('user', $user, 'wishlist'));
        } else {
            $wished = array();
        }
        $wished_new = array();
        foreach ($wished as $row) {
            if ($row !== $product_id) {
                $wished_new[] = $row;
            }
        }
        $this->db->where('user_id', $user);
        $this->db->update('user', array(
            'wishlist' => json_encode($wished_new)
        ));
    }
    
    
    //NUMBER OF WISHED PRODUCTS
    function wished_num()
    {
        $user = $this->session->userdata('user_id');
        if ($this->get_field('user', $user, 'wishlist') !== '') {
            return count(json_decode($this->get_field('user', $user, 'wishlist')));
        } else {
            return 0;
        }
    }
    
    
    //IF PRODUCT IS ADDED TO CURRENT USER'S WISHLIST
    function is_wished($product_id)
    {
        if ($this->session->userdata('user_login') == 'yes') {
            $user = $this->session->userdata('user_id');
            //$wished = array('0');
            if ($this->get_field('user', $user, 'wishlist') !== '') {
                $wished = json_decode($this->get_field('user', $user, 'wishlist'));
            } else {
                $wished = array(
                    '0'
                );
            }
            if (in_array($product_id, $wished)) {
                return 'yes';
            } else {
                return 'no';
            }
        } else {
            return 'no';
        }
    }
    
    //GETTING TOTAL WISHED PRODUCTT BY USER
    function total_wished($product_id)
    {
        $num   = 0;
        $users = $this->db->get('user')->result_array();
        foreach ($users as $row) {
            $wishlist = json_decode($row['wishlist']);
            if (is_array($wishlist)) {
                if (in_array($product_id, $wishlist)) {
                    $num++;
                }
            }
            
        }
        return $num;
    }
    
    
    //GETTING IP DATA OF PEOPLE BROWING THE SYSTEM
    function ip_data()
    {
        if(!$this->input->is_ajax_request()){
            $this->session->set_userdata('timestamp', time());
            $user_data = $this->session->userdata('surfer_info');
            $ip        = $_SERVER['REMOTE_ADDR'];
            if (!$user_data) {
                if ($_SERVER['HTTP_HOST'] !== 'localhost') {
                    $ip_data = file_get_contents("http://ip-api.com/json/" . $ip);
                    $this->session->set_userdata('surfer_info', $ip_data);
                }
            }
        }
    }
    
    function seo_stat($type='') {
        try {
            $url = base_url();
            $seostats = new \SEOstats\SEOstats;
            if ($seostats->setUrl($url)) {

                if($type == 'facebook'){
                    return SEOstats\Services\Social::getFacebookShares();
                }
                elseif ($type == 'gplus') {
                    return SEOstats\Services\Social::getGooglePlusShares();
                }
                elseif ($type == 'twitter') {
                    return SEOstats\Services\Social::getTwitterShares();
                }
                elseif ($type == 'linkedin') {
                    return SEOstats\Services\Social::getLinkedInShares();
                }
                elseif ($type == 'pinterest') {
                    return SEOstats\Services\Social::getPinterestShares();
                }

                elseif ($type == 'alexa_global') {
                    return SEOstats\Services\Alexa::getGlobalRank();
                }
                elseif ($type == 'alexa_country') {
                    return SEOstats\Services\Alexa::getCountryRank();
                }

                elseif ($type == 'alexa_bounce') {
                    return SEOstats\Services\Alexa::getTrafficGraph(5);
                }
                elseif ($type == 'alexa_time') {
                    return SEOstats\Services\Alexa::getTrafficGraph(4);
                }
                elseif ($type == 'alexa_traffic') {
                    return SEOstats\Services\Alexa::getTrafficGraph(1);
                }
                elseif ($type == 'alexa_pageviews') {
                    return SEOstats\Services\Alexa::getTrafficGraph(2);
                }

                elseif ($type == 'google_siteindex') {
                    return SEOstats\Services\Google::getSiteindexTotal();
                }
                elseif ($type == 'google_back') {
                    return SEOstats\Services\Google::getBacklinksTotal();
                }
                elseif ($type == 'search_graph_1') {
                    return SEOstats\Services\SemRush::getDomainGraph(1);
                }
                elseif ($type == 'search_graph_2') {
                    return SEOstats\Services\SemRush::getDomainGraph(2);
                }

            }
        }
        catch(\Exception $e) {
            echo 'Caught SEOstatsException: ' . $e->getMessage();
        }
    }	

    function get_special($speciality,$limit){
        $this->db->limit($limit);
        $this->db->like('speciality_id','"'.$speciality.'"','both');
        $this->db->order_by('news_id','desc');
        return $this->db->get('news')->result_array();
    }

    function get_category($category,$limit){
        $this->db->limit($limit);
        $this->db->where('category_id',$category);
        $this->db->order_by('news_id','desc');
        return $this->db->get('news')->result_array();
    }
    
}






