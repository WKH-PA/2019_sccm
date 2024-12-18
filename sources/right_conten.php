<div class="banner_id_right">
  <?php 
    $banner_top = LAY_banner_new("`id_parent` = 26");
    $i = 0;
    foreach ($banner_top as $r) {
      $i++;
      if($i == 7) $i = 10;
  ?>
    <ul>
      <a href="<?=GET_link($full_url, SHOW_text($r['lien_ket'])) ?>" target="<?=$r['blank'] ?>">
        <li><img src="<?=$fullpath."/".$r['duongdantin']."/".$r['icon'] ?>" alt=""></li>
        <h3 class="color_bg_<?=$i ?>"><?=SHOW_text($r['tenbaiviet_'.$lang]) ?></h3>
      </a>
    </ul>
  <?php } ?>
  <div class="clr"></div>
</div>
<?php 
  $step       = 11;
  $sp_step    = LAY_step($step);
  $sp_baiviet = LAY_baiviet($step, 0, "`opt` = 1");
  
?>
<div class="box_r_conten box_r_conten_2">
  <h2><?=SHOW_text($sp_step[0]['tenbaiviet_'.$lang]) ?></h2>
  <?php foreach ($sp_baiviet as $rows) { $id_video   = $rows['mt_1_vi']; ?>
  <div class="video_r">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/<?=GET_ID_youtube($id_video) ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
  <?php } ?>
</div>
<div class="box_r_conten box_r_conten_3">
  <h2><?=$glo_lang['thong_bao_moi'] ?></h2>
  <div class="thongbao_r">
    <div class="marquee">
      <ul>
        <?php 
          $sp_baiviet = LAY_baiviet(8, 10,"`opt` = 1 AND `id_parent` = '22'");
          foreach ($sp_baiviet as $rows) {
        ?>
        <h3></a></h3>
        <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?><span>(<?=date("d/m/Y",$rows['ngaydang']) ?>)</span></a></li>
        <?php } ?>
        
      </ul>
      <script>$('.marquee').marquee({
          duration: 10000,
          gap: 0,
          delayBeforeStart: 0,
          direction: 'up',
          duplicated: true,
          startVisible: true
      });
      <?php if($motty == ""){ ?>
      $(function(){
        var h_left = $(".conten_left").height();
        var banner_id_right = $(".banner_id_right").height();
        var box_r_conten_2  = $(".box_r_conten_2").height();
        var box_r_conten_3  = h_left - banner_id_right - box_r_conten_2 - 123;
        if(box_r_conten_3 > 150) {
          $(".box_r_conten.box_r_conten_3 .thongbao_r, .box_r_conten.box_r_conten_3 .thongbao_r .marquee").height(box_r_conten_3);
        }
      })
      <?php } ?>
      </script> 
    </div>
  </div>
</div>
