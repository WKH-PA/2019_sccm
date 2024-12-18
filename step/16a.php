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

  // $wh           = "  AND `id_parent` in (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  $wh           = "   AND CONCAT(',', `detail_en`, ',') REGEXP ',(".str_replace(",", "|", $lay_all_kx)."),' AND `id` <>  '".$arr_running['id']."'";
  $numview      = 6;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  $nd_total = mysql_num_rows($nd_total);
 
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  $tinhnang   = LAY_bv_tinhnang($slug_step);
?>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$kietxuat_name ?></h2>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?> // <a><?=$kietxuat_name ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="left_conten">
    <div class="padding_pagewrap">
      <div class="ct_vieclam">
        <h3><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></h3>
        <ul>
          <h4><?=$glo_lang['ma_cong_viec'] ?></h4>
          <p>: <?=SHOW_text($arr_running['p1']) ?></p>
          <div class="clr"></div>
        </ul>
        <?php 
          $tn = unserialize($arr_running['tinhnang_'.$lang]);
          $a  = 0;
          foreach ($tinhnang as $value) {
            if(empty($tn[$value['id']])) continue;
            $n_val = $value['loai_hienthi'] == 1 ? $tinhnang[$tn[$value['id']]['v']]['tenbaiviet_'.$lang] : $tn[$value['id']]['v'];
            
            echo '<ul>
                    <h4>'.$value['tenbaiviet_'.$lang].'</h4>
                    <p>: '.$n_val.'</p>
                    <div class="clr"></div>
                  </ul>';
          }
        ?>
      </div>
      <div class="bottom_more">
        <h3><a onclick="LOAD_popup_new('<?=$full_url ?>/pa-size-child/cho-ung-vien/','880px')" class="cur"><?=$glo_lang['dang_ky_ung_tuyen'] ?> ›</a></h3>
        <h3><a onclick="LOAD_popup_new('<?=$full_url ?>/pa-size-child/cho-doanh-nghiep/','880px')" class="cur"><?=$glo_lang['dang_ky_doanh_nghiep'] ?> ›</a></h3>
        <?php $sp_step    = LAY_step(7); ?>
        <h3><a href="<?=GET_link($full_url, SHOW_text($sp_step[0]['seo_name'])) ?>"><?=$glo_lang['lien_he'] ?> ›</a></h3>
      </div>
      <div id="sharelink"> 
        <div class="addthis_toolbox addthis_default_style "> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
        <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js#pubid=xa-502225fb496239a5"></script> 
      </div>
    </div>
    <div class="titBox left">
      <h3 class="tit"><?=$glo_lang['viec_lam_lien_quan'] ?></h3>
    </div>
    <div class="flex">
      <?php 
            while ($rows = mysql_fetch_array($nd_kietxuat)) 
              {
      ?>
      <div class="dichvuvl_page">
        <h3><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt=""/></a></li>
        <ul>
          <?php 
            $tn = unserialize($rows['tinhnang_'.$lang]);
            $a  = 0;
            foreach ($tinhnang as $value) {
              if($value['tieu_bieu']  == 0 || empty($tn[$value['id']])) continue;

              $n_val = $value['loai_hienthi'] == 1 ? $tinhnang[$tn[$value['id']]['v']]['tenbaiviet_'.$lang] : $tn[$value['id']]['v'];

              if($value['noi_bat']    == 0)
                echo '<p>'.$value['tenbaiviet_'.$lang].': '.$n_val.'</p>';
              else
                echo '<h4>'.$value['tenbaiviet_'.$lang].': '.$n_val.'</h4>';

              if($a == 0) {
                echo '<p>'.$glo_lang['ma_cong_viec'].': '.$rows['p1'].'</p>';
                $a  = 1;
              }
            }
          ?>
        </ul>
        <div class="clr"></div>
      </div>
      <?php } ?>
    </div>
    <div class="clr"></div>
  </div>
  <div class="right_conten">
    <div class="menu_left_id">
      <ul>
        <h3><?=$glo_lang['dich_vu_viec_lam'] ?></h3>
        <?php 
          $sp_baiviet = DB_fet("*","`#_step`","`id` IN (2,10)","`catasort` DESC","","arr");
          foreach ($sp_baiviet as $rows) { 
        ?>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>">» <?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <?php include _source."left_conten.php";?>
  </div>
  <div class="clr"></div>
</div>
