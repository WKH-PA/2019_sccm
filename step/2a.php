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
  $numview      = 9;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  $nd_total = mysql_num_rows($nd_total);
  
?>
<div class="link_page">
  <div class="pagewrap">
    <h3><?=$kietxuat_name ?></h3>
    <ul>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="chitiet_sp">
    <li><img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>" alt="<?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?>"></li>
    <ul>
      <h3><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></h3>
      <?php if($arr_running['mota_'.$lang] != ''){ ?>
      <div class="dv-mota-man">
        <?=SHOW_text($arr_running['mota_'.$lang]) ?>
      </div>
      <?php } ?>
    
      <div id="sharelink"> 
        <div class="addthis_toolbox addthis_default_style "> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
        <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js#pubid=xa-502225fb496239a5"></script> 
      </div>
      <?php 
        $step_4 = LAY_step(4);
      ?>
      <h4><a href="<?=GET_link($full_url, $step_4[0]['seo_name']) ?>"><?=$glo_lang['dat_hang'] ?></a></h4>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
    <div class="showText showText_sp">
      <?=SHOW_text($arr_running['noidung_'.$lang]) ?>
    </div>
  </div>
  <div class="dv-fbcomment">
    <?php include _source."fb_coment.php"; ?>
  </div>
</div>
<div class="box_pro_home_2">
  <div class="pagewrap">
    <div class="titBox left">
      <div class="tit_2"><?=$glo_lang['san_pham_lien_quan'] ?></div>
    </div>
    <div class="pro_id ">
      <div class="pro_id_home no_box flex">
        <?php 
          while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
            // $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
        ?>
        <ul>
          <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
          <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
          <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          </a>
        </ul>
        <?php } ?> 
      <div class="clr"></div>
      </div>
    </div>
  </div>
</div>
