<?php
  // Update Luot view
  DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
  // Update Luot view
?>
<div class="page_conten_page">
  <div class="link_page">
    <div class="pagewrap">
      <ul>
        <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?> | <a><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></a></li>
      </ul>
    </div>
  </div>
  <div class="pagewrap">
    <div class="right_conten">
      <div class="title_page"><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></div>
      <div class="dv-tailieu-nd ">
        <div class="dv-dt-klcd">
          <?=SHOW_text($arr_running['mota_'.$lang]) ?>
        </div>
        <div class="dv-dt-klcd-bcd no_box">
          <?=SHOW_text($arr_running['mt_2_vi']) ?>
        </div>
        <div class="dv-dt-klcd-nd">
          <?=SHOW_text($arr_running['noidung_'.$lang]) ?>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="left_conten">
      <div class="menu_left">
        <ul>
        <h3><i class="fa fa-reorder"></i><?=$thongtin_step['tenbaiviet_'.$lang] ?></h3>
        <?php 
          $sp_baiviet = LAY_danhmuc($thongtin_step['id']);
          foreach ($sp_baiviet as $rows) { 
            if($rows['id_parent'] != 0) continue;
        ?>
        <li><a href="<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>">» <?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
        </ul>
      </div>
      <?php include _source."left_conten.php";?>
    </div>
    <div class="clr"></div>
  </div>
</div>