<?php
  if($slug_table != 'step') {
    include '22a.php';
  }else {

  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = isset($_GET['key']) ? true : false;

  $lay_all_kx = "";
  if($is_search){
    $lay_all_kx     = LAYDANHSACH_idkietxuat(0, $slug_step);
    $slug_step      = 4;

    $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step = mysql_fetch_assoc($thongtin_step);
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
  // include _source."phantrang_kietxuat.php";
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  // 
  $pzer                   = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

  $vi_tri                 = PHANTRANG_start($pzer, $numview);
  if ($pzer               == 1 || $pzer == NULL) 
      $pzz                = 0;
  else $pzz               = $pzer * $numview;

  if(empty($wh)) $wh = '';
  $nd_kietxuat  = DB_que("SELECT * FROM `#_danhmuc` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC, `id` DESC LIMIT $vi_tri,$numview");

  // echo "SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC, `id` DESC LIMIT $vi_tri,$numview";
  
  $nd_total    = DB_que("SELECT * FROM `#_danhmuc` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");

  $nd_total        = @mysql_num_rows($nd_total);
  $numshow        = ceil($nd_total / $numview);
  $sotrang        = PHANTRANG_findPages($nd_total, $numview);
?>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="danhbadoanhnghiep_id flex">
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
      <a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>">
      <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
      <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
      </a>
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
<?php } ?>