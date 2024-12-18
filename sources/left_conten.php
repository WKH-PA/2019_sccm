<div class="left_conten">
  <div class="title_left_content"><?=$glo_lang['danh_muc_san_pham'] ?></div>
  <div class="graphite">
    <ul class="accordion" id="accordion-1">
      <?php 
        $sp_danhmuc    = LAY_danhmuc(2);
        foreach ($sp_danhmuc as $rows) { 
          if($rows['id_parent'] != 0) continue;
      ?>
      <li><a href="<?=GET_link($full_url, $rows['seo_name']) ?>"><?=$rows['tenbaiviet_'.$lang] ?></a>
        <?php 
          $list_left = "";
          foreach ($sp_danhmuc as $rows_2) { 
            if($rows_2['id_parent'] != $rows['id']) continue;
            $list_left .= '<li><a href="'.GET_link($full_url, $rows_2['seo_name']).'"><i class="fa fa-angle-double-right" aria-hidden="true"></i>'.$rows_2['tenbaiviet_'.$lang].'</a></li>';
          }
          echo $list_left != '' ? "<ul>$list_left</ul>" : $list_left;
        ?>
      </li>
      <?php } ?>
       
  </div>
  <div class="check_id">
    <?php 
      $list_tinhnawng = DB_fet("*","`#_baiviet_tinhnang`","`showhi` = 1 ","`catasort` ASC, `id` DESC","","arr");
      $name_timkiem   = "";
      foreach ($list_tinhnawng as $rows) { 
        if($rows['id_parent'] != 0 || $rows['tim_kiem'] != 1) continue;
        $name_timkiem++;
    ?>
    <h3><?=$rows['tenbaiviet_'.$lang] ?></h3>
    <ul>
      <?php foreach ($list_tinhnawng as $rows_2) { if($rows_2['id_parent'] != $rows['id']) continue; ?>
        <label class="container"><?=$rows_2['tenbaiviet_'.$lang] ?></span>
        <input type="checkbox" value="<?=$rows_2['id'] ?>">
        <span class="checkmark"></span> </label>
      <?php } ?>
      
    </ul>
    <?php } ?>
  </div>
</div>
<script>
  $(".check_id input").click(function(){
    var list_check = "";
    $(".check_id input").each(function(){
      if($(this).is(":checked")) {
        list_check += list_check == "" ? $(this).val() : "," + $(this).val();
      }
    });
    LOAD_sp_ajax(1, list_check);
  });

  function LOAD_sp_ajax(page,list_check){
    $(".right_conten_ajax").html('<div style="text-align: center;width: 100%; padding: 20px 0"><img src="images/loadernew.gif" alt="" style="margin: 0 auto; float: none; height: 80px;"></div>');
    $.ajax({
      type: "POST",
      url: full_url + "/ajax_timkiem/",
      data: {
          "list_check": list_check,
          "page": page,
          "action_ajax": "ajax_timkiem"
      },
      success: function (data) {
        $(".right_conten_ajax").html(data);
        GOTO_sport('.right_conten_ajax')
      }
    });
  }
  
</script>
