        	<div class="clr"></div>
       </div>
        <?php include"footer.php";?>
	</div>
</article></section>
<script type='text/javascript' src='js/jquery.marquee.min.js'></script>
<script type="text/javascript" src="js/jquery.carouFredSel.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" language="javascript" src="js/me.js?v=<?=time() ?>"></script>
<script type="text/javascript" src="js/owl.carousel.js"></script>
<script src='menu_mb/jquery.mmenu.min.js' type='text/javascript'></script> 
<link rel="stylesheet" href="css/fancybox/jquery.fancybox.min.css" />
<script src="css/fancybox/jquery.fancybox.min.js"></script>
<script>
	$( window ).load(function() {
	  	$("#nav-mobile").mmenu();
		$("#nav-mobile").show();
	});
</script>
 
<?php if(!empty($slug_step)){ ?>
<script>$(".active_mn_<?=$slug_step ?>").addClass("acti")</script>
<?php }else{ ?>
<script>$(".active_mn_01").addClass("acti")</script>
<?php } ?>
</body>
</html>