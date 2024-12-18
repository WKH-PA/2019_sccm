<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 18;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = isset($_GET['key']) ? true : false;

  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($is_search){
    $slug_step      = "2,3,4,5,6,7,8";
    $name_titile    = $glo_lang['tim_kiem']; 
    // $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '6' LIMIT 1");
    // $thongtin_step = mysql_fetch_assoc($thongtin_step);
  }
  else if($slug_table != 'step' && $motty != "su-kien-noi-bat"){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "")
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  
  if($is_search)
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";

  if($motty           == "su-kien-noi-bat") {
    $slug_step        = "8";
    $wh               = "  AND `opt1` = 1 ";
    $name_titile      = $glo_lang['su_kien_noi_bat']; 
    $catasort         = "`capnhat` DESC, ";
  }

  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  include _source."phantrang_kietxuat.php";
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  // $retuen_arr = array();
  // while ($r   = mysql_fetch_assoc($nd_kietxuat)) {
  //   $retuen_arr[] = $r; 
  // }
  if($is_search != "") {
    $link_p = '<span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>'.$glo_lang['tim_kiem']."</a>";
    $thongtin_step   = LAY_anhstep_now(8);
  }
 
  else {
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table);
  }
  // if(count($retuen_arr) == 1){
  //     $arr_running = $retuen_arr[0];
  //     include "3a.php";
  // }
  // else {
?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$name_titile ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=$link_p ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="tintuc_home_id tintuc_home_id_ds flex">
    <?php 
        if($nd_total == 0){
        echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
      }else{
        $i = 0;
        while ($rows = mysql_fetch_array($nd_kietxuat)) 
          { 
            $i++;
    ?>

    <ul>
      <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
      <h4><i class="fa fa-calendar"></i><?=CONVER_thu(date("l", $rows['ngaydang']), $glo_lang) ?>, <?=date('d/m/Y', $rows['ngaydang']) ?></h4>
      <h3><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
      <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
    </ul>
    <?php }} ?>
    <div class="clr"></div>
  </div>
  <div class="nums">
    <ul>
      <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
    </ul>
    <div class="clr"></div>
  </div>
</div>
