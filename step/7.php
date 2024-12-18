<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 15;
  else $numview         = $thongtin_step['num_view'];


  include _source."phantrang_kietxuat.php";
?>
<div class="conten_page">
  <div class="right_conten">
    <div class="title_page">
      <h3><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h3>
      <ul>
        <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
        <div class="clr"></div>
      </ul>
      <div class="clr"></div>
    </div>
    
    <div class="dowload_tl_id flex">
      <?php 
        if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
        while ($rows = mysql_fetch_assoc($nd_kietxuat)) { 
          // if(empty($_SESSION['id']) || $_SESSION['id'] == NULL)
          //   $link      = "onclick='alert(\"".$glo_lang['ban_can_dang_nhap_de_tai_file']."\")'";
          // else 
          if($rows['dowload'] == '')
            $link      = "onclick='alert(\"".$glo_lang['khong_tim_thay_file']."\")'";
          else  $link  = " href='".$fullpath."/datafiles/files/".$rows['dowload']."' download ";
      ?> 
      <ul>
        <a <?=$link ?>>
          <li><i class="fa fa-file-excel-o"></i></li>
          <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          <p><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></p>
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
  <div class="left_conten">
    <?php 
      $sp_baiviet    = LAY_danhmuc(2, 0, "`id_parent` = 0");
      $thongtin_step = LAY_step(2);
    ?>
    <div class="title_left_content"><?=$thongtin_step[0]['tenbaiviet_'.$lang] ?></div>
    <div class="menu_left">
      <ul>
        <?php foreach ($sp_baiviet as $rows) {  ?>
        <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <?php include _source."left_conten.php";?>
  </div>
  <div class="clr"></div>
</div>