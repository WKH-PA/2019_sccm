<?php include"banner_top.php";?>
<?php 
  $step       = 2;
  $sp_step    = LAY_step($step); 
  $sp_baiviet = LAY_baiviet($step, 0,"`opt` = 1");
?>
<div class="dichvu_home" >
  <div class="titBox left">
    <div class="tit_2"><?=SHOW_text($sp_step[0]['tenbaiviet_'.$lang]) ?></div>
    <div class="sub_2"><?=$glo_lang['linh_vuc_mo_ta'] ?></div>
  </div>
  <div class="flex no_box">
  <?php 
    foreach ($sp_baiviet as $rows) {
  ?>
  <ul>
    <a href="<?=GET_link($full_url, $rows['seo_name']) ?>">
    <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
    <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
    </a>
  </ul>
  <?php } ?>
  </div>
  <div class="clr"></div>
</div>
<?php 
  $noidung  = LAYTEXT_rieng(43);
  $r        = LAY_banner_new("`id_parent` = 25", 1);
?>
<div class="gioithieu_home_box" style="background: url(<?=$fullpath."/".$r['duongdantin']."/".$r['icon'] ?>) center center no-repeat fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap">
    <div class="gioithieu_id_box">
      <li><img src="<?=checkImage($fullpath, $noidung['icon'], "datafiles/setone") ?>" alt="<?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?>"/>></li>
      <ul>
        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
        <div>
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>  
        </div>
        <h4><a href="<?=GET_link($full_url, SHOW_text($noidung['lien_ket'])) ?>"><?=$glo_lang['xem_chi_tiet'] ?> ›</a></h4>
        <div class="clr"></div>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php 
  $step       = 6;
  $sp_step    = LAY_step($step); 
  $sp_baiviet = LAY_baiviet($step, 0,"`opt` = 1");
?>
<div class="tintuc_home_box">
  <div class="pagewrap">
    <div class="titBox left">
      <div class="tit_2"><?=SHOW_text($sp_step[0]['tenbaiviet_'.$lang]) ?></div>
      <div class="sub"><?=$glo_lang['ly_do_ban_chon_dich_vu_chung_toi'] ?></div>
    </div>
    <div class="tintuc_home_id">
      <div id="owl-spnb" class="owl-carousel owl-theme flex">
          <?php 
            foreach ($sp_baiviet as $rows) {
          ?>
          <ul>
            <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
            <h4><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></h4>
            <h3><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
          </ul>
          <?php } ?>
      </div>
      <div class="clr"></div>
      <script>
        $(document).ready(function() {
          $("#owl-spnb").owlCarousel({
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
<?php 
  $step       = 8;
  $sp_step    = LAY_step($step); 
  $sp_baiviet = LAY_baiviet($step, 0,"`opt` = 1");
?>
<div class="box_ykienkh_home">
  <div class="pagewrap">
    <div class="titBox left">
      <div class="tit_2"><?=SHOW_text($sp_step[0]['tenbaiviet_'.$lang]) ?></div>
      <div class="sub_2"><?=$glo_lang['hay_de_de_cung_xay_dung_tuong_lai'] ?></div>
    </div>
    <div class="ykienkh_id flex">
      <?php 
        foreach ($sp_baiviet as $rows) {
      ?>
      <ul>
        <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
        <i class="fa fa-quote-left"></i>
        <p><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></p>
        <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
      </ul>
      <?php } ?>
       
      <div class="clr"></div>
    </div>
  </div>
</div>

<?php 
  $step       = 5;
  $sp_baiviet = LAY_baiviet($step, 0,"`opt` = 1");
?>
<div class="box_doitac_home">
  <div class="pagewrap">
    <div class="title_id"><?=SHOW_text($glo_lang['doi_tac_khach_hang']) ?></div>
    <div class="logo_doitac flex">
      <div id="owl-doitac" class="owl-carousel owl-theme flex">
        <?php 
          $i = 0;
          foreach ($sp_baiviet as $rows) { 
            $i++;
            if($i == 1) echo '<div class="item">';
        ?>
        <ul>
          <a href="<?=GET_link($full_url, $rows['tags_vi']) ?>" target="<?=$r['blank'] ?>">
          <li><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>
          </a>
        </ul>
        <?php if($i == 2) { echo '</div>'; $i = 0;} } if($i == 1)  echo '</div>'; ?>
      </div>
      <script>
        $(document).ready(function() {
          $("#owl-doitac").owlCarousel({
            slideSpeed : 1000,
            navigation : true,
            itemsCustom : [
              [0, 2],
              [319, 2],
              [479, 4],
              [767, 5],
              [991, 6],
              [1199, 6]
              ],
            dots: true,
            autoPlay: true,
            navigationText : ["‹","›"]
          });
        });
      </script>
      
      <div class="clr"></div>
    </div>
  </div>
</div>
