<?php
  // Update Luot view
  $data['soluotxem'] = array();
  $data['soluotxem'] = $arr_running['soluotxem'] + 1;
  ACTION_db($data, '#_baiviet', 'update', NULL, "`id` = ".$arr_running['id']);
  // Update Luot view

  $kietxuat_name = DB_fet("*", "#_danhmuc", "`showhi` = 1 AND `step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "arr", 1);
  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "  AND `id_parent` in (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  $numview      = 12;
  $nd_kietxuat  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh ORDER BY `catasort` DESC LIMIT 0,$numview");
  $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  $nd_total = mysql_num_rows($nd_total);
 
  $tinhang = $arr_running['tinhnang_vi'];
  $tinhang = unserialize($tinhang);

?>
<div class="bg_load_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=$kietxuat_name ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?> > <a><?=$kietxuat_name ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>

<div class="pagewrap page_conten_page">
  <div class="padding_pagewrap">
    <div class="noidung_ct_left">
      <div class="ct_duan_id">
        <h3><?=SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]) ?></h3>
        <div>
          <?php 
            $tinhnang   = LAY_bv_tinhnang($slug_step);
            $tn         = unserialize($arr_running['tinhnang_'.$lang]);
            $a          = 0;
            foreach ($tinhnang as $value) {
              if(empty($tn[$value['id']])) continue;
              if($value['tim_kiem'] == 1)  continue;
              
              $n_val = $value['loai_hienthi'] == 1 ? $tinhnang[$tn[$value['id']]['v']]['tenbaiviet_'.$lang] : $tn[$value['id']]['v'];
              
              echo '<p><span>'.$value['tenbaiviet_'.$lang].'</span>: '.$n_val.'</p>';
            } 
          ?>
        </div>
        <?php if($arr_running['dowload'] != ""){ ?>
        <h4><a href="<?=$fullpath."/datafiles/files/".$arr_running['dowload'] ?>" download><?=$glo_lang['dowload_tai_lieu'] ?></a></h4>
        <?php } ?>
        <div class="clr"></div>
      </div>
    </div>
    <div class="hinhanh_ct_right">
      <div class="slideshow-container">
        <?php 
          $list_hinhcon = LAY_hinhanhcon($arr_running['id'], 20);
          $i = 0;
          foreach ($list_hinhcon as $r_img) {  
            $i++;
        ?>
        <div class="mySlides fade"> <img src="<?=checkImage($fullpath, $r_img['p_name'], 'datafiles/'.$r_img['duongdantin']) ?>" style="width:100%"> </div>
        <?php } ?>
        <?php if($i > 1){ ?>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next" onclick="plusSlides(1)">&#10095;</a> 
        <?php }else{ ?>
        <img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>" alt="<?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?>">
        <?php } ?>
      </div>
      <br>
      <div style="text-align:center; margin-bottom:10px;">
        <?php for ($j=1; $j <= $i; $j++) {  ?>
          <span class="dot" onclick="currentSlide(<?=$j ?>)"></span> 
        <?php } ?>
      </div>
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
    
    
    
    <div class="chitiet_duan">
      <div id="pro_tabs">
        <ul class="listtabs">
          <?php if($arr_running['mt_1_'.$lang] != ""){ ?>
          <li><a href="#tab1"><?=$glo_lang['tong_quan_ve_du_an'] ?> </a></li>
          <?php 
            }
            if($arr_running['vitri_'.$lang] != ""){
          ?>
          <li><a href="#tab6"><?=$glo_lang['vi_tri'] ?></a></li>
          
          <?php 
            }
            if($arr_running['noidung_'.$lang] != ""){
          ?>
          <li><a href="#tab3"><?=$glo_lang['cac_tien_ich'] ?></a></li>
          <?php 
            }
            if($arr_running['dichvu_'.$lang] != ""){
          ?>
          <li><a href="#tab7"><?=$glo_lang['dich_vu'] ?></a></li>
          <?php 
            }
            if($arr_running['mt_3_'.$lang] != ""){
          ?>
          <li><a href="#tab5"><?=$glo_lang['thong_tin_can_ho'] ?></a></li>
          <?php 
            }
            if($arr_running['poromosion_'.$lang] != ""){
          ?>
          <li><a href="#tab8"><?=$glo_lang['poromosion'] ?></a></li>
          <?php 
            }
            if($arr_running['mt_2_'.$lang] != ""){
          ?>
          <li><a href="#tab4"><?=$glo_lang['mat_bang'] ?></a></li>
          <?php 
            }
            if($arr_running['gg_map'] != ""){
          ?>
          <li><a href="#tab2"><?=$glo_lang['vi_tri_du_an'] ?></a></li>
          
          
          
          <?php } ?>
        </ul>
      </div>
      <?php if($arr_running['mt_1_'.$lang] != ""){ ?>
      <div id="tab1" class="conten_tab showText">
        <?=SHOW_text($arr_running['mt_1_'.$lang]) ?><div class="clr"></div>
      </div>
      
      <?php 
        }
        if($arr_running['noidung_'.$lang] != ""){
      ?>
      <div id="tab3" class="conten_tab showText">
        <?=SHOW_text($arr_running['noidung_'.$lang]) ?><div class="clr"></div>
      </div>
      <?php 
        }
        if($arr_running['vitri_'.$lang] != ""){
      ?>
      <div id="tab6" class="conten_tab showText">
        <?=SHOW_text($arr_running['vitri_'.$lang]) ?><div class="clr"></div>
      </div>
      <?php 
        }
        if($arr_running['dichvu_'.$lang] != ""){
      ?>
      <div id="tab7" class="conten_tab showText">
        <?=SHOW_text($arr_running['dichvu_'.$lang]) ?><div class="clr"></div>
      </div>
      <?php 
        }
        if($arr_running['mt_3_'.$lang] != ""){
      ?>
      <div id="tab5" class="conten_tab showText">
        <?=SHOW_text($arr_running['mt_3_'.$lang]) ?><div class="clr"></div>
      </div>
      <?php 
        }
        if($arr_running['poromosion_'.$lang] != ""){
      ?>
      <div id="tab8" class="conten_tab showText">
        <?=SHOW_text($arr_running['poromosion_'.$lang]) ?><div class="clr"></div>
      </div>
      <?php 
        }
        if($arr_running['mt_2_'.$lang] != ""){
      ?>
      <div id="tab4" class="conten_tab showText">
        <?=SHOW_text($arr_running['mt_2_'.$lang]) ?><div class="clr"></div>
      </div>
      <?php 
        }
        if($arr_running['gg_map'] != ""){
      ?>
      <div id="tab2" class="conten_tab showText">
        <div class="map_contact">
            <iframe src="<?=$arr_running['gg_map'] ?>" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
      </div>
      
      
      
      
      <?php } ?>
      <script type="text/javascript"> 
      $("#pro_tabs ul").idTabs(); 
    </script> 
    </div>
    <?php include _source."fb_coment.php";?>

  </div>
</div>
<div class="titBox left titBox_detail">
  <div class="tit"><?=$glo_lang['cac_du_an_khac'] ?></div>
</div>
<div class="muaban_thue_home_box">
    <div class="pagewrap">
      <div class="id_bds id_bds_detail no_box owl_cont">
        <div id="owl-spmoi" class="owl-carousel owl-theme flex">
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
        </div>
        <script>
          $(document).ready(function() {
            $("#owl-spmoi").owlCarousel({
              slideSpeed : 1000,
              navigation : true,
              itemsCustom : [
                [0, 1],
                [319, 2],
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
