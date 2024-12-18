<style>
  p.p_hide_bl { height: 20px; overflow: hidden; line-height: 20px; margin-bottom: 4px; cursor: pointer; color: #585858; font-size: 12px; }
  .bv-con .gr { border-top: 1px solid #dedede; padding: 6px 0; }
  p.p_hide_bl.acti { height: auto; }
</style>
<div class="box-body table-responsive no-padding table-danhsach-cont">
  <table class="table table-hover table-danhsach">
    <tbody>
      <tr>
        <th class="w50 text-center">
          <label>
            <input type='checkbox' class='minimal cls_showxoa_all'> Xóa
          </label>
        </th>
        <th class="w80 text-center">STT</th>
        <th>Tiêu đề</th>
        <th class="w100 text-center">Hiển thị</th>
        <th class="w150 text-center">Tác vụ</th>
      </tr>
      <?php
        $cl = 0;
        $members_dang = DB_fet("*","`#_members`","","`id` ASC","","arr",1); 
        while($rows = mysql_fetch_assoc($sql))
        {
          foreach ($rows as $key => $value) {
            ${$key}         = SHOW_text($value);
          }
          $catasort           = number_format($catasort,0,',','.');

      ?>
      <tr>
        <td class="text-center">
          <input name='xoa_gr_arr_<?=$cl?>' type='checkbox' class='minimal cls_showxoa'>
        </td>
        <td class="text-center">
          <input name="idme<?=$cl?>" value="<?=$id?>" type="hidden">
          <?=$cl+1 ?>
        </td>
        <td>
          <div class="name">
            <a href="<?=$url_page ?>&step=<?=$step?>&id_step=<?=$id_step?>&edit=<?=$id ?>"><?=$tenbaiviet_vi ?></a>
          </div>
          <a class="a_nguoidang" href="?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien&edit=<?=$id_user ?>" target="_blank">Đăng bởi: <?=$members_dang[$id_user]['hoten'] ?> (<?=$members_dang[$id_user]['email'] ?>) - <?=date('d-m-Y H:i:s', $rows['ngaydang']) ?></a>
 
          <?php if(isset($_SESSION['admin'])){ ?>
          <label>
            <input name='coppy_row<?=$cl?>' type='checkbox' class='minimal'> [Coppy]
          </label>
          <?php } ?>
          <div class="bv-con">
            <?php 
              $baiviet_diendan = DB_que("SELECT * FROM `#_baiviet_diendan` WHERE `id_baiviet` = '".$id."' ORDER BY `id` DESC");
              while ($bcdd     = mysql_fetch_assoc($baiviet_diendan)) { 
            ?>
            <div class="gr">
              <p class="p_hide_bl">
                <?=SHOW_text($bcdd['noidung_vi']) ?>
              </p>
              <label><input showhi type='checkbox' class='minimal minimal_click' colum="showhi" idcol="<?=$bcdd['id'] ?>" table="#_baiviet_diendan" value='1' <?=LAY_checked($bcdd['showhi'], 1)?>> [Hiển thị]</label>  
              <a href="<?=$url_page.'&del_bl='.$bcdd['id'].'&token='.GET_token() ?>&step=<?=$step?>&id_step=<?=$id_step?>" onclick="return confirm('Bạn thật sự muốn xóa?')">[Xóa]</a>
            </div>
            <?php } ?>
          </div>
        </td>
        <td class="text-center">
          <div id="cus" class="cus_menu">
            <label><input showhi type='checkbox' class='minimal minimal_click' colum="showhi" idcol="<?=$id ?>" table="#_baiviet" value='1' <?=LAY_checked($showhi, 1)?>></label>
            </div>
        </td>
        <td class="text-center">
            <a href="<?=$url_page ?>&step=<?=$step?>&id_step=<?=$id_step?>&edit=<?=$id?>" title="Cập nhật"><i class="fa fa-pencil-square-o"></i></a>
            <a href="<?=$url_page.'&del=ok&catalogid='.$id.'&token='.GET_token() ?>&step=<?=$step?>&id_step=<?=$id_step?>" class="do"  onclick="return confirm('Bạn thật sự muốn xóa?')"><i class="fa fa-times"></i></a>
        </td>
      </tr>
      <?php
            $cl++;
          }
      ?> 
    </tbody>
  </table>
  <input type='hidden' value='<?=$cl?>' name='maxvalu'>
</div>
<script>
  $(".p_hide_bl").click(function(){
    $(".p_hide_bl").removeClass('acti');
    $(this).addClass('acti');
  })
</script>