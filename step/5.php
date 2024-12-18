<?php 
  if(isset($_SESSION['id'])) {
    $info_acc     = DB_fet("*", "#_members", "`id` = '".$_SESSION['id']."' AND `phanquyen` = 0", "`id` DESC", 1);
    $info_acc     = mysql_fetch_assoc($info_acc);

    $hoten        = $info_acc['hoten'];
    $sodienthoai  = $info_acc['sodienthoai'];
    $email        = $info_acc['email'];
    $diachi       = $info_acc['diachi'];
  }
?>
<div class="imges_id_page" style="background-image:url('<?=checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']) ?>');"> </div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table) ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="company_contact flex no_box">
    <?php 
        $baiviet = LAY_baiviet($arr_running['id']);
        foreach ($baiviet as $rows) {
    ?>
    <ul>
      <h3><i class="<?=$rows['p1'] ?>"></i><?=$rows['tenbaiviet_'.$lang] ?></h3>
      <div><?=$rows['noidung_'.$lang] ?></div>
    </ul>
    <?php } ?>
    
    <div class="clr"></div>
  </div>
  <div class="padding_pagewrap">
    <div class="contact">
        <?php include _source."lien_he_form.php"; ?>
      </div>
  </div>
</div>
<div class="map_contact">
  <?php if($thongtin_step['map_google'] != ""){ ?>
    <!-- <div id="div_id_map" class="map_3"></div> -->
  <?php } ?>
  <iframe src="<?=$thongtin_step['map_google'] ?>" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
</div>

<?php if($thongtin_step['map_google'] != ""){ ?>
<script type="text/javascript" src="//maps.google.com/maps/api/js?key=AIzaSyCk0kCNLUaWagmDHLai2it9_9YaCVHuriQ&libraries=places"></script>
<script type="text/javascript" src="js/jquery.gmap.min.js"></script>
<?php 
  $step   = explode(",", $thongtin_step['map_google']);
  $latin  = trim($step[0]);
  $lontin = trim($step[1]);
?>
<script type="text/javascript">
  $(function(){
      var $content = "<div style='text-align:center; margin-bottom: 7px'><strong><?=$thongtin['tencongty_'.$lang] ?></strong></div><?=$thongtin['diachi_'.$lang] ?>";
      var $Latitude   = "<?=$latin ?>";
      var $Longitude  = "<?=$lontin ?>";
      $("#div_id_map").gMap({
          zoom: 16,
          markers: [{
              icon: {
                  image: "<?=$fullpath ?>/images/maker.png",
                  iconsize: [37, 51],
                  iconanchor: [18, 46]
              }, latitude: $Latitude, longitude: $Longitude, popup: true, html: $content
          }]
      });
  })
</script>
<?php } ?>