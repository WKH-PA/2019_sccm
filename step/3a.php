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
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$kietxuat_name ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="padding_pagewrap">
      <div class="title_news">
        <h2><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></h2>
        <li><?=CONVER_thu(date("l", $arr_running['ngaydang']), $glo_lang) ?>, <?=date("H:i", $arr_running['ngaydang']) ?> <?=$glo_lang['date'] ?> <?=date("d/m/Y", $arr_running['ngaydang']) ?></li>
      </div>
      <div class="showText">
        <?=SHOW_text($arr_running['noidung_'.$_SESSION['lang']]) ?><div class="clr"></div>
      </div>
      <div id="sharelink"> 
        <div class="addthis_toolbox addthis_default_style "> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
        <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js#pubid=xa-502225fb496239a5"></script> 
      </div>
    </div>
</div>
<div class="tintuc_home_box_2">
  <div class="pagewrap">
    <div class="titBox left">
      <div class="tit_2"><?=$glo_lang['bai_viet_lien_quan'] ?></div>
    </div>
    <div class="tintuc_home_id">
      <div id="owl-spmoi" class="owl-carousel owl-theme flex">
        <?php 
          while ($rows = mysql_fetch_array($nd_kietxuat)) 
            {
          ?>
          <ul>
            <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
            <h4><i class="fa fa-calendar"></i><?=date('d/m/Y', $rows['ngaydang']) ?></h4>
            <h3><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
          </ul>
          <?php } ?>
          
        </div>
        <div class="clr"></div>
        <script>
          $(document).ready(function() {
            $("#owl-spmoi").owlCarousel({
              slideSpeed : 1000,
              navigation : true,
              itemsCustom : [
                [0, 1],
                [319, 1],
                [479, 2],
                [767, 3],
                [991, 3],
                [1199, 3]
                ],
              dots: true,
              autoPlay: true,
              navigationText : ["‹","›"]
            });
          });
        </script>
        
      </div>

  </div>
</div>
 