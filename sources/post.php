<?php 
  if(!defined("MOTTY")) die();


  if(!empty($_POST) && $motty == "ajax_timkiem"){
    include _source."phantrang_kietxuat_ajax.php";
    exit();
  }
  if(!empty($_POST) && $motty == "check_phi_ship"){
    $n_tinhthanh_new2   = isset($_POST['n_tinhthanh_new2']) ? $_POST['n_tinhthanh_new2'] : 0;
    $id_quanhuyen_new   = isset($_POST['id_quanhuyen_new']) ? $_POST['id_quanhuyen_new'] : 0;
    
    $check_phiship      = DB_que("SELECT * FROM `#_ship_vanchuyen_khac` WHERE `id_kv` = '$n_tinhthanh_new2' LIMIT 1"); 
    if(!mysql_num_rows($check_phiship)) {
      $check_phiship      = DB_que("SELECT * FROM `#_ship_vanchuyen_khac` WHERE `id_kv` = '0' LIMIT 1"); 
    }
    $check_phiship      = mysql_fetch_assoc($check_phiship);
    $gia_dieu_chinh     = json_decode($check_phiship['gia_dieu_chinh'], true);


    $du_kien            = $check_phiship['du_kien'];
    $phi_van_chuyen     = $check_phiship['phi_van_chuyen'] + $gia_dieu_chinh[$id_quanhuyen_new];
    $tenbaiviet_vi      = $check_phiship['tenbaiviet_'.$lang];

    $l_dk       = "";
    $l_dk_n     = "";
    if($du_kien != "") {
      $du_kien  = explode(",", $du_kien);
      foreach ($du_kien as $val) {
        $day      = time() + (int)($val)*3600;
        $l_dk    .= $l_dk   == "" ? CONVER_thu(date("l", $day), $glo_lang)  : ' - '.CONVER_thu(date("l", $day), $glo_lang);
        $l_dk_n  .= $l_dk_n == "" ? date('d/m/Y', $day) : ' - '.date('d/m/Y', $day);
      }
    } 
    $phi_van_chuyen = $phi_van_chuyen != 0 ? NUMBER_fomat($phi_van_chuyen).' '.$glo_lang['dvt'] : $glo_lang['mien_phi'];
    $khuvuc              = LAY_khuvuc();
  
    $_SESSION['nhom_1_pvc'] = $glo_lang['giao_hang_toi'] .' '.$khuvuc[$id_quanhuyen_new]['tenbaiviet_'.$lang].', '. $khuvuc[$n_tinhthanh_new2]['tenbaiviet_'.$lang].' - <a class="cur" onclick="LOAD_popup_new(\''.$full_url.'/pa-size-child/check_phi_ship/\', \'450px\')">'.$glo_lang['chon_dia_chi_khac'].'</a>';
    $_SESSION['nhom_2_pvc'] =  $tenbaiviet_vi.". ".$glo_lang['du_kien_giao'].': '. $l_dk.', '.$l_dk_n.' - '.$phi_van_chuyen;

    $arr = array("ght" => $glo_lang['giao_hang_toi'] .' '.$khuvuc[$id_quanhuyen_new]['tenbaiviet_'.$lang].', '. $khuvuc[$n_tinhthanh_new2]['tenbaiviet_'.$lang].' - <a class="cur" onclick="LOAD_popup_new(\''.$full_url.'/pa-size-child/check_phi_ship/\', \'450px\')">'.$glo_lang['chon_dia_chi_khac'].'</a>', 'dk' => $tenbaiviet_vi.". ".$glo_lang['du_kien_giao'].': '. $l_dk.', '.$l_dk_n.' - '.$phi_van_chuyen);
    echo json_encode($arr);
    // 
    exit();
  }
  // 
  // 
  if(isset($_POST) && $motty == 'load_map_goole') {
    $array = array(
      'address' => str_replace(",", "+", $_POST['address']),
      'key'     => 'AIzaSyCk0kCNLUaWagmDHLai2it9_9YaCVHuriQ'
    );
    $url = "https://maps.googleapis.com/maps/api/geocode/json?".http_build_query($array);
    $check = file_get_contents($url);
    $check = json_decode($check, true);
    $lat   = !empty($check['results'][0]['geometry']['location']['lat']) ? $check['results'][0]['geometry']['location']['lat'] : "";
    $lng   = !empty($check['results'][0]['geometry']['location']['lng']) ? $check['results'][0]['geometry']['location']['lng'] : "";
    if($lat != "" && $lng != "") {
      $arrr = array('lat' => $lat, 'lng' => $lng, 'address' => $_POST['address']);
      echo json_encode($arrr);
    }
    exit();
  }
  //check makh new
  if(!empty($_POST) && $motty == "check_mkm"){
    $ma_khuyen_mai  = $_POST['cls_makm'];
    $tongtien       = $_POST['tt'];
    $tiengoc        = $_POST['tg'];

    $return_kq      = CHECK_ma_km_new($ma_khuyen_mai, $glo_lang, $tongtien);
    if($return_kq['err'] == 1) {
      echo json_encode($return_kq);
    }
    else {
      $_SESSION['ma_giam_gia']['ma']    = $ma_khuyen_mai;
      $_SESSION['ma_giam_gia']['loai']  = $return_kq['vnd'];
      $_SESSION['ma_giam_gia']['val']   = $return_kq['val'];

      $giatien            = $return_kq['vnd'] == 0 ? $tiengoc * $return_kq['val'] / 100 : $return_kq['val'];
      $giam               = $return_kq['vnd'] == 0 ? $return_kq['val']."%" : number_format($return_kq['val'])." ".$glo_lang['dvt'];

      $return             = array();
      $return['err']      = $return_kq['err'];
      $return['text']     = $return_kq['text']." (-".number_format($giatien)." ".$glo_lang['dvt'].")";
      $return['giatien']  = number_format($tongtien - $giatien)." ".$glo_lang['dvt']." (-".$giam.")";
      // print_r($return);
      echo json_encode($return);
    }
    exit();
  }
  //end
  //check ma seri
  if($motty == 'check-ma-seri' && isset($_POST)){

    if(empty($_POST['mabaove']) || strtolower($_POST['mabaove']) != strtolower($_SESSION['captcha']['code'])){
      $messenge['error'] = 10;
      echo json_encode($messenge);
      exit();
    }

    if (isset($_POST['ma_seri']))
    {
        $ma_seri  = addslashes($_POST['ma_seri']);

        //Kiểm tra tên đăng nhập có tồn tại không
        $query = DB_que("SELECT `id`,`matkhau`,`keypass`, `hoten`, `email` FROM `#_members` WHERE `showhi` = 1 AND `ma_kich_hoat`='".mysql_real_escape_string($ma_seri)."' AND `phanquyen` = 0 LIMIT 1");
        if (mysql_num_rows($query) == 0) {
            $messenge['error']  = 1;
            echo json_encode($messenge);
            exit();
        }
        DB_que("UPDATE  `#_members` SET `ma_kich_hoat` = '' WHERE `ma_kich_hoat`='".mysql_real_escape_string($ma_seri)."' AND `phanquyen` = 0 LIMIT 1");
        //Lấy mật khẩu trong database ra
        $row = mysql_fetch_assoc($query);

        //Lưu tên đăng nhập
        $_SESSION['id']    = $row['id'];
        $_SESSION['email'] = $row['email'];
        $_SESSION['hoten'] = $row['hoten'];
        $messenge['error'] = 0;
        echo json_encode($messenge);
        exit();
    }
    $messenge['error']  = 1;
    echo json_encode($messenge);
    exit();
  }
  //

  //gui don hang nwe
  if(isset($_POST['action_ajax']) && $_POST['action_ajax'] == 'captcha') {
    echo $_SESSION['cap'] = RAND(11111,99999);
    exit();
  }
  if(!empty($_POST)) {
    //add sao
    if($motty == "add-sao") {
      $idsp = isset($_POST['idsp']) && is_numeric($_POST['idsp']) ? $_POST['idsp'] : 0;
      $sao  = isset($_POST['sao']) && is_numeric($_POST['sao']) ? $_POST['sao'] : 0;
      if($idsp != 0 && $sao != 0 && empty($_SESSION['sao'][$idsp])) {
        

        DB_que("UPDATE `#_baiviet` SET `sao_".$sao."` = `sao_".$sao."` + 1, `num_1` = `num_1` + $sao, `num_2` = `num_2` + 1 WHERE `id` = '$idsp' LIMIT 1");
        $_SESSION['sao'][$idsp] = 1;
      }
      echo $glo_lang['cam_on_danh_gia'];
      exit();
    }
    //end add sao
  }
  //check buy new
  if(!empty($_POST) && $motty == "check_buy_new_form"){
    $tongtien       = GET_price_weight($_SESSION['cart']);
    $phi_ship       = is_numeric($_POST['phiship_client']) ? $_POST['phiship_client'] : 0;
    $ma_khuyen_mai  = $_POST['ma_khuyen_mai'];

    $return_kq      = CHECK_thanhtien($ma_khuyen_mai, $glo_lang, $tongtien, $phi_ship, $_SESSION['cart']);
    $array_return   = array(
                            'gia_km'        => $return_kq['gia_km'],
                            'gia_kmtext'    => $return_kq['gia_kmtext'],
                            'js_tamtinh'    => NUMBER_fomat($return_kq['tam_tinh'])." ".$glo_lang['dvt'],
                            'phiship'       => NUMBER_fomat($phi_ship)." ".$glo_lang['dvt'],
                            'tongtien'      => NUMBER_fomat($return_kq['thanh_tien'])." ".$glo_lang['dvt'],
                            'num_tongtien'  => $return_kq['thanh_tien']
                            );
    echo json_encode($array_return);
    exit();
  }
  // load phi ship
  if(!empty($_POST) && $motty == "load_phi_ship"){
  // if(!empty($_POST) && $motty == "load_phi_ship"){
    $n_tinhthanh_new2    = $_POST['n_tinhthanh'];
    $id_quanhuyen_new    = $_POST['id_quanhuyen'];
    // $total          = GET_price_weight($_SESSION['cart']);
 
    //ton tien
    
    $array = load_phivanchuyen($_SESSION['cart'], $n_tinhthanh_new2, $id_quanhuyen_new, $glo_lang);
    echo json_encode($array);
    // $return        = SHIP_return($n_tinhthanh, $id_quanhuyen, $total);
    // echo Table_ship($return, $glo_lang);
    exit();
  }
  // 
  ////load tinh thanh
  if(!empty($_POST) && $motty == "load-tinh-thanh"){
    $id     = $_POST['id'];
    $name   = $_POST['name'];

    echo '<option value="0">'.$name.'</option>';
    $diadiem = LAY_khuvuc();
    foreach ($diadiem as $val_1) { 
        if($val_1['id_parent'] != $id) continue;
        echo '<option value="'.$val_1['id'].'">'.$val_1['tenbaiviet_'.$lang].'</option>';
    }
    exit();
  }
  //dat hang nnhanh
  if(isset($_POST['action']) && $_POST['action'] == "dat_hang_nhanh"){
    $add = 0;
    if($_POST['load'] == 1){
      $ma_sp      = $_POST['ma_sp'];
      $so_luong   = $_POST['so_luong'];
      $c_msp      = count($ma_sp);
      for ($i=0; $i < $c_msp; $i++) { 
        if($ma_sp[$i] != ''){
          $sl     = is_numeric(trim($so_luong[$i])) ? trim($so_luong[$i]) : 1;
          $check  = DB_que("SELECT `id` FROM `#_baiviet` WHERE `step` = 2 AND `p1` = '".$ma_sp[$i]."' LIMIT 1");
          if(!mysql_num_rows($check)) continue;
          $check = mysql_result($check, 0, "id");
          $_SESSION['cart'][$check] = $sl;
          $add ++;
                  
        }
      }
    }
    else if($_POST['load'] == 2){
      $nd_dathangnhanh = $_POST['nd_dathangnhanh'];
      $nd_dathangnhanh = explode("\n", $nd_dathangnhanh);
      foreach ($nd_dathangnhanh as $value) {
        if($value == "") continue;
        $val = explode(",", $value);
        if($val[0] == "") continue;
        $check  = DB_que("SELECT `id` FROM `#_baiviet` WHERE `step` = 2 AND `p1` = '".$val[0]."' LIMIT 1");
        if(!mysql_num_rows($check)) continue;
        $check = mysql_result($check, 0, "id");
        $sl     = is_numeric(trim($val[1])) ? trim($val[1]) : 1;
        $_SESSION['cart'][$check] = $sl;
        $add ++;
      }
    }
    echo $add;
    exit();
  }

  //check masp
  if(!empty($_POST) && $motty == "check-masp"){
    $masp   = $_POST['masp'];
    $check  = DB_que("SELECT `id` FROM `#_baiviet` WHERE `step` = 2 AND `p1` = '$masp' LIMIT 1");
    echo mysql_num_rows($check);
    exit();
  }
  //
  //gui binh luan
  if($motty == "gui-binh-luan" && !empty($_POST)){
    if(!empty($_POST['id_token']) && $_POST['id_token']  == $_SESSION['token']){

      $data                     = array();
      $data['tenbaiviet_vi']    = LOC_char($_POST['bl_tieude']);
      $data['noidung_vi']       = LOC_char($_POST['bl_noidung']);
      $data['id_sp']            = LOC_char($_POST['id_sp']);
      $data['id_parent']        = LOC_char($_POST['id_parent']);
      $data['ip_gui']           = GET_ip();
      $data['ngay_dang']        = time();

      $data['showhi']           = 0;
      ACTION_db($data, '#_binhluan','add',NULL,NULL);


      $_SESSION['token'] = md5(RANDOM_chuoi(5));
      $return = array("err" => 1, "token" => $_SESSION['token']);
      echo json_encode($return);

      
    }
    else {
      $_SESSION['token'] = md5(RANDOM_chuoi(5));
      $return = array("err" => 2, "token" => $_SESSION['token']);
      echo json_encode($return);
    }
    exit();
  }
  //end gui binh luan
  if($motty == "add-sao" && !empty($_POST)){
    $id     = $_POST['id'];
    $sao    = $_POST['sao'];
    // unset($_SESSION['sao'][$id]);
    if(!empty($_SESSION['sao'][$id])){
      echo $glo_lang['ban_da_binh_chon_cho_san_pham_nay'];
      exit();
    }
    $_SESSION['sao'][$id] = $id;
    DB_que("UPDATE `#_baiviet` SET `sao_".$sao."` = `sao_".$sao."` + 1, `num_1` = `num_1` + $sao, `num_2` = `num_2` + 1 WHERE `id` = '$id'");
    echo $glo_lang['cam_on_ban_da_binh_chon_cho_san_pham_nay'];
    exit();
  }
  if(isset($_POST['action_s']) && $_POST['action_s'] == "get_diadiem"){
    $id     = $_POST['id'];
    $text   = $_POST['text'];
    echo '<option value="">'.$text.'</option>';
      $diadiem = LAY_diadiem();
      foreach ($diadiem as $val_1) { 
          if($val_1['id_parent'] != $id) continue;
          echo '<option value="'.$val_1['id'].'">'.$val_1['tenbaiviet_'.$lang].'</option>';
      }
    exit();
  }
  if($motty == "send_form" && isset($_POST['send_lienhe']))
  {
 
    if((!empty($_POST['mabaove']) && strtolower($_POST['mabaove']) == strtolower($_SESSION['captcha']['code'])) || (!empty($_POST['id_token']) && $_POST['id_token']  == $_SESSION['token']) || (!empty($_POST['capcha_hd']) && $_POST['capcha_hd']  == $_SESSION['cap']))
    {

      $admin_email    = LAY_email(1);
      $htmlbox        = file_get_contents("nguoiquanly/htmlbox/1m.html");
      $logo           = $fullpath . "/".$thongtin['duongdantin']."/".$thongtin['logo'];
      $thongtinheader = $thongtin['tencongty_'.$lang];
      $footer         = "<p><b>".$thongtin['tencongty_'.$lang]."</b></p>";
      $footer        .= $thongtin['sodienthoai_'.$lang] != "" ? "<p>".$glo_lang['so_dien_thoai'].": ". $thongtin['sodienthoai_'.$lang]."</p>" : "";
      $footer        .= $thongtin['email_'.$lang] != "" ? "<p>".$glo_lang['email'].": ". $thongtin['email_'.$lang]."</p>" : "";
      $footer        .= $thongtin['diachi_'.$lang] != "" ? "<p>".$glo_lang['dia_chi'].": ". $thongtin['diachi_'.$lang]."</p>" : "";

      $file           = UPLOAD_file("inputfile", "./datafiles/post/", time());
      if (!empty($file)) {
          $file_1 = $file;
      }
      $file           = UPLOAD_file("inputfile_1", "./datafiles/post/", time());
      if (!empty($file)) {
          $file_2 = $file;
      }


      $s_fullname     = isset($_POST['s_fullname']) ? $_POST['s_fullname'] : "";
      $s_fullname_s   = isset($_POST['s_fullname_s']) ? $_POST['s_fullname_s'] : "";

      $s_dienthoai    = isset($_POST['s_dienthoai']) ? $_POST['s_dienthoai'] : "";
      $s_dienthoai_s  = isset($_POST['s_dienthoai_s']) ? $_POST['s_dienthoai_s'] : "";

      $s_email        = isset($_POST['s_email']) ? $_POST['s_email'] : "";
      $s_email_s      = isset($_POST['s_email_s']) ? $_POST['s_email_s'] : "";

      $s_address      = isset($_POST['s_address']) ? $_POST['s_address'] : "";
      $s_address_s    = isset($_POST['s_address_s']) ? $_POST['s_address_s'] : "";

      $s_title        = isset($_POST['s_title']) ? $_POST['s_title'] : "";
      $s_title_s      = isset($_POST['s_title_s']) ? $_POST['s_title_s'] : "";

      $s_message      = isset($_POST['s_message']) ? $_POST['s_message'] : "";
      $s_message_s    = isset($_POST['s_message_s']) ? $_POST['s_message_s'] : "";



      $tieude_lienhe  = isset($_POST['tieude_lienhe']) ? $_POST['tieude_lienhe'] : "";

      $noidung        = "";
      $noidung       .= RETURN_title_lienhe($tieude_lienhe);
      $noidung       .= RETURN_text_lienhe($s_fullname_s, $s_fullname);
      $noidung       .= RETURN_text_lienhe($s_dienthoai_s, $s_dienthoai);
      $noidung       .= RETURN_text_lienhe($s_email_s, $s_email);
      $noidung       .= RETURN_text_lienhe($s_address_s, $s_address);
      $noidung       .= RETURN_text_lienhe($s_title_s, $s_title);
      $noidung       .= RETURN_text_lienhe($s_message_s, $s_message);

      if(!empty($file_1) || !empty($file_2)) {
        $link         = "";
        if(!empty($file_1)) {
          $link      .= '<a href="../datafiles/post/'.$file_1.'" download>['.$file_1.']</a> ';
        }
        if(!empty($file_2)) {
          $link      .= '<a href="../datafiles/post/'.$file_2.'" download>['.$file_2.']</a> ';
        }

        $noidung       .= RETURN_text_lienhe(base64_encode("Đính kèm"), $link);
      }

      $array_json     = array();
      $array_json[] = array('k' => 'title', 'v' => $tieude_lienhe);
      if($s_fullname != "") 
        $array_json[] = array('k' => $s_fullname_s, 'v' => $s_fullname);
      if($s_dienthoai != "") 
        $array_json[] = array('k' => $s_dienthoai_s, 'v' => $s_dienthoai);
      if($s_email != "") 
        $array_json[] = array('k' => $s_email_s, 'v' => $s_email);
      if($s_address != "") 
        $array_json[] = array('k' => $s_address_s, 'v' => $s_address);
      if($s_title != "") 
        $array_json[] = array('k' => $s_title_s, 'v' => $s_title);
      if($s_message != "") 
        $array_json[] = array('k' => $s_message_s, 'v' => $s_message);

      for ($i=1; $i < 50; $i++) { 
        if(isset($_POST['group_form_send_'.$i])){
          $noidung       .= RETURN_text_lienhe($_POST['group_form_send_'.$i.'_s'], $_POST['group_form_send_'.$i]);
          if($_POST['group_form_send_'.$i] != "") 
            $array_json[] = array('k' => $_POST['group_form_send_'.$i.'_s'], 'v' => $_POST['group_form_send_'.$i]);
        }
      }

      
            
      $message        = str_replace(array( "%footer%", '%logo%', '%thongtinheader%', '%noidung%'),
        array($footer, LOC_char($logo), $thongtinheader, $noidung), $htmlbox);

      $data                     = array();
      $data['tenbaiviet_vi']    = LOC_char(base64_decode($tieude_lienhe));
      $data['ip_gui']           = GET_ip();
      $data['ngay_dang']        = time();
      $data['noi_dung_vn']      = addslashes($message);
      $data['nd_json']          = serialize($array_json);
      $data['loai']             = isset($_POST['loai']) && is_numeric($_POST['loai']) ? $_POST['loai'] : 0;
      $data['id_bv']             = isset($_POST['idbv']) && is_numeric($_POST['idbv']) ? $_POST['idbv'] : 0;

      if(!empty($file_1)) {
        $data['file_1']          = $file_1;
      }
      if(!empty($file_2)) {
        $data['file_2']          = $file_2;
      }

      $data['showhi']           = 0;
      ACTION_db($data, '#_form_lienhe','add',NULL,NULL);

      ob_start();
      GUI_email("$admin_email","", base64_decode($tieude_lienhe)  , $_SERVER['SERVER_NAME'], $message, $thongtin);
      ob_end_clean();
      
      if(!empty($_POST['id_token'])){
        $_SESSION['token'] = md5(RANDOM_chuoi(5));
        $return = array("err" => 1, "token" => $_SESSION['token']);
        echo json_encode($return);
      }else {
        echo 1;  
      }
    }
    else {
      if(!empty($_POST['id_token'])){
        $_SESSION['token'] = md5(RANDOM_chuoi(5));
        $return = array("err" => 2, "token" => $_SESSION['token']);
        echo json_encode($return);
      }
      else echo 2;
    }
    exit();
  }

 
  if($motty == "send_form" && isset($_POST['gui_donhang'])){
    if(strtolower($_POST['id_token']) == strtolower($_SESSION['token'])){
      if(isset($_SESSION['cart']) && $_SESSION['cart'] != NULL){

        $id_sp            = "";
        $so_luong         = "";
        $don_gia          = "";

        $thongtin_dathang = "<div id='cart_list' class='tb_rps'><table border='1'  cellspacing='0' cellpadding='4' style='width:100%; border-collapse: collapse; font-family:Tahoma; font-size:11px;text-align: center;' bordercolor='#cccccc' class='tb-chitietdh-tv'>";
        $thongtin_dathang .= '<tr> <th width="5%" class="cls_cart_mb">STT</th> <th>'.$glo_lang['cart_ten_sp'].'</th> <th width="15%">'.$glo_lang['cart_qty'].'</th> <th width="15%">'.$glo_lang['cart_dongia'].'</th> <th width="10%">'.$glo_lang['cart_thanhtien'].'</th> </tr>';

        $phi_ship   = 0;
   
        if(isset($_POST['n_tinhthanh']) && $_POST['n_tinhthanh'] != 0 && isset($_POST['n_quanhuyen']) && $_POST['n_quanhuyen'] != 0) {
          $phi_ship = load_phivanchuyen ($_SESSION['cart'], @$_POST['n_tinhthanh'], $_POST['n_quanhuyen'] , $glo_lang);
          $phi_ship = $phi_ship['phivc_num'];
        }

        $tongtien         = 0;
        $stt              = 0;
        foreach ($_SESSION['cart'] as $key => $value) { 
            $sanpham      = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` = 1 AND `id` = '".$key."' LIMIT 1");
            if(mysql_num_rows($sanpham) > 0)
              {
                $sanpham   = mysql_fetch_array($sanpham);

                $dongia     = ($sanpham['giakm'] != 0) ? $sanpham['giakm'] : $sanpham['giatien'];
                $id_sp      .= $key.",";
                $so_luong   .= $value.",";
                $don_gia    .= $dongia.",";
                $thanhtien  = $value*$dongia;
                $tongtien   += $thanhtien;
                $stt++;
                $thongtin_dathang .= '<tr>
                  <td class="cls_cart_mb">'.$stt.'</td>
                  <td title="'.$glo_lang['cart_ten_sp'].'" class="dv-anh-cart-sp">
                    <a href="'.GET_link($full_url, SHOW_text($sanpham['seo_name'])).'"><img src="'.checkImage($fullpath, $sanpham['icon'], $sanpham['duongdantin'], 'thumb_').'" style="height:50px"/></a>
                    <div class="dv-anh">
                    <a href="'.$full_url."/".$sanpham['seo_name'].'">'.$sanpham['tenbaiviet_'.$_SESSION['lang']].'</a></div>
                  </td>
                  <td title="'.$glo_lang['cart_qty'].'">'.$value.'</td>
                  <td title="'.$glo_lang['cart_dongia'].'">'.NUMBER_fomat($dongia).'</td>
                  <td title="'.$glo_lang['cart_thanhtien'].'">'.NUMBER_fomat($thanhtien).'</td>
                </tr>';
              }
        }
        // $thongtin_dathang .= '<tr> <td colspan="4" style="text-align:right;font-weight:bold;">'.$glo_lang['tam_tinh'].':</td> <td colspan="2" title="'.$glo_lang['cart_tong_tien'].'"><span id="pro_sum"> <label style="color:red;font-weight:bold;">'.NUMBER_fomat($tongtien).' '.$glo_lang['dvt'].'</label> </span> </td> </tr>';
        // $thongtin_dathang .= '<tr> <td colspan="4" style="text-align:right;font-weight:bold;">'.$glo_lang['phi_van_chuyen'].':</td> <td colspan="2" title="'.$glo_lang['cart_tong_tien'].'"><span id="pro_sum"> <label style="color:red;font-weight:bold;">'.NUMBER_fomat($phi_ship).' '.$glo_lang['dvt'].'</label> </span> </td> </tr>';
        $thongtin_dathang .= '<tr> <td colspan="4" style="text-align:right;color:red;font-weight:bold;">'.$glo_lang['cart_tong_tien'].':</td> <td colspan="2" title="'.$glo_lang['cart_tong_tien'].'"><span id="pro_sum"> <label style="color:red;font-weight:bold;">'.NUMBER_fomat($tongtien + $phi_ship).' '.$glo_lang['dvt'].'</label> </span> </td> </tr>';
        $thongtin_dathang .= "</table></div>";

        $id_sp            = trim($id_sp,",");
        $so_luong         = trim($so_luong,",");
        $don_gia          = trim($don_gia,",");


        $s_thanhtoan      = $_POST['type_payment'];
        if($s_thanhtoan   == 1) $s_thanhtoannd = $glo_lang['thanh_toan_tien_mat'];
        else                    $s_thanhtoannd = $glo_lang['thanh_toan_chuyen_khoan'];

        $s_fullname     = isset($_POST['s_fullname']) ? $_POST['s_fullname'] : "";
        $s_fullname_s   = isset($_POST['s_fullname_s']) ? $_POST['s_fullname_s'] : "";

        $s_dienthoai    = isset($_POST['s_dienthoai']) ? $_POST['s_dienthoai'] : "";
        $s_dienthoai_s  = isset($_POST['s_dienthoai_s']) ? $_POST['s_dienthoai_s'] : "";

        $s_email        = isset($_POST['s_email']) ? $_POST['s_email'] : "";
        $s_email_s      = isset($_POST['s_email_s']) ? $_POST['s_email_s'] : "";

        $s_address      = isset($_POST['s_address']) ? $_POST['s_address'] : "";
        $s_address_s    = isset($_POST['s_address_s']) ? $_POST['s_address_s'] : "";

        $s_title        = isset($_POST['s_title']) ? $_POST['s_title'] : "";
        $s_title_s      = isset($_POST['s_title_s']) ? $_POST['s_title_s'] : "";

        $s_message      = isset($_POST['s_message']) ? $_POST['s_message'] : "";
        $s_message_s    = isset($_POST['s_message_s']) ? $_POST['s_message_s'] : "";

        //gui mail
        $admin_email    = LAY_email(1);
        $htmlbox        = file_get_contents("nguoiquanly/htmlbox/1m.html");
        $logo           = $fullpath . "/".$thongtin['duongdantin']."/".$thongtin['logo'];
        $thongtinheader = $thongtin['tencongty_'.$lang];
        $footer         = "<p><b>".$thongtin['tencongty_'.$lang]."</b></p>";
        $footer        .= $thongtin['sodienthoai_'.$lang] != "" ? "<p>".$glo_lang['so_dien_thoai'].": ". $thongtin['sodienthoai_'.$lang]."</p>" : "";
        $footer        .= $thongtin['email_'.$lang] != "" ? "<p>".$glo_lang['email'].": ". $thongtin['email_'.$lang]."</p>" : "";
        $footer        .= $thongtin['diachi_'.$lang] != "" ? "<p>".$glo_lang['dia_chi'].": ". $thongtin['diachi_'.$lang]."</p>" : "";



        $tieude_lienhe  = $glo_lang['thong_tin_dat_hang'];
        $diachi_text    = "";
        $khuvuc          = LAY_khuvuc();
        if(isset($_POST['n_tinhthanh']) && $_POST['n_tinhthanh'] != 0) {
          
          $diachi_text    = $khuvuc[$_POST['n_quanhuyen']]['tenbaiviet_vi'].", ".$khuvuc[$_POST['n_tinhthanh']]['tenbaiviet_vi'];
        }


        $noidung        = "<table class='tb-thongtin-tv' border='1' cellspacing='0' cellpadding='4' style='width:100%; border-collapse: collapse; font-family:Tahoma; font-size:11px;text-align: center;' bordercolor='#cccccc'><tr/>";
        $noidung       .= RETURN_text_lienhe($s_fullname_s, $s_fullname);
        $noidung       .= RETURN_text_lienhe($s_dienthoai_s, $s_dienthoai);
        $noidung       .= RETURN_text_lienhe($s_email_s, $s_email);
        $noidung       .= RETURN_text_lienhe($s_address_s, $s_address);
        $noidung       .= RETURN_text_lienhe($s_title_s, $s_title);

        
        // $noidung       .= RETURN_text_lienhe(base64_encode($glo_lang['dia_chi_nhan']), $diachi_text);

        $noidung       .= RETURN_text_lienhe($s_message_s, $s_message);
        $noidung       .= "</tr></table>";
        $noidung       .= '<td colspan="7" >'.$thongtin_dathang.'</td>';

        $data                       = array();
        $data['iduser']             = @$_SESSION['id'];
        $data['hoten']              = $s_fullname;
        $data['sodienthoai']        = $s_dienthoai;
        $data['email']              = $s_email;
        $data['diachi']             = $s_address;
        $data['ghichu']             = $s_message;
        $data['idsp']               = $id_sp;
        $data['soluong']            = $so_luong;
        $data['dongia']             = $don_gia;
        $data['ngaydat']            = time();
        $data['thanhtoan']          = $s_thanhtoan;
        $data['trangthai']          = 1;
        $data['thongtin_thanhtoan']   = addslashes($noidung);

        // phi_ship
        
        $data['phi_ship']          = !empty($phi_ship)  ? $phi_ship : 0;
        $data['thanh_pho']         = isset($_POST['n_tinhthanh']) ? $_POST['n_tinhthanh'] : 0;
        $data['quan_huyen']        = isset($_POST['n_quanhuyen']) ? $_POST['n_quanhuyen'] : 0;

        ACTION_db($data, "#_order",'add',NULL,NULL);

        $id_order     = mysql_insert_id();

        $madh         = 'DH'.mt_rand(1000,9999).$id_order;
        $data1['madh'] = $madh;
        ACTION_db($data1, "#_order", 'update', NULL, "`id` = $id_order");

        $message        = str_replace(array("%thongtin_lienhe%", "%footer%", '%logo%', '%thongtinheader%', '%noidung%'),
          array(LOC_char($tieude_lienhe), $footer, LOC_char($logo), $thongtinheader, $noidung), $htmlbox);


        ob_start();
        GUI_email("$admin_email","", $tieude_lienhe  , $_SERVER['SERVER_NAME'], $message, $thongtin);
        ob_end_clean();
        unset($_SESSION['cart']);
        
        if(!empty($_POST['id_token'])){
          $_SESSION['token'] = md5(RANDOM_chuoi(5));
          $return = array("err" => 1, "token" => $_SESSION['token'],"thanhtien" => $tongtien, "id" => $id_order);
          echo json_encode($return);
        }else {
          echo 1;  
        }
      }
    }
    else {
      if(!empty($_POST['id_token'])){
        $_SESSION['token'] = md5(RANDOM_chuoi(5));
        $return = array("err" => 2, "token" => $_SESSION['token']);
        echo json_encode($return);
      }
      else echo 2;
    }
    exit();
  }

  if($motty == "robots.txt"){
      header('Content-Type: text/plain');
      echo $thongtin['robots'];
      exit();
  }

  if($motty == "pa-size-child" && is_file(_source."code_site/pa-".$haity.".php")){
      include _source."code_site/pa-".$haity.".php";
      exit();
  }

  if($motty == "sitemap.xml"){
      include "sitemap.php";
      exit();
  }

  if($motty == "load-capcha"){
      include("nguoiquanly/plugins/captcha/simple-php-captcha.php");
      exit();
  }

  if($motty == 'load-danhmuc-ajax'){
      include "phantrang_danhmuc_ajax.php";
      exit();
  }
  if($motty == 'load-products-ajax'){
      include "phantrang_kietxuat_ajax.php";
      exit();
  }
  if($motty == 'load-tour-ajax'){
      include "phantrang_tour_ajax.php";
      exit();
  }
  if($motty == 'load-news-ajax'){
      include "phantrang_new_ajax.php";
      exit();
  }
  if($motty == 'load-video-ajax'){
      include "phantrang_video_ajax.php";
      exit();
  }
  if($motty == 'load-room-ajax'){
      include "phantrang_room_ajax.php";
      exit();
  }
  
  if($motty == 'load-img-ajax'){
      include "phantrang_img_ajax.php";
      exit();
  }

  if($motty == 'dang-ky-phone'){
    $v_phone    = $_POST['v_phone'];
    $v_name     = $_POST['v_name'];
    $capcha_hd  = $_POST['capcha_hd'];

    if(isset($_SESSION['cap_phone']) && $_SESSION['cap_phone'] == $capcha_hd)
        {
          $_SESSION['cap_phone'] = RAND(11111,99999);

          $check_query = DB_que("SELECT `id` FROM `#_phone_follow` WHERE `phone` = '".$v_phone."' LIMIT 1");
          if(mysql_num_rows($check_query) == 0)
            {
              $data             = array();
              $data['phone']    = $v_phone;
              $data['v_name']    = $v_name;
              $data['ddate']    = time();
              $data['showhi']   = 1;
              
              ACTION_db($data, '#_phone_follow', 'add', NULL);
              $thongbao = $glo_lang['phone_text_thanhcong'];
            }
          else $thongbao = $glo_lang['phone_text_datontai'];
        
        }
    else $thongbao = $glo_lang['loi_dang_ky'];

    $return = array("new_cap" => $_SESSION['cap_phone'], "message" => $thongbao);
    echo json_encode($return);
    exit();
  }

  if($motty == 'doi-mat-khau' && !empty($_POST)){

    $table    = "#_members";
    $sql      = DB_que("SELECT * FROM $table WHERE `showhi` = 1 AND `id` = '".$_SESSION['id']."' AND `phanquyen` = 0 LIMIT 1");
    $row        = mysql_fetch_array($sql);
    $sql_keypass    = SHOW_text($row['keypass']);
    $sql_matkhau    = SHOW_text($row['matkhau']);

    $matkhau_old    = $_REQUEST['passold_dk'];
    $keypass        = RANDOM_chuoi(5);
    $matkhau        = create_pass($auto_key_pass.md5($auto_key_pass.$_POST['pass_dk']),$keypass);
    $matkhau_old    = create_pass($auto_key_pass.md5($auto_key_pass.$matkhau_old),$sql_keypass);
    if($matkhau_old == $sql_matkhau) {
      if(trim($_POST['pass_dk']) != '')  {
        $data['keypass']  = $keypass;
        $data['matkhau']  = $matkhau;
      }

      ACTION_db($data, "#_members", 'update', NULL, "`id` = '".$_SESSION['id']."' AND `phanquyen` = 0 LIMIT 1");
      echo 1;
    }
    else echo 2;
    exit();
  }
  if($motty == "lay-mat-khau" && !empty($_POST)){
    $email  = isset($_POST['email']) ? $_POST['email']: '';
    $key    = isset($_POST['key']) ? $_POST['key']: '';
    $sql    = DB_que("SELECT * FROM `#_members` WHERE `showhi` = 1 AND `email` = '".$email."' AND `active` = '".$key."' AND `phanquyen` = 0 LIMIT 1");

    $row            = mysql_fetch_array($sql);
    $sql_keypass    = SHOW_text($row['keypass']);
    $keypass        = RANDOM_chuoi(5);
    $matkhau        = create_pass($auto_key_pass.md5($auto_key_pass.$_POST['pass_dk']),$sql_keypass);

    $ex_key         = @explode("O_K", $key);
    if($_POST['pass_dk'] == "") {
      $messenge['error'] = 1;
      echo json_encode($messenge);exit();
    }
    else if(@$ex_key[1]  != md5(GET_ip())){
      $messenge['error'] = 1;
      echo json_encode($messenge);
      exit();
    }else{
        $data               = array();
        $data['matkhau']    = $matkhau;
        $data['active']     = '';
        ACTION_db($data, "#_members", 'update', NULL, "`email` = '".$email."' AND `active`  = '".$key."' AND `phanquyen` = 0 LIMIT 1");
        $messenge['error'] = 0;
        echo json_encode($messenge);
        exit();
    }
    exit();
  }
  
  if($motty == 'check-doi-thong-tin'){
    $hoten          = $_REQUEST['fullname_dk'];
    $sodienthoai    = $_REQUEST['phone_dk'];
    $diachi         = $_REQUEST['diachi'];
    $gioitinh       = $_REQUEST['gioi_tinh'];

    // $bd_date        = $_REQUEST['bd_date'];
    // $bd_month       = $_REQUEST['bd_month'];
    // $bd_year        = $_REQUEST['bd_year'];
    $ngaysinh       = isset($_POST['nam_sinh']) ? $_POST['nam_sinh'] : 0;

    $data                   = array();
    $data['hoten']          = $hoten;
    $data['sodienthoai']    = $sodienthoai;
    $data['diachi']         = $diachi;
    $data['gioitinh']       = $gioitinh;
    $data['ngaysinh']       = $ngaysinh;
    $data['cmnd']       = isset($_POST['cmnd']) ? $_POST['cmnd'] : 0;

    //upload
    $file = "file_upload";
    $hinhanh = "";
    $folder = "./datafiles/member/";
    $newname = time();

    if (isset($_FILES[$file]) && !$_FILES[$file]['error']) {
        $ext = explode('.', $_FILES[$file]['name']);
        $ext = end($ext);
        $name = basename($_FILES[$file]['name'], '.' . $ext);

        if ($_FILES[$file]['type'] == "image/jpeg" || $_FILES[$file]['type'] == "image/png" || $_FILES[$file]['type'] == "image/gif" || $_FILES[$file]['type'] == "image/x-icon" || $_FILES[$file]['type'] == "image/vnd.microsoft.icon") {
            if ($_FILES[$file]["size"] < 10485760) //10mb
            {
                $_FILES[$file]['name'] = $newname . '_' . CONVERT_vn($name) . '.' . $ext;
                if (!copy($_FILES[$file]["tmp_name"], $folder . $_FILES[$file]['name'])) {
                    if (!move_uploaded_file($_FILES[$file]["tmp_name"], $folder . $_FILES[$file]['name'])) {
                        $messenge['error'] = 30;
                        echo json_encode($messenge);
                        exit();
                    }
                }
                $data['icon'] = $_FILES[$file]['name'];
                //xoa anh cu
                $cauquery = DB_que("SELECT * FROM `#_members` WHERE `id` = '" . $_SESSION['id'] . "' AND `phanquyen` = 0");
                $cauquery = mysql_fetch_assoc($cauquery);
                @unlink($folder.$cauquery['icon']);
                //
            } else {
                $messenge['error'] = 30;
                echo json_encode($messenge);
                exit();
            }
        } else {
            $messenge['error'] = 30;
            echo json_encode($messenge);
            exit();
        }
    }

    ACTION_db($data, "#_members", 'update', NULL, "`id` = '".$_SESSION['id']."' AND `phanquyen` = 0 LIMIT 1");
    $_SESSION['hoten'] = $hoten;
    exit();
  }

  if($motty == 'dang-ky-mail' && !empty($_POST)){
    $v_email    = !empty($_POST['ip_sentmail']) ? $_POST['ip_sentmail'] : "";
    $v_name     = !empty($_POST['ip_sentmail_name']) ? $_POST['ip_sentmail_name'] : "";
    $v_phone    = !empty($_POST['ip_sentmail_phone']) ? $_POST['ip_sentmail_phone'] : "";
    $capcha_hd  = !empty($_POST['capcha_hd']) ? $_POST['capcha_hd'] : "";

    if(isset($_SESSION['cap']) && $_SESSION['cap'] == $capcha_hd)
        {
          $_SESSION['cap'] = RAND(11111,99999);
          if (!filter_var($v_email, FILTER_VALIDATE_EMAIL) === false)
            {
              $check_query = DB_que("SELECT `id` FROM `#_email_follow` WHERE `email` = '".$v_email."' LIMIT 1");
              if(mysql_num_rows($check_query) == 0)
                {
                  $data             = array();
                  $data['email']    = LOC_char($v_email);
                  $data['v_name']   = LOC_char($v_name);
                  $data['v_phone']  = LOC_char($v_phone);
                  $data['ddate']    = time();
                  $data['showhi']  = 1;
                  //$data['nstatus']  = 1;
                  //upload
                  $hinhanh = UPLOAD_file("inputfile", "./datafiles/post/", time());
                  if (!empty($hinhanh)) {
                      $data['icon'] = $hinhanh;
                  }
                  
                  $check_send = ACTION_db($data, '#_email_follow', 'add', NULL);
                  $thongbao = $glo_lang['them_dia_chi_email_thanh_cong'];
                }
              else $thongbao = $glo_lang['dia_chi_email_da_ton_tai'];
            }
          else
            {
              $thongbao = $glo_lang['dia_chi_email_khong_hop_le'];
            }
        }
    else $thongbao = $glo_lang['loi_dang_ky'];

    $return = array("new_cap" => $_SESSION['cap'], "message" => $thongbao);
    echo json_encode($return);

    //gui mai
    // if(!empty($check_send) && $check_send) {
    //   $admin_email    = LAY_email(1);
    //   $htmlbox        = file_get_contents("nguoiquanly/htmlbox/1m.html");
    //   $logo           = $fullpath . "/".$thongtin['duongdantin']."/".$thongtin['logo'];
    //   $thongtinheader = $thongtin['tencongty_'.$lang];
    //   $footer         = "<p><b>".$thongtin['tencongty_'.$lang]."</b></p>";
    //   $footer        .= $thongtin['sodienthoai_'.$lang] != "" ? "<p>".$glo_lang['so_dien_thoai'].": ". $thongtin['sodienthoai_'.$lang]."</p>" : "";
    //   $footer        .= $thongtin['email_'.$lang] != "" ? "<p>".$glo_lang['email'].": ". $thongtin['email_'.$lang]."</p>" : "";
    //   $footer        .= $thongtin['diachi_'.$lang] != "" ? "<p>".$glo_lang['dia_chi'].": ". $thongtin['diachi_'.$lang]."</p>" : "";

    //   $noidung        = RETURN_title_lienhe(base64_encode($glo_lang['dang_ky_nhan_ban_tin']));


    //   $noidung       .= RETURN_text_lienhe(base64_encode($glo_lang['ho_va_ten']), $v_name);
    //   $noidung       .= RETURN_text_lienhe(base64_encode($glo_lang['so_dien_thoai']), $v_phone);
    //   $noidung       .= RETURN_text_lienhe(base64_encode($glo_lang['email']), $v_email);
    //   $message        = str_replace(array( "%footer%", '%logo%', '%thongtinheader%', '%noidung%'),
    //     array($footer, LOC_char($logo), $thongtinheader, $noidung), $htmlbox);

    //   ob_start();
    //   GUI_email("$admin_email","", $glo_lang['dang_ky_nhan_ban_tin']  , $_SERVER['SERVER_NAME'], $message, $thongtin);
    //   ob_end_clean();
    // }
    //end
    exit();
  }

  if($motty == 'add-cart'){
      if(isset($_SESSION['cart'][$_POST['idsp']]))
      {
          $_SESSION['cart'][$_POST['idsp']] = $_SESSION['cart'][$_POST['idsp']] + $_POST['qty'];
      }
      else
      {
          $_SESSION['cart'][$_POST['idsp']]   = $_POST['qty'];
      }
      exit();
  }

  if($motty == 'update-qty'){
    $id      = $_POST['id'];
    $qty     = trim($_POST['qty']);
    if(!is_numeric($qty)) exit();
    if($qty == 0) {
        unset($_SESSION['cart'][$id]);
        echo "reload";
        exit();
    }

    $sanpham = DB_que("SELECT * FROM `#_baiviet` WHERE `id` = '".$id."' LIMIT 1");
    if(!mysql_num_rows($sanpham)) exit();

    $sanpham                = mysql_fetch_assoc($sanpham);
    $_SESSION['cart'][$id]  = $qty;

    $dongia_new = $dongia   = $sanpham['opt_km'] == 1 && $sanpham['giakm'] != 0 ? $sanpham['giakm'] : $sanpham['giatien'];

    $khuyenmai              = MUA_XtangY($id, $qty);
    $thanhtien              = LOAD_gia_xy($khuyenmai, $dongia, $qty);

    $tongtien               = 0;

    foreach ($_SESSION['cart'] as $key => $value) { 
      $sanpham    = DB_que("SELECT * FROM `#_baiviet` WHERE `id` = '".$key."' LIMIT 1");
      $sanpham    = mysql_fetch_assoc($sanpham);

      $dongia_new = $dongia   = $sanpham['opt_km'] == 1 && $sanpham['giakm'] != 0 ? $sanpham['giakm'] : $sanpham['giatien'];
      $khuyenmai              = MUA_XtangY($key, $_SESSION['cart'][$key]);
      $tongtien              += LOAD_gia_xy($khuyenmai, $dongia, $_SESSION['cart'][$key]) ;
    }

    $return = array("thanhtien" => NUMBER_fomat($thanhtien), "tongtien" => NUMBER_fomat($tongtien)." ".$glo_lang['dvt']);
    echo json_encode($return);exit();
  }

  if($motty == 'check-dang-nhap' && !empty($_POST)){
    if (isset($_POST['txt_email']))
    {
        $email  = addslashes($_POST['txt_email']);
        $pass   = addslashes($_POST['txt_pass']);

        //Kiểm tra tên đăng nhập có tồn tại không
        $query = DB_que("SELECT `id`,`matkhau`,`keypass`, `hoten` FROM `#_members` WHERE `showhi` = 1 AND `email`='".mysql_real_escape_string($email)."' AND `phanquyen` = 0 LIMIT 1");
        if (mysql_num_rows($query) == 0) {
            $messenge['error']  = 1;
            // $messenge['ms']     = email_pass_khong_khong_dung;
            echo json_encode($messenge);
            exit();
        }

        //Lấy mật khẩu trong database ra
        $row = mysql_fetch_array($query);
        $keypass = $row['keypass'];
        // $phannhom = $row['diemuytin'];
        $pass = create_pass($auto_key_pass.md5($auto_key_pass.$pass),$keypass);

        //So sánh 2 mật khẩu có trùng khớp hay không
        if ($pass != $row['matkhau']) {
            $messenge['error']  = 1;
            // $messenge['ms']     = email_pass_khong_khong_dung;
            echo json_encode($messenge);
            exit();
        }

        //Lưu tên đăng nhập
        $_SESSION['id']    = $row['id'];
        $_SESSION['email'] = $email;
        $_SESSION['hoten'] = $row['hoten'];
        $messenge['error'] = 0;
        echo json_encode($messenge);
        exit();
    }
    exit();
  }

  if($motty == 'check-dang-ky' && !empty($_POST)){
    if(empty($_POST['mabaove']) || strtolower($_POST['mabaove']) != strtolower($_SESSION['captcha']['code'])){
      $messenge['error'] = 10;
      echo json_encode($messenge);
      exit();
    }

    if (isset($_POST['email_dk']))
    {
        $email          = $_POST['email_dk'];
        $hoten          = $_POST['fullname_dk'];
        $sodienthoai    = $_POST['phone_dk'];
        $diachi         = $_POST['diachi'];
        $keypass        = RANDOM_chuoi(5);
        $matkhau        = create_pass($auto_key_pass.md5($auto_key_pass.addslashes($_POST['pass_dk'])),$keypass);

        $query = DB_que("SELECT * FROM `#_members` WHERE `email`='".mysql_real_escape_string($email)."' LIMIT 1");
        if (mysql_num_rows($query) > 0) {
            $messenge['error'] = 1;
            echo json_encode($messenge);
            exit();
        }

        $data                   = array();
        $data['tentruycap']     = str_replace(strstr($email, '@'),'',$email).(rand(999,9999)).time();
        $data['email']          = $email;
        $data['hoten']          = $hoten;
        $data['sodienthoai']    = $sodienthoai;
        $data['keypass']        = $keypass;
        $data['matkhau']        = $matkhau;
        $data['diachi']         = $diachi;
        $data['gioitinh']       = isset($_POST['gioi_tinh']) ? $_POST['gioi_tinh'] : "";
        $data['ngaysinh']       = isset($_POST['nam_sinh']) ? $_POST['nam_sinh'] : "";
        $data['cmnd']           = isset($_POST['cmnd']) ? $_POST['cmnd'] : "";


        $data['phanquyen']      = 0;
        $data['showhi']         = 1;       

        $id = ACTION_db($data, '#_members' , 'add', array("themmoi"),NULL);

        //gui mai
        $admin_email    = LAY_email(1);
        $htmlbox        = file_get_contents("nguoiquanly/htmlbox/1m.html");
        $logo           = $fullpath . "/".$thongtin['duongdantin']."/".$thongtin['logo'];
        $thongtinheader = $thongtin['tencongty_'.$lang];
        $footer         = "<p><b>".$thongtin['tencongty_'.$lang]."</b></p>";
        $footer        .= $thongtin['sodienthoai_'.$lang] != "" ? "<p>".$glo_lang['so_dien_thoai'].": ". $thongtin['sodienthoai_'.$lang]."</p>" : "";
        $footer        .= $thongtin['email_'.$lang] != "" ? "<p>".$glo_lang['email'].": ". $thongtin['email_'.$lang]."</p>" : "";
        $footer        .= $thongtin['diachi_'.$lang] != "" ? "<p>".$glo_lang['dia_chi'].": ". $thongtin['diachi_'.$lang]."</p>" : "";

        $subject        = "Thông tin tài khoản khách hàng";
 
        $noidung        = '<tr><td colspan="7"><p>Kính gửi: '.$hoten.'</p><p>Chào Quý khách,</p><p>Cảm ơn quý khách đã đăng ký thành viên tại website '.$_SERVER['HTTP_HOST'].'</p><p>Chúng tôi xin gửi thông tin tài khoản như sau:</p><p>Email: '.$email.'<br/><br/>Mật khẩu: '.$_POST['pass_dk'].'</p></td></tr>';

        $message        = str_replace(array("%thongtin_lienhe%", "%footer%", '%logo%', '%thongtinheader%', '%noidung%'),
                        array(LOC_char($subject), $footer, LOC_char($logo), $thongtinheader, $noidung), $htmlbox);


        ob_start();
        GUI_email("$email", "$hoten", "$subject", $_SERVER['SERVER_NAME'], $message, $thongtin);
        ob_end_clean();
        //end gui mai

        // $_SESSION['email'] = $email;
        // $_SESSION['id']    = $id;
        // $_SESSION['hoten'] = $hoten;
        $messenge['error'] = 0;
        echo json_encode($messenge);
        exit();
    }
    exit();
  }

  if($motty == 'check-email' && !empty($_POST)) {
    if (isset($_POST['email']))
    {
        $email  = $_POST['email'];
        $sql    = DB_que("SELECT * FROM `#_members` WHERE `showhi` = 1 AND `phanquyen` = 0 AND `email` = '".$email."' LIMIT 1");
        if(mysql_num_rows($sql) > 0)
        {
            $r      = mysql_fetch_assoc($sql);
            $hoten  = $r['hoten'];
            $active = md5(time())."O_K".md5(GET_ip());
            $data                   = array();
            $data['active']         = $active;      

            $sql = ACTION_db($data, '#_members', 'update', array("capnhat"), "`email` = '".$email."' AND `phanquyen` = 0");

            $admin_email    = LAY_email(1);
            $htmlbox        = file_get_contents("nguoiquanly/htmlbox/1m.html");
            $logo           = $fullpath . "/".$thongtin['duongdantin']."/".$thongtin['logo'];
            $thongtinheader = $thongtin['tencongty_'.$lang];
            $footer         = "<p><b>".$thongtin['tencongty_'.$lang]."</b></p>";
            $footer        .= $thongtin['sodienthoai_'.$lang] != "" ? "<p>".$glo_lang['so_dien_thoai'].": ". $thongtin['sodienthoai_'.$lang]."</p>" : "";
            $footer        .= $thongtin['email_'.$lang] != "" ? "<p>".$glo_lang['email'].": ". $thongtin['email_'.$lang]."</p>" : "";
            $footer        .= $thongtin['diachi_'.$lang] != "" ? "<p>".$glo_lang['dia_chi'].": ". $thongtin['diachi_'.$lang]."</p>" : "";


            $url        = $full_url.'/mat-khau-moi/?email='.$r['email'].'&key='.$active;
            $subject    = $glo_lang['guide_change_pass'];

            $noidung        = '<tr><td colspan="7"><p>Xin Chào '.$hoten.',</p><p>Chúng tôi nhận được yêu cầu đổi mật khẩu từ email của bạn. Bạn hãy <a href="'.$url.'">nhấn vào đây</a> để tiến hành thay đổi mật khẩu.</p><p>Xin cảm ơn và rất mong tiếp tục nhận được sự ủng hộ của bạn!</p></td></tr>';

            $message        = str_replace(array("%thongtin_lienhe%", "%footer%", '%logo%', '%thongtinheader%', '%noidung%'),
                            array(LOC_char($subject), $footer, LOC_char($logo), $thongtinheader, $noidung), $htmlbox);

            ob_start();
            GUI_email("$email", "$hoten", "$subject", $_SERVER['SERVER_NAME'], $message, $thongtin);
            ob_end_clean();
            
            $messenge['error']  = 0;
            $messenge['ms']     = $email;
        }
        else
        {   
            $messenge['error']  = 1;
        }

        echo json_encode($messenge);
        exit();
    }
    exit();
  }

  if($motty == 'dang-xuat') {
    unset($_SESSION['id']);
    unset($_SESSION['email']);
    unset($_SESSION['hoten']);
    LOCATION_js($full_url);
    exit();
  }

  
  if(isset($_POST['action_gui'])){
    $id_gui       = $_POST['id_gui'];
    $id_form      = $_POST['id_form'];
    $list_id      = $_POST['list_id'];
    $list_title   = $_POST['list_title'];
    $array_save   = array();

    $list_id_cout = count($list_id);
    for ($i=0; $i < $list_id_cout; $i++) { 
      $name = isset($_POST['name_'.$list_id[$i]]) ? $_POST['name_'.$list_id[$i]] : '';

      if(isset($_POST['check_box_name_'.$list_id[$i]])){
        $name = "";
        unset($_SESSION['form_chekbox']['ckb'.$list_id[$i]]);
        foreach ($_POST['check_box_name_'.$list_id[$i]] as $value) {
          if($value != ''){
            $name .= "[".$value."] ";
            $_SESSION['form_chekbox']['ckb'.$list_id[$i]][] = $value;
          }
          
        }
      }
      $array_save[] = array("id" => $list_id[$i], "td" => $list_title[$i], "nd" => $name);

      if(isset($_POST['name_'.$list_id[$i]])){
        $_SESSION['form']['name_'.$list_id[$i]] = $name;  
      }
      
      
    }

    if(strtolower($_POST['mabaove']) == strtolower($_SESSION['captcha']['code']))
    {
      $data               = array();
      $data['id_gui']     = $id_gui;
      $data['id_form']    = $id_form;
      $data['ngay_dang']  = time();
      $data['noidung_vi'] = serialize($array_save);
      $data['showhi']     = 0;
      unset($_SESSION['form']);
      ACTION_db($data, '#_form_danhmuc_nd', 'add');
      ALERT_js($glo_lang['yeu_cau_cua_ban_da_duoc_gui']);
      LOCATION_js($full_url);
    }
    else {
      ALERT_js($glo_lang['nhap_ma_bao_ve_chua_dung']);
    }
  }
  if($motty == "check_donhang" AND isset($_POST)) {
    $madh   = isset($_POST['madh']) ? $_POST['madh'] : "";
    $email  = isset($_POST['email']) ? $_POST['email'] : "";
    $nd_kietxuat      = DB_que("SELECT * FROM `#_order` WHERE  `madh` = '".$madh."' OR `email` = '$email' OR `sodienthoai` = '$email' ORDER BY `id` DESC ");
    if(!mysql_num_rows($nd_kietxuat)) echo "<div class='dv-notfull-cart'>".$glo_lang['khong_tim_thay_don_hang_nao']."</div>";
    else{
      echo '<div class="dv-donhhang dv-dangnhap ">
            <div id="cart_list" style="margin: 0; line-height: 1.7">
              <div class="dv-table-reposive tb_rps">
                <table width="100%" border="0" cellspacing="1" cellpadding="5" class="tb-bg-fff">
                  <tbody><tr>
                    <th width="10px">'.$glo_lang['stt'].'</th>
                    <th>'.$glo_lang['ma_dh'].'</th>
                    <th width="20%">'.$glo_lang['ngay_dat'].'</th>
                    <th width="20%" class="text-center">'.$glo_lang['cart_thanhtien'].'</th>
                  </tr>';
                  
                    $stt = 0;
                    while ($rows = mysql_fetch_assoc($nd_kietxuat)) {
                      $stt++;
                      $soluong  = explode(",", $rows['soluong']);
                        $dongia   = explode(",", $rows['dongia']);

                        $thanhtien = 0;
                        $soluong_num = count($soluong);
                        for ($i=0; $i < $soluong_num; $i++) { 
                          $thanhtien += $soluong[$i] * $dongia[$i];
                        }
 
                  echo '<tr>
                      <td class="text-center" title="'.$glo_lang['stt'].'">
                        '.$stt.'
                      </td>
                      <td title="'.$glo_lang['ma_dh'].'">
                        <p><span style="color: red; float: left; margin-right: 5px;">'.$rows['madh'].'</span>
                        '.TRANGTHAI_donhang($rows['trangthai'], $glo_lang).'</p>
                        <p class="thanhtoan">'.($rows['thanh_toan'] == 0 ? $glo_lang['don_hang_chua_duoc_thanh_toan'] : $glo_lang['don_hang_da_thanh_toan']).'</p>
                        <p class="p_xemchitiet"><a class="cur" onclick="LOAD_chitiet_dh(\''.$full_url."/load_chi_tiet_dh/".'\',\''.$rows['id'].'\')"><i class="fa fa-angle-double-right" ></i>'.$glo_lang['chi_tiet_don_hang'].'</a></p>
                      </td>
                      <td title="'.$glo_lang['ngay_dat'].'">'.date('d-m-Y H:i', $rows['ngaydat']).'</td>
                      <td title="'.$glo_lang['cart_thanhtien'].'" class="text-center">'.NUMBER_format($thanhtien).' '.$glo_lang['dvt'].'</td>
                    </tr>';
                   } 
                  echo '</tbody>
                </table> 
              </div>
              <div class="clr"></div> 
            </div>
            </div>';
    }
    exit();
  }
  if($motty == "load_chi_tiet_dh" AND isset($_POST)) {
    $madh         = isset($_POST['madh']) ? $_POST['madh'] : "";
    $nd_kietxuat  = DB_que("SELECT * FROM `#_order` WHERE `id` = '".$madh."' LIMIT 1");
    if(!mysql_num_rows($nd_kietxuat)){
      echo $glo_lang['ma_dh_khong_ton_tai'];
    }
    else {
      $nd_kietxuat  = mysql_fetch_assoc($nd_kietxuat);

      echo '<div class="dv-table-reposive dv-thongtin-thanhtoan">
              <table class="tb-thongtin-tv tb-bg-fff" border="1" cellspacing="0" cellpadding="4" style="width:100%; border-collapse: collapse; font-family:Tahoma; font-size:11px;text-align: center;" bordercolor="#cccccc">
                <tbody>
                  <tr>
                    <td colspan="3" style="width:160px; font-size: 13px">'.$glo_lang['ma_dh'].'</td>
                    <td colspan="4" width="400"><span style="display:block; padding-left:5px; font-size: 13px">'.$nd_kietxuat['madh'].'</span></td>
                  </tr>
                  <tr><td colspan="3" style="width:160px; font-size: 13px">'.$glo_lang['thanh_toan'].'</td>
                    <td colspan="4" width="400"><span style="display:block; padding-left:5px; font-size: 13px">'.($nd_kietxuat['thanh_toan'] == 0 ? $glo_lang['don_hang_chua_duoc_thanh_toan'] : $glo_lang['don_hang_da_thanh_toan']).'<p style="line-height: 1; font-size: 10px; margin-bottom: 10px; color: #dc0c0c;">'.$nd_kietxuat['ma_paypal'].'</p></span></td>
                  </tr>
                </tbody>
              </table>
              '.$nd_kietxuat['thongtin_thanhtoan'].'
            </div>';
    }
    exit();
  }
?>