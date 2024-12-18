<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 18;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = isset($_GET['key']) ? true : false;

  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($is_search){
    $slug_step      = "2,3,4,5";
    $name_titile    = $glo_lang['tim_kiem']; 
    // $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '6' LIMIT 1");
    // $thongtin_step = mysql_fetch_assoc($thongtin_step);
  }
  else if($slug_table != 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "")
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  
  if($is_search)
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";

  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  include _source."phantrang_kietxuat.php";
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);

?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2>khách hàng</h2>
      <li><i class="fa fa-home"></i><a href="#">trang chủ</a> // <a href="#">khách hàng</a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="flex">
  <?php 
      if($nd_total == 0){
      echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
    }else{
      $i = 0;
      while ($rows = mysql_fetch_array($nd_kietxuat)) 
        { 
          $i++;
  ?>
    <div class="doitackhachhang_id">
      <li><a href="<?=GET_link($full_url, SHOW_text($rows['tags_vi'])) ?>" target="_blank"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
      <ul>
        <h3><a href="<?=GET_link($full_url, SHOW_text($rows['tags_vi'])) ?>" target="_blank"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <p><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></p>
      </ul>
      <div class="clr"></div>
    </div>
  <?php }} ?>
  </div>
  
  <div class="clr"></div>
  <div class="nums">
    <ul>
      <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
    </ul>
    <div class="clr"></div>
  </div>
</div>