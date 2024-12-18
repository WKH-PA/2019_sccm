<?php
  $wh = "";
  if($slug_table != 'step'){
    $wh = " AND `id` = '".$arr_running['id']."'";
  }
  $nd_kietxuat  = DB_fet("*", "`#_danhmuc`", "`showhi` =  1 AND `step` = '".$slug_step."' $wh","`catasort` ASC, `id` DESC","","arr");
?>
<div class="page_conten_page">
  <div class="link_page">
    <div class="pagewrap">
      <ul>
        <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      </ul>
    </div>
  </div>
  <div class="pagewrap">
    <div class="right_conten">
      <?php 
        foreach ($nd_kietxuat as $rows) {
          if($rows['id_parent'] != 0) continue;
          $lay_all_kx     = LAYDANHSACH_idkietxuat($rows['id'], $slug_step);
          $wh             = "";
          if($lay_all_kx != "") $wh = "  AND `id_parent` in (".$lay_all_kx.") ";

          $nd_baiviet     = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` = '".$slug_step."' $wh ORDER BY `catasort` ASC");
          if(mysql_num_rows($nd_baiviet)){
      ?>
      <div class="title_page title_page_dvchuyendoi"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></div>
      <div class="dv-tailieu-nd ">
        <!--  -->
        <?php while ($r = mysql_fetch_assoc($nd_baiviet)){ ?>
        <div class="dv-bcd">
          <h3><a href="<?=GET_link($full_url, SHOW_text($r['seo_name'])) ?>"><?=SHOW_text($r['tenbaiviet_'.$lang]) ?></a></h3>
          <div class="nd"><?=SHOW_text($r['mota_'.$lang]) ?></div>
        </div>
        <?php } ?>
        <!--  -->
        <div class="clr"></div>
      </div>
      <?php }} ?>
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
