<?php
  // Update Luot view
  DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
  // Update Luot view

  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "  AND `id_parent` in (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  $numview      = 8;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysql_num_rows($nd_total);
  
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);

?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$kietxuat_name ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>//</span><a><?=$arr_running['tenbaiviet_'.$lang] ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="padding_pagewrap">
      <div class="bs_view">
        <li><img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>" alt="<?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?>"/></li>
        <ul>
          <h3><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
          <h4><?=SHOW_text($arr_running['mota_'.$lang]) ?></h3>
          <div><?=SHOW_text($arr_running['noidung_'.$_SESSION['lang']]) ?><div class="clr"></div></div>
          <div id="sharelink"> 
            <div class="addthis_toolbox addthis_default_style "> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
            <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js#pubid=xa-502225fb496239a5"></script> 
          </div>
        </ul>
        
        <div class="clr"></div>
      </div>
    </div>
</div>
<div class="tintuc_home_box_2">
  <div class="pagewrap">
    <div class="titBox left">
      <div class="tit_2"><?=$glo_lang['bai_viet_lien_quan'] ?></div>
    </div>
    <div class="doingulaodong_id flex">
      <?php 
        while ($rows = mysql_fetch_array($nd_kietxuat)) 
          { 
      ?>
      <ul>
        <a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>">
        <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
        <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
        <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
        </a>
      </ul>
      <?php } ?> 
      
      <div class="clr"></div>
    </div>
    </div>
</div>
 