<?php 
	$sql_se             = DB_que("SELECT * FROM `#_seo` LIMIT 1");
	$sql_se             = mysql_fetch_assoc($sql_se);
	$favico             = Show_text($sql_se['favico']);
	$duongdantin        = Show_text($sql_se['duongdantin']);
	$favico = "../$duongdantin/$favico";


	//them
	function LUU_anh_bs($imageData, $folder, $fileName, $folder_thumb, $wid, $hig, $anh_thumb = ''){
		list($type, $imageData) = explode(';', $imageData);
	    list(,$extension) 		= explode('/',$type);
	    list(,$imageData)     	= explode(',', $imageData);
	    if($fileName == "") {
	    	$fileName 	= uniqid().'.'.$extension;
	    } 
	    else {
	    	$fileName 	= time().'-'.$fileName;
	    }
	    $imageData 	= base64_decode($imageData);
	    file_put_contents($folder.$fileName, $imageData);

	    $check 		= getimagesize($folder . $fileName);
	    $imgsize 	= filesize($folder . $fileName) / 1024 / 1024;
	    if(is_array($check) && $imgsize <= 1) {
	    // TAO_anhthumb($folder . $fileName, $folder_thumb . $fileName, $wid, $hig, $anh_thumb);
	    	return $fileName;
	    }

	    @unlink($folder . $fileName);
	    return false;
	}

	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "upload_images_post"){ 
		$img_bs 	= isset($_POST['img_bs']) ? $_POST['img_bs'] : ""; 
		$anh_sp 	= isset($_POST['anh_sp']) ? $_POST['anh_sp'] : ""; 
		$img_name 	= isset($_POST['img_name']) ? $_POST['img_name'] : ""; 

		// 
		$duongdantin 		= 'datafiles/abc';
		$duongdantin_thumb 	= 'datafiles/abc';
		// 

		$img_so 	= isset($_POST['img_so']) && is_numeric($_POST['img_so']) ? $_POST['img_so'] : 0; 
		$id_sp 		= isset($_POST['id_sp']) && is_numeric($_POST['id_sp']) ? $_POST['id_sp'] : 0; 
		if($img_bs != "") {
			$anh_sp   = explode("x", $_REQUEST['anh_sp']);
            $wid      = !empty($anh_sp[0]) ? $anh_sp[0] : 300;
            $hig      = !empty($anh_sp[1]) ? $anh_sp[1] : 300;

            $icon     = LUU_anh_bs($img_bs, "../".$duongdantin."/", $img_name, "../" . $duongdantin_thumb . "/", $wid, $hig, "images/trang_" . $wid . "_" . $hig . ".png");
            if($icon) {
            	$data   					= array();
	            $data['id_parent']          = $id_sp;
	            $data['icon']               = $icon;
	            $data['catasort']           = $img_so;
	            $data['uid']                = 0;//$check_domain['id'];
	            $id = ACTION_db($data, "#_baiviet_img_1" , 'add', NULL, NULL);
	            // $id = ACTION_db($data, "#_baiviet_img" , 'add', NULL, NULL);

	            $return = array("id" => $id, "img" => $fullpath."/". $duongdantin_thumb . "/".$icon, "name" => $icon);
	            echo json_encode($return);
	            exit();
            }
			
		}
		$return = array("id" => 0, "img" => "", "name" => "");
        echo json_encode($return);
		exit();
	}
	
	include _source."optime_img.php";
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "compress_img"){  
	    $data_comp    = isset($_POST['data_comp']) ? $_POST['data_comp'] : "";
	    $img_comp   = isset($_POST['img_comp']) ? $_POST['img_comp'] : "";
	    if($data_comp == '' || $img_comp == '') exit();
	      
	    $img_comp_out = explode("/", $img_comp);
 
	    $img_comp_out = end($img_comp_out);
	    $img_comp_out = str_replace($img_comp_out, "", $img_comp)."__".$img_comp_out;
	    // echo ($img_comp_out);
	    // 
 
	    $list_key 	= "5d3sXXzcKqP0vPndQS2bLdPHLZ2hMy0n,RL2X1hxfM3yQJJWRDbV3s1FHj3VnHrZj,B7H9HyhVkVnHgycqMKgbpJ7KWz1QHP1f,MsSyHrSJj5fMJgl9KRvr38dkSqPYJWdz,2QVtKb8T04tpYS3y6769V1blwps5tYS9,vMZDljmXpbjlxFjmFF4yVJyhrRN3YvZb,5qspfsvDl4ZQxpw9CyKtPddGjNYgsqHm,kSDcPpc1lYy0KWWG3FpmRyxKBzfB338F,MG99Xh6r3HQrJ2TZzLCDfgqGmQLX7Gtv,pYHy0WBwgwQc8w8k9nTyWXYPfwsKX87X,3N1t4yQyMGbbJbFqKDFtrNP5SDrhPZc8,wvTC52qSknmk21X7hHnJYryzF8LFhdDG,g25K99JHJzTcKngnZPb8ZtM9Txk3ccX4,NwTskqvkyVV6HPgtdn4zfjCrGlTCRDsf,MrLynmfKJFySRSvTVRK2dk8hWlsXMS9w,10RYmNHNpLZbMl0s9Nfyx0Tgx5ZC9nNV,wKsdwLpgvFR97p0VpbQMv5DZGB5gChYT,3XSBgGXCdxvXdGPTYXByNX1dnyG8d9xN,6BXzY9TV7Rn10x0KXb9nHPnDXNjkMZBx,GstD14mfk559MlxzY5nfncNb3bpNsdb4";
 

	    if(!isset($_SESSION['list_key_img_otime'])) {
	    	$_SESSION['list_key_img_otime'] = explode(",", $list_key);
	    }
		$list_key_count = count($_SESSION['list_key_img_otime']);

	    $i 			= 0;
	    if(empty($_SESSION['list_key_img_otime'][0])) {
	    	echo "Key not full 1!";
    		unset($_SESSION['list_key_img_otime']);
    		exit();
    	}
    	else {
    		$key 		= $_SESSION['list_key_img_otime'][0];
    	}
	    
	    $return 	= opt_images($img_comp, $img_comp, $key);
	    while (!empty($return['error']) && $i < $list_key_count) {
	    	$i ++;
	    	if(!empty($_SESSION['list_key_img_otime'][0])) {
	    		unset($_SESSION['list_key_img_otime'][0]);
	    		$_SESSION['list_key_img_otime'] = array_values($_SESSION['list_key_img_otime']);
	    		// print_r($_SESSION['list_key_img_otime']);
	    	}
	    	else {
	    		echo "Key not full 2!";
	    		exit();
	    	}
	    	if(!empty($_SESSION['list_key_img_otime'][0])) {
	    		$key 		= $_SESSION['list_key_img_otime'][0];
	    	}
	    	else {
	    		echo "Key not full 3!";
	    		// print_r($_SESSION['list_key_img_otime']);
	    		exit();
	    	}
			
	    	// $return = opt_images($img_comp, $img_comp_out, $key);
	    	$return = opt_images($img_comp, $img_comp, $key);
	    }

	    if(is_array($return) && empty($return['error'])) echo 1;
	    else echo 0;
	    exit();
	  }

	if(isset($_POST['ajax_action']) && $_POST['ajax_action']  == 'update_colum') {
      $id       = isset($_POST['id']) ? $_POST['id'] : 0;
      $check    = isset($_POST['check']) ? $_POST['check'] : 0;
      $col      = isset($_POST['col']) ? $_POST['col'] : 0;
      $table    = isset($_POST['table']) ? $_POST['table'] : 0;
      DB_que("UPDATE `$table` SET `".$col."` = '$check' WHERE `id` = '$id' LIMIT 1");
      exit();
    }
    if(isset($_POST['ajax_action']) && $_POST['ajax_action']  == 'update_colum_change') {
      $id       = isset($_POST['id']) ? $_POST['id'] : 0;
      $val    	= isset($_POST['val']) ? $_POST['val'] : "";
      $col      = isset($_POST['col']) ? $_POST['col'] : 0;
      $table    = isset($_POST['table']) ? $_POST['table'] : 0;
      $val 		= str_replace(".", "", $val);
      $val 		= str_replace(",", "", $val);
      DB_que("UPDATE `$table` SET `".$col."` = '$val' WHERE `id` = '$id' LIMIT 1");
      exit();
    }
    
	if(isset($_GET['excel-lh'])) {
		include 'export_excel_contac.php';
		exit();
	}
	//language
	//
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "get_language"){	
		include 'trans/index.php';
		exit();
	}
	//check sp trong kho
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "check_sp_trong_kho"){
		$id 		= $_POST['id'];
		$list_sp 	= DB_que("SELECT `nkdt`.`id` as `id`, `nkdt`.`ma_sp` as `ma_sp`, `nk`.`tenbaiviet_vi` as `tenbaiviet_vi` FROM `#_quanly_kho_detail` `nkdt`, `#_quanly_kho` `nk` 
			WHERE `nkdt`.`id_parent` = `nk`.`id` 
			AND `nkdt`.`id_xuat_kho` = 0 
			AND `nkdt`.`id_sp` = '$id' 
			ORDER BY `nk`.`id` ASC
			"); 
		if(!mysql_num_rows($list_sp)) {
			echo "Hiện trong kho không có sản phẩm nào!";
			exit();
		}

		while ($rows = mysql_fetch_assoc($list_sp)) {
			echo '<label><input type="checkbox" value='.$rows['id'].' name="spip_'.$id.'[]">'.$rows['ma_sp'].'<span>'.$rows['tenbaiviet_vi'].'</span>'.'</label>';
		}
		exit();
	}
	//

	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "check_sanpham"){
		$id			= $_POST['id'];
		if($id != ""){
			$sanpham 	= DB_fet("*","`#_baiviet`","`showhi` = 1 AND `step` = 2 AND (`tenbaiviet_vi` LIKE '%$id%' OR `tenbaiviet_en` LIKE '%$id%' OR `p1` = '$id')","`catasort` DESC, `id` DESC","","arr");
			foreach ($sanpham as $value) {
				echo '<li>
                        <a class="cur" onclick="ADD_idig(\''.$value['id'].'\', this)">
                          <img src="../'.$value['duongdantin'].'/'.$value['icon'].'" alt="">
                          <h3>'.$value['tenbaiviet_vi'].'</h3>
                          <p>'.$value['p1'].'</p>
                          <div class="clear"></div>
                        </a>
                      </li>';
			}
		}
		
		exit();
	}
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "load_tinh_thanh_mn"){
		$id			= $_POST['id'];
		$name		= $_POST['name'];

		echo '<option value="0">'.$name.'</option>';
	    $diadiem = LAY_khuvuc();
	    foreach ($diadiem as $val_1) { 
	        if($val_1['id_parent'] != $id) continue;
	      	echo '<option value="'.$val_1['id'].'" >'.$val_1['tenbaiviet_vi'].'</option>';
	    }
		exit();
	}
	if(isset($_POST['action_s']) && $_POST['action_s'] == "get_diadiem"){
		$id			= $_POST['id'];
		$text		= $_POST['text'];
		echo '<option value="0">'.$text.'</option>';
	    $diadiem = LAY_diadiem();
	    foreach ($diadiem as $val_1) { 
	        if($val_1['id_parent'] != $id) continue;
	      	echo '<option value="'.$val_1['id'].'">'.$val_1['tenbaiviet_vi'].'</option>';
	    }
		exit();
	}
	if(!empty($_POST['ajax_action']) && $_POST['ajax_action'] == 'quenmatkhau'){
		$email    = $_POST['email'];
		$mabaove  = $_POST['mabaove'];
		if($_SESSION['key_pass'] == $mabaove){
		  $sql = DB_que("SELECT * FROM `#_members` WHERE `showhi` = 1 AND `phanquyen` <> 0 AND `email` = '".$email."' LIMIT 1");
		    if(mysql_num_rows($sql) > 0)
		    {
		      unset($_SESSION['key_pass']);
		      $r      = mysql_fetch_assoc($sql);
		      $hoten  = $r['hoten'];
		      $active = md5(time())."P_A".md5(GET_ip());
		      $data                   = array();
		      $data['active']         = $active;      

		      $sql = ACTION_db($data, '#_members', 'update', NULL, "`email` = '".$email."' AND `phanquyen` <> 0");

		      $url        = $fullpath.'/admin/index.php?module=change-password&email='.$r['email'].'&key='.$active;
		      $data_html  = file_get_contents("htmlbox/quen_mat_khau_vi.html");
		      $message    = str_replace(array("%hoten%", "%url%"), array($hoten, $url) , $data_html);
		      $subject    = "Hướng dẫn thay đổi mật khẩu";

		      $thongtin          = DB_que("SELECT * FROM `#_seo` LIMIT 1");
    		  $thongtin          = mysql_fetch_assoc($thongtin);

		      ob_start();
		      GUI_email("$email", "$hoten", "$subject", $_SERVER['SERVER_NAME'], $message, $thongtin, "admin");
		      ob_end_clean();
		      echo 0;
		  }
		  else
		  {   
		      echo 2;
		  }
		}else{
		  echo 1;
		}
		exit();
	}

	if(isset($_POST['admindangnhap']))
	{
		if(!isset($_SESSION['dangnhap'])){
			$_SESSION['dangnhap'] = 1;
		}else{
			$_SESSION['dangnhap']++;
		}

		if(isset($_POST['mabaove']) && strtolower($_POST['mabaove']) != strtolower($_SESSION['captcha']['code'])){
			ALERT_js("Mã bảo vệ không đúng!");
			LOCATION_js("index.php?module=login");
			exit();
		}
		$sqlu = DB_que("SELECT `id`,`matkhau`,`keypass`, `phanquyen` FROM `#_members` WHERE showhi = 1 AND `tentruycap`='".mysql_real_escape_string($_POST['username'])."' AND `phanquyen` <> 0 LIMIT 1");
		if(@mysql_num_rows($sqlu))
		{
			$uid    = @mysql_result($sqlu,0,"id");
			$keypass  = @mysql_result($sqlu,0,"keypass");
			$matkhauin  = @mysql_result($sqlu,0,"matkhau");
			$matkhau  = create_pass($auto_key_pass.strip_tags($_POST['passmd5']),$keypass);
 
			$_SESSION['phanquyen'] = @mysql_result($sqlu,0,"phanquyen");
			// die($matkhau);
			if($matkhauin != $matkhau)
			{
				ALERT_js("Tên đăng nhập hoặc mật khẩu không đúng!");
				LOCATION_js("index.php?module=login");
				exit();
			}
			else
			{
				unset($_SESSION['dangnhap']);
				$_SESSION['luluwebproadmin'] = @mysql_result($sqlu,0,"id");
				LOCATION_js("index.php");
			}
		}
		else
		{
			ALERT_js("Tên đăng nhập hoặc mật khẩu không đúng!");
			LOCATION_js("index.php?module=login");
			exit();
		}
	}
	if($module == 'forgot-password' && empty($_SESSION['luluwebproadmin'])){
		include "forgot-password.php";
		exit();
	}
	if($module == 'change-password' && empty($_SESSION['luluwebproadmin'])){
		include "change-password.php";
		exit();
	}

	if($module == 'login' && empty($_SESSION['luluwebproadmin'])){
		include "login.php";
		exit();
	}


	if(isset($_GET['action']) && $_GET['action'] == "dang-xuat")
	{
		unset($_SESSION['admin']);
		$_SESSION['luluwebproadmin'] = NULL;
		$_SESSION['phanquyen']     = NULL;
		LOCATION_js("index.php?module=login");
		exit();
	}
  
	if(empty($_SESSION['luluwebproadmin']))
	{
		LOCATION_js("index.php?module=login");
		exit();
	}
	
	if(!empty($_POST['ajax_send_img']) && $_POST['ajax_send_img'] == 1){
		$table = isset($_POST['table']) ? $_POST['table'] : "#_baiviet_img";
		foreach($_FILES['img_file']['name'] as $name => $value)
			{
				$duongdantin	= "galagy";
				$uploaddir 		= "../datafiles/$duongdantin/"; 

				$img_real_name 	= CONVERT_vn($_FILES['img_file']['name'][$name]);	
				$file 			= time()."_".$img_real_name;	
				$size 			= $_FILES['img_file']['size'][$name];
				$kietxuatid		= $_POST['kietxuatid'];
				$size_img		= $_POST['size_img'];


				if (move_uploaded_file($_FILES['img_file']['tmp_name'][$name], $uploaddir.$file)) 
				{ 
					if($size_img == ""){
						TAO_anhthumb($uploaddir.$file,$uploaddir."thumb_".$file, 500, 500, "images/trang_500_500.png");
					}
					else {
						$anh_sp = explode("x", $size_img);
			            $wid = $anh_sp[0];
			            $hig = $anh_sp[1];
						TAO_anhthumb($uploaddir.$file,$uploaddir."thumb_".$file, $wid, $hig, "images/trang_" . $wid . "_" . $hig . ".png");
					}
					TAO_anhthumb($uploaddir.$file,$uploaddir."thumbnew_".$file, 500, 500, "");
					$sql_in = DB_que("INSERT INTO $table (`p_name`,`id_parent`,`duongdantin`) VALUES('$file','$kietxuatid','$duongdantin')");
				} 
			}
		exit();
	}

	if(isset($_POST['action']) && $_POST['action'] == 'import_file'){
	    include "readexcel/index.php";
	    exit();
	}

	if(isset($_GET['export']) && $_GET['export'] == "excel"){
		include "export_excel.php";
	    exit();
	}

	if(!empty($_POST['ajax_action']) && $_POST['ajax_action'] == 'LOAD_danhmuc_mn'){
		$step    	= $_POST['id'];
		if($step == '-1'){
			$baiviet_arr  = DB_fet("*","#_baiviet", "`showhi` = '1' AND `step` = 0", "`catasort` DESC","", "arr");
			echo '<option value="0">Chọn danh mục</option>'; 
	    	foreach ($baiviet_arr as $row_1)
	            {		
	              	echo  '<option value="'.$row_1['id'].'">'.$row_1['tenbaiviet_vi'].'</option> ';
	            }
		}else{
			$chude_arr  = DB_fet("*","#_danhmuc", "`showhi` = '1' AND `step` = ".$step."", "`catasort` ASC","", "arr");
			echo '<option value="0">Chọn danh mục</option>'; 
	    	foreach ($chude_arr as $row_1)
	            {		
	            	if($row_1['id_parent'] != 0) continue;
	              	echo  '<option value="'.$row_1['id'].'">'.$row_1['tenbaiviet_vi'].'</option> ';
	              	foreach ($chude_arr as $row_2) 
			            {	
			            	if($row_2['id_parent'] != $row_1['id']) continue;	
			              	echo  '<option value="'.$row_2['id'].'">╚═►'.$row_2['tenbaiviet_vi'].'</option> ';
			              	foreach ($chude_arr as $row_3)
					            {	
					            	if($row_3['id_parent'] != $row_2['id']) continue;
					              	echo  '<option value="'.$row_3['id'].'"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╙─►'.$row_3['tenbaiviet_vi'].'</option> ';
					              	foreach ($chude_arr as $row_4) 
							            {	
							            	if($row_4['id_parent'] != $row_3['id']) continue;
									        echo  '<option value="'.$row_4['id'].'"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╙─►'.$row_4['tenbaiviet_vi'].'</option> ';

										}
								}
						}
				}
		}
		
		exit();
	}
	if(isset($_GET['module']) && $_GET['module'] == 'check_form'){
		include 'tao_form.php';
		exit();		
	}
	if(isset($_POST['ac_form_loai'])){
		$id 					= $_POST['id'];
		$loai 					= $_POST['ac_form_loai'];
		
		$data 					= array();
		$data['loai_from'] 		= $_POST['ac_form_loai'];
		$data['id_parent']		= $_POST['id_parent'];
		$data['tenbaiviet_vi']	= $_POST['tenbaiviet_vi'];
		$data['mota_vi']		= isset($_POST['mota_vi']) ? $_POST['mota_vi'] : "";
		$data['id_parent']		= $_POST['id_parent'];
		$data['ngaydang']		= time();
		$data['active'] 		= isset($_POST['active']) ? 1 : 0;

		
		if($id == 0){
			$id = ACTION_db($data, '#_form_danhmuc', 'add');

			
			if(isset($_POST['option']) && is_array($_POST['option'])){
				$stt = 0;
				foreach ($_POST['option'] as $value) {
					$data_new 				= array();
					$data_new['id_parent'] 		= $id;
					$data_new['tenbaiviet_vi']	= $value;
					$data_new['ngaydang']		= time();
					$data_new['catasort']		= $stt;
					if(trim($value) != ""){
						ACTION_db($data_new, '#_form_danhmuc', 'add');	
						$stt ++;
					}
					
					
				}
			}
			//lay danh sach cac option 
			$ds_option = DB_que("SELECT * FROM `#_form_danhmuc` WHERE `id_parent` = '$id'  ORDER BY `catasort` ASC ");
			$list_option = "";
			if(@mysql_num_rows($ds_option)){
				while ($r  = mysql_fetch_assoc($ds_option)) {
					if($loai == 3){
						$list_option .= '<option>'.SHOW_text($r['tenbaiviet_vi']).'</option>';
					}
					else if($loai == 4){
						$list_option .= '<label><input type="checkbox">'.SHOW_text($r['tenbaiviet_vi']).'</label>';
					}
					else if($loai == 5){
						$list_option .= '<label><input type="radio" name="name_'.$id.'">'.SHOW_text($r['tenbaiviet_vi']).'</label>';
					}
				}
			}
			
			//
			//
			if($loai == 1){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><input type='text' value='' placeholder='".$_POST['mota_vi']."'><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 2){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><textarea name='mota_vi' placeholder='".$_POST['mota_vi']."'></textarea><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 3){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><select><option>".$_POST['mota_vi']."</option>
                    ".$list_option."</select><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 4){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><div class='mt_radio'>".$list_option."</div><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 5){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><div class='mt_radio'>".$list_option."</div><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}

			

			$return = '<li class="ui-state-default li_ac_id'.$id.'" data="'.$id.'">'.$return.'</li>';
			
		}else{
			ACTION_db($data, '#_form_danhmuc', 'update', NULL, "`id` = '".$id."'");	


			//xoa option
			DB_que("DELETE FROM `#_form_danhmuc` WHERE `id_parent` = '$id' ");
			//add moi
			if(isset($_POST['option']) && is_array($_POST['option'])){
				$stt = 0;
				foreach ($_POST['option'] as $value) {
					$data_new 				= array();
					$data_new['id_parent'] 		= $id;
					$data_new['tenbaiviet_vi']	= $value;
					$data_new['ngaydang']		= time();
					$data_new['catasort']		= $stt;
					if(trim($value) != ""){
						ACTION_db($data_new, '#_form_danhmuc', 'add');	
						$stt ++;
					}
					$stt ++;
				}
			}
			//lay danh sach cac option 
			$ds_option = DB_que("SELECT * FROM `#_form_danhmuc` WHERE `id_parent` = '$id'  ORDER BY `catasort` ASC ");
			$list_option = "";
			if(@mysql_num_rows($ds_option)){
				while ($r  = mysql_fetch_assoc($ds_option)) {
					if($loai == 3){
						$list_option .= '<option>'.SHOW_text($r['tenbaiviet_vi']).'</option>';
					}
					else if($loai == 4){
						$list_option .= '<label><input type="checkbox">'.SHOW_text($r['tenbaiviet_vi']).'</label>';
					}
					else if($loai == 5){
						$list_option .= '<label><input type="radio" name="name_'.$id.'">'.SHOW_text($r['tenbaiviet_vi']).'</label>';
					}
				}
			}
			//

			if($loai == 1){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><input type='text' value='' placeholder='".$_POST['mota_vi']."'><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 2){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><textarea name='mota_vi' placeholder='".$_POST['mota_vi']."'></textarea><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 3){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><select><option>".$_POST['mota_vi']."</option>
                    ".$list_option."</select><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 4){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><div class='mt_radio'>".$list_option."</div><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
			else if($loai == 5){
				$return = "<p>".$_POST['tenbaiviet_vi']."</p><div class='mt_radio'>".$list_option."</div><a class='cur' onclick=\"THEM_button('".$id."')\">[Chỉnh sửa]</a><a class='cur xoa' onclick=\"XOA_popp('".$id."')\">[Xóa]</a>";
			}
		}
		
		$arr = array('id' => $id, "text" => $return);
		echo json_encode($arr);
		exit();
	}
	if(isset($_POST['post_delete_form']) && $_POST['post_delete_form'] == "ok"){
		$id = $_POST['id'];
		DB_que("DELETE FROM `#_form_danhmuc` WHERE `id` = '".$id."' LIMIT 1");
		DB_que("DELETE FROM `#_form_danhmuc` WHERE `id_parent` = '".$id."'");
		exit();
	}
	if(isset($_POST['post_delete_form']) && $_POST['post_delete_form'] == "update_poop"){
		$list_id = $_POST['list_id'];
		$list_id = explode("_", $list_id);
		foreach ($list_id as $val) {
			if($val != ""){
				$id  = explode(":", $val);
				DB_que("UPDATE `#_form_danhmuc` SET `catasort` = '".$id[1]."' WHERE `id` = '".$id[0]."' LIMIT 1");
			} 
		}
		exit();
	}
?>