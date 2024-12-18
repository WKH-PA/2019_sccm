<?php
  // Update Luot view
  // DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
  // Update Luot view

  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "  AND `id_parent` in (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  $numview      = 6;

  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
?>
<div class="imges_id_page" style="background-image:url(<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>);"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap page_conten_page">
    <div class="title_id"><?=$kietxuat_name ?></div>

    <div class="title_news">
        <h2><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></h2>
    </div>
    <div class="showText">
      <?=SHOW_text($arr_running['noidung_'.$_SESSION['lang']]) ?><div class="clr"></div>
    </div>
</div>
<div class="box_2">
  <div class="pagewrap">
    <div class="dichvu_id">
     <div class="title_id">dịch vụ khác</div>
     <div class="flex">
       <?php 
          while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
        ?>
        <ul>
          <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
          <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
          <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
          </a>
        </ul>
        <?php } ?>
        <div class="clr"></div>
     </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
