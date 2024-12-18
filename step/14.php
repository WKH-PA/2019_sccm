<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 16;
  else $numview         = $thongtin_step['num_view'];


  // $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  // $is_search = $motty == 'search' ? true : false;


  $is_search = isset($_GET['pla']) || isset($_GET['emp']) ? true : false;
  $pla       = isset($_GET['pla']) && is_numeric($_GET['pla']) ? $_GET['pla'] : "";
  $emp       = isset($_GET['emp']) && is_numeric($_GET['emp']) ? $_GET['emp'] : ""; 

  if($is_search){
    // $slug_step      = 3;
    // $lay_all_kx     = LAYDANHSACH_idkietxuat(0, $slug_step);
    // $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    // $thongtin_step  = mysql_fetch_assoc($thongtin_step);
    $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
  }
  else if($slug_table  == 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
      $tenhienthi = SHOW_text($thongtin_step['tenbaiviet_'.$lang]);
  }
  else{
      $tenhienthi     = SHOW_text($arr_running['tenbaiviet_'.$lang]);
      $lay_all_kx     = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }

  // if($is_search) $slug_step = "1,2,3";

  $wh = "";
  if($is_search) {
    if($pla != '')
      $lay_all_kx = LAYDANHSACH_idkietxuat($pla, $slug_step);
    if($emp != '')
      $wh .= " AND FIND_IN_SET(".$emp.", `detail_vi`) > 0 ";
    
    // $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%' OR `p1` = '".$key."')";
  }
  $wh .= "  AND `id_parent` in (".$lay_all_kx.") ";
  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total     = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total     = mysql_num_rows($nd_total);

  include _source."phantrang_kietxuat.php";

  $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
?>
<div class="conten_left">
  <div class="box_id_home">
    <div class="title_tin_id">
      <h3><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h3>
    </div>
    <?php 
      if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
      }else{
        $i = $vi_tri;
      while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
        // $gia = GET_gia($rows['giatien'], $rows['giakm'], $rows['opt_km'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", $glo_lang['gia'], $glo_lang['gia_km'] );
        $i++;
    ?> 
    <div class="faq_online_id">
      <div class="name_left_faq">
        <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
        <ul>
          <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          <p><?=CONVER_thu(date("l", $rows['ngaydang']), $glo_lang) ?>, <?=date('d/m/Y', $rows['ngaydang']) ?></p>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="faq_question showText">
        <?=SHOW_text($rows['mota_'.$lang]) ?>
      </div>
      <div class="traloi_cauhoi">
        <h3><i class="fa fa-comments-o"></i> <?=$glo_lang['tra_loi'] ?></h3>
        <div class="showText">
            <?=SHOW_text($rows['noidung_'.$lang]) ?>
        </div>
      </div>
    </div>
    <?php }} ?>
 
    <div class="nums">
      <ul>
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php include _source."right_conten.php";?>
<div class="clr"></div>