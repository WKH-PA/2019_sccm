<div class="bannerMain">
  <div class="pagewrap">
    <div class="box_title_banner">
      <ul>
        <h2><?=$glo_lang['slugan_1'] ?></h2>
        <h3><?=$glo_lang['slugan_2'] ?></h3>
      </ul>
    </div>
  </div>
  <div class="banner">
    <?php 
          $banner_top = LAY_banner_new("`id_parent` = 16");
          foreach ($banner_top as $r) {
            // $oclick = "";
            // if($r['lien_ket'] != "") 
            //   $oclick = " onclick='window.location.href=\".".GET_link($full_url, SHOW_text($r['lien_ket'])).".\"'";

        ?>
          <li>
            <?php if($r['lien_ket'] != "") { ?><a href="<?=GET_link($full_url, SHOW_text($r['lien_ket'])) ?>" target="<?=$r['blank'] ?>"><?php } ?>
              <img src="<?=$fullpath."/".$r['duongdantin']."/".$r['icon'] ?>" alt="">
            <?php if($r['lien_ket'] != "") { ?></a><?php } ?>
          </li>
        <?php } ?>
  </div>
  <ul class="pagiBanner">
  </ul>
  <script type="text/javascript">
        jQuery(document).ready(function(){
      $(".banner").carouFredSel({
        circular: true,
        infinite: true,
        responsive: true,
        pagination: '.pagiBanner',
        auto : {pauseDuration : 2000,pauseOnHover  : true,duration: 1200,fx     : "crossfade",},
        scroll  : {
          fx : "slide",items  : 1,
          onBefore: function( data ) {
            $('.banner li').not(data.items.visible[0]).find('.caption').animate({opacity: 0,visibility: 'hidden',bottom: -50});
            $(data.items.visible[0]).find('.caption').animate({opacity: 1,visibility: 'visible',bottom: 0},{queue:false,duration:1000});
          },
        },
        prev    : false,
        next    : false,
        swipe: {onMouse: true,onTouch: true},
        items: {height: "variable",visible: {min: 1,max: 1}}
      });
        });
    </script>
  <div class="clr"></div>
</div>