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
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>/</span><a><?=$arr_running['tenbaiviet_'.$lang] ?></a></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="title_id"><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></div>
  <div class="padding_pagewrap">
    <div class="noidung_ct_left">
      <div class="showText">
        <?=SHOW_text($arr_running['noidung_'.$_SESSION['lang']]) ?><div class="clr"></div>
      </div>
    </div>
    <div class="hinhanh_ct_right">
      <div class="slideshow-container">
        <div class="mySlides fade"> <img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>" style="width:100%"> </div>
        <?php 
          $list_hinhcon = LAY_hinhanhcon($arr_running['id'], 20);
          foreach ($list_hinhcon as $r_img) {  
        ?>
         <div class="mySlides fade"> <img src="<?=checkImage($fullpath, $r_img['p_name'], 'datafiles/'.$r_img['duongdantin']) ?>" style="width:100%"> </div>
        <?php } if(count($list_hinhcon) != 0) { ?>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next" onclick="plusSlides(1)">&#10095;</a> 
        <?php } ?>
      </div>
      <br>
      <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
          showSlides(slideIndex += n);
        }

        function currentSlide(n) {
          showSlides(slideIndex = n);
        }

        function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
        }
        </script> 
    </div>
    <div class="clr"></div>
  </div>
  <div class="title_id"><?=$glo_lang['du_an_khac'] ?></div>
  <div class="flex dv-ds-duan">
    <?php 
        while ($rows = mysql_fetch_array($nd_kietxuat)) 
          { 
    ?>
    <div class="list-nospacing">
      <li class='onePro'> <a href='<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>' class='thumb'><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a>
        <ul>
          <li> <a href='<?=GET_link($full_url, SHOW_text($rows['seo_name'])) ?>' class='tit'><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> <span class='kind'> </span> </li>
        </ul>
      </li>
    </div>
    <?php } ?>
  </div>
  <div class="clr"></div>
</div>