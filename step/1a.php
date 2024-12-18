<?php 
	if($motty 	== "404"){
		$nd_404 			= DB_que("SELECT * FROM `#_seo_name` WHERE `opt` = 1 LIMIT 1");
  		$arr_running      	= mysql_fetch_assoc($nd_404);
  		// $bre 				= SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]);
	}
	else if($slug_step == "0"){
		DB_que("UPDATE `#_baiviet` SET `soluotxem` = `soluotxem` + 1 WHERE `id` = '".$arr_running['id']."' LIMIT 1");
		// $bre 	= SHOW_text($arr_running['tenbaiviet_'.$lang]);
	}
	else if(!empty($thongtin_step)){
		// $bre 	= SHOW_text($thongtin_step['tenbaiviet_'.$lang]);
	}

  $bre  = SHOW_text($arr_running['tenbaiviet_'.$lang]);
	if(empty($thongtin_step)){
		$thongtin_step['id'] = 1;
  }else {
    $bre =  '<a href="'.GET_link($full_url, SHOW_text($thongtin_step['seo_name'])).'">'.$thongtin_step['tenbaiviet_'.$lang].'</a>';
  }
	$thongtin_step   = LAY_anhstep_now($thongtin_step['id']);

?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>//</span><a><?=$arr_running['tenbaiviet_'.$lang] ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="padding_pagewrap">
    <!--  -->
    <div class="showText"><?=SHOW_text($arr_running['noidung_'.$_SESSION['lang']]) ?><div class="clr"></div></div>
      <?php if($motty   == "404"){ ?>
      <div class="dv_404_gohome">
          <a href="<?=$full_url ?>"><?=$glo_lang['ve_trang_chu'] ?> <span class="time_doi"></span></a>
      </div>
      <style type="text/css">
      .dv_404_gohome { text-align: right; } .dv_404_gohome a { background: url(nguoiquanly/images/icon_menu_home.png) center left no-repeat; background-size: 16px; padding: 25px 0 20px 22px; color: blue; } .dv_404_gohome a:hover { text-decoration: underline; } .showText_404{min-height: 180px}
      .hinhanh_ct_right{display: none}
      .noidung_ct_left {width: 100%}
    </style>
    <script type="text/javascript">
        var time_doi = 11;
        setInterval(function(){ time_doi--; $('.time_doi').html("("+time_doi+")"); if(time_doi < 1) window.location.href = '<?=$full_url ?>' }, 1000);
    </script>
    <?php } ?>
    <!--  -->
  </div>
</div>
