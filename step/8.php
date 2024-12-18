<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 15;
  else $numview         = $thongtin_step['num_view'];


  include _source."phantrang_kietxuat.php";
?>
<div class="link_page">
  <div class="pagewrap">
    <h3><?=$arr_running['tenbaiviet_'.$lang] ?></h3>
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table); ?></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap">
  <div class="page_conten_page">
    <div class="conten_left">
      <div class="video_id_top video_view_top">
        <div class="id_hide_video"></div>
        <?php 
          $video_tieubieu  = DB_que("SELECT * FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") ORDER BY `opt` DESC, `id` DESC LIMIT 1");
          if(mysql_num_rows($video_tieubieu)){
            $id_video      = mysql_result($video_tieubieu,0, 'mt_1_vi');
        ?>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/<?=GET_ID_youtube($id_video) ?>" frameborder="0" gesture="media" allow="encrypted-media" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <?php } ?>
        <div class="clr"></div>
      </div>
      <div class="video_id dv-danhsachpto flex ">
        <?php 
          while ($news = mysql_fetch_array($nd_kietxuat)) 
            {
        ?>
        <ul>
          <a onclick="PLAY_video('<?=GET_ID_youtube($news['mt_1_vi']) ?>')" class="cur ">
          <li><img src="<?=checkImage($fullpath, $news['icon'], $news['duongdantin'], 'thumb_') ?>" alt="<?=SHOW_text($news['tenbaiviet_'.$lang]) ?>"/><i class="fa fa-youtube-play" aria-hidden="true"></i></li>
            <h3><?=SHOW_text($news['tenbaiviet_'.$lang]) ?></h3>
          </a>
        </ul>
        <?php } ?>
      <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="nums">
        <ul>
          <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
        </ul>
        <div class="clr"></div>
      </div>
    </div>
    <div class="conten_right">
      <?php 
        $sp_step = LAY_step(8);
        $sp_baiviet = LAY_danhmuc(8,0, "`id_parent` = 0");
        if(count($sp_baiviet) > 0){
      ?>
      <div class="box_r_conten">
        <h2><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h2>
        <div class="menu_right_conten">
          <ul>
            <?php 
              foreach ($sp_baiviet as $rows) { 
            ?>
            <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>
      <?php include _source."right_conten.php";?>
    </div>
    <div class="clr"></div>
  </div>
</div>

<div class="clr"></div>
<script>
  function PLAY_video(id) {
    $(".video_view_top iframe").attr("src", "https://www.youtube.com/embed/" + id + "?rel=0&autoplay=1");
    setTimeout(function () {
        GOTO_sport(".id_hide_video");
    }, 200);
  };
</script>