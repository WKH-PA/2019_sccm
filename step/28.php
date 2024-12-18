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
  if($is_search){
    $slug_step      = "2,3";
    $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step  = mysql_fetch_assoc($thongtin_step);
    $name_titile    = $glo_lang['tim_kiem']; 

  }

  
  else if($slug_table  == 'step'){
      // $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
      $tenhienthi = SHOW_text($thongtin_step['tenbaiviet_'.$lang]);
  }
  else{
      $tenhienthi     = SHOW_text($arr_running['tenbaiviet_'.$lang]);
      // $lay_all_kx     = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
      $wh .= "  AND FIND_IN_SET('".$arr_running['id']."', `id_parent_muti`) "; 
  }

  // if($is_search) $slug_step = "1,2,3";
  
  //loai nao
  // if(!empty($thongtin_step['id']) && !$is_search){
  //   $wh = "  AND FIND_IN_SET('".$thongtin_step['id']."',`detail_cn`) ";
  // }
  
  //chu de sp
  // if(!empty($lay_all_kx) && $lay_all_kx != 0 ){
  //   $wh .= "  AND `id_parent` in (".$lay_all_kx.") "; 
  // }
 
  //chu de hang
  // if(!empty($thongtin_step['id']) && $thongtin_step['id'] != 2 && $arr_running['id'] != $thongtin_step['id']){
  //   $wh .= "  AND FIND_IN_SET('".$arr_running['id']."',`detail_en`) ";
  // }
  
  // if($tn != ""){
  //   $tn = explode("-", $tn);
  //   foreach ($tn as $t) {
  //     if(is_numeric($t)){
  //       $wh .= "  AND FIND_IN_SET('".$t."',`detail_vi`) ";  
  //     }
  //   }
  // }

  //san pham lien quan hang
  // if(isset($_GET['rph']) && is_numeric($_GET['rph'])){
  //   $rph = DB_que("SELECT `detail_en` FROM `#_baiviet` WHERE `id` = '".$_GET['rph']."' LIMIT 1");
  //   $rph = mysql_fetch_assoc($rph);
  //   $rph = $rph['detail_en'];
  //   $wh = "";
  //   $tn = explode(",", $rph);
  //   foreach ($tn as $t) {
  //     if(is_numeric($t)){
  //       if($wh != "")
  //         $wh .= "  OR FIND_IN_SET(".$t.",`detail_en`) > 0  ";  
  //       else 
  //         $wh .= "  FIND_IN_SET(".$t.",`detail_en`) > 0 ";  
  //     }
  //   }
  //   if($wh != "") $wh = " AND ($wh) ";
  // }

  if($key != ""){
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";
  }
 
  // $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total     = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total     = mysql_num_rows($nd_total);

  include _source."phantrang_kietxuat.php";
?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <h3><?=$name_titile ?></h3>
    <ul>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><img src="images/w_bg_location.gif" alt=""> <?=$glo_lang['trang_chu'] ?></a><?=($is_search) ? " | ".$glo_lang['tim_kiem'] : GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<style>.sticky_top { position: -webkit-sticky; position: sticky; top: 80px; z-index: 9; }</style>
<div class="pagewrap page_conten_page">
  <div class="right_conten">
    <div class="khoanhoc_id_2 flex">
      <?php 
        if($nd_total == 0){
            echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
        while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
          $gia = GET_gia($rows['giatien'], $rows['giakm'], $rows['opt_km'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );

      ?>
      <ul>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
        <h3><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <h2><?=$glo_lang['gia'] ?>: <?=$gia['text_gia'].$gia['text_km'] ?></h2>
        <p><i class="fa fa-calendar-check-o" aria-hidden="true"></i><?=$glo_lang['thoi_gian_hoc'] ?>: <?=$rows['p3'] ?></p>
        <h4><a class="cur" onclick="LOAD_popup_new('<?=$full_url ?>/pa-size-child/dang-ky-hoc/?id=<?=$rows['id'] ?>', '450px')"><?=$glo_lang['dang_ky'] ?><i class="fa fa-sign-out" aria-hidden="true"></i></a></h4>
        <h5><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-long-arrow-right"></i></a></h5>
        <div class="clr"></div>
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
  <div class="left_conten sticky_top">  
    <?php include _source."left_conten.php";?>
  </div>
  <div class="clr"></div>
</div>