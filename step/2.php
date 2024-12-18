<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 20;
  else $numview         = $thongtin_step['num_view'];

  

  $key            = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $tn             = isset($_GET['tn']) ? $_GET['tn'] : '';
  $is_search      = $motty == 'search' ? true : false;

  // if(isset($_GET['rp'])){
  //   $tenhienthi     = SHOW_text($arr_running['tenbaiviet_'.$lang]);
  //   $lay_all_kx     = LAYDANHSACH_idkietxuat($_GET['rp'], $slug_step);
  // }
  // else 
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  $wh               = "";
  $nd_title         = "";

  if($is_search){
    $slug_step      = "2";
    $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step  = mysql_fetch_assoc($thongtin_step);
    $name_titile    = $glo_lang['tim_kiem']; 
 
    $wh .= " AND `step` IN (".$slug_step.")  ";
  }
  else if($slug_table  == 'step'){
      // $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
      $tenhienthi = SHOW_text($thongtin_step['tenbaiviet_'.$lang]);
      $nd_title   = SHOW_text($thongtin_step['noidung_'.$lang]);

      $danhmuc_list = LAY_danhmuc(2, 0 , "`id_parent`  = 0");
  }
  else{
      $tenhienthi     = SHOW_text($arr_running['tenbaiviet_'.$lang]);
      $lay_all_kx     = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);

      $wh .= "  AND (FIND_IN_SET('".$arr_running['id']."', `id_parent_muti`) OR (`id_parent` in (".$lay_all_kx."))) "; 
      $nd_title       = SHOW_text($arr_running['noidung_'.$lang]);


      $danhmuc_list   = LAY_danhmuc(2, 0, "`id_parent` = '".GET_danhmuc_pr($arr_running['id'], 2)."' ");
  
  }

  //chu de sp
  // if(!empty($lay_all_kx) && $lay_all_kx != 0 ){
  //   $wh .= "  AND `id_parent` in (".$lay_all_kx.") "; 
  // }
 

  // if($tn != "") { 
  //   $tn = str_replace("-", ",", $tn);
  //   $tn_arr = explode(",", $tn);
  //   $tn_arr = count($tn_arr);


  //   $list_id_tn_sp = DB_que("SELECT * FROM `#_baiviet_select_tinhnang`  WHERE `id_val` IN ($tn) GROUP by `id_baiviet` HAVING count(*) >= $tn_arr");
  //   $list_id_sp    = "0";
  //   while ($rows   = mysql_fetch_assoc($list_id_tn_sp)) {
  //     $list_id_sp    .= $list_id_sp    == "" ? $rows['id_baiviet'] : ",".$rows['id_baiviet'];
  //   }

  //   if($list_id_sp != "") {
  //     $wh .= " AND `id` IN (".$list_id_sp.")  ";
  //   }
  // }
 
  if($key != ""){
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";
  }
  // if(isset($_GET['fav'])) {
  //   $name_titile    = $glo_lang['san_pham_yeu_thich']; 

  //   $check_ckid     = !empty($_COOKIE['sp_yeuthich']) ? $_COOKIE['sp_yeuthich'] : 0;
  //   $check_ckid     = trim($check_ckid, ",");
  //   $wh .= " AND `id` IN ($check_ckid)";
  // }

  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total     = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total     = mysql_num_rows($nd_total);

  include _source."phantrang_kietxuat.php";
  if($is_search != "") {
    $link_p = "<span>/</span><a>".$glo_lang['tim_kiem']."</a>";
  }
  else {
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table);
  }
  
?>
<div class="link_page">
  <div class="pagewrap">
    <h3><?= $name_titile ?></h3>
    <ul>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=$link_p ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div><div class="pagewrap page_conten_page">
  <div id="pro_tabs">
    <div class="box_tab">
      <ul class="listtabs">
        <?php 
          if(!empty($danhmuc_list)){ foreach ($danhmuc_list  as $rows) {  
            $acti = "";
            if(strtolower($rows['seo_name']) == $motty) $acti = "selected";
        ?>
        <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>" class="<?=$acti ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php }} ?>
        <div class="clr"></div>
      </ul>
    </div>
  </div>
    <div class="pro_id ">
      <div class="pro_id_home no_box flex">
      <?php 
        if($nd_total == 0){
            echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
          while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
            // $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
        ?>
        <ul>
          <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
          <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
          <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          </a>
        </ul>
        <?php }} ?> 
      <div class="clr"></div>
      </div>
    </div>
    <div class="nums">
      <ul>
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      </ul>
      <div class="clr"></div>
    </div>
</div>
 