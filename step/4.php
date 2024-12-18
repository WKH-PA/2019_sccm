<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 18;
  else $numview         = $thongtin_step['num_view'];

  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($slug_table != 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "")
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  
  include _source."phantrang_kietxuat.php";
?>
<div class="imges_id_page" style="background-image:url(<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>);"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="title_id"><?=$name_titile ?></div>
  <div class="flex dv-ds-duan">
    <?php 
        if($nd_total == 0){
        echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
      }else{
        $i = 0;
        while ($rows = mysql_fetch_array($nd_kietxuat)) 
          { 
            $i++;
    ?>
    <div class="list-nospacing">
      <li class='onePro'> <a href='<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>' class='thumb'><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a>
        <ul>
          <li> <a href='<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>' class='tit'><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> <span class='kind'> </span> </li>
        </ul>
      </li>
    </div>
    <?php }} ?>
  </div>
 
  <div class="clr"></div>
  <div class="nums">
    <ul>
      <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
    </ul>
    <div class="clr"></div>
  </div>
</div>
 