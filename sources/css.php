<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="css/shake.css" rel="stylesheet" type="text/css">
<link href="css/unleash.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/animation.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="images/fancybox/jquery.fancybox.css"/>
<link rel="stylesheet" type="text/css" href="css/galleria.folio.css"/>
<link href="css/style.css?v=<?=time() ?>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type='text/javascript' src='js/jquery.marquee.min.js'></script>
<script type="text/javascript" src="js/jquery.carouFredSel.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" src="js/jquery.masonry.min.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/script218.js"></script>
<script type="text/javascript" src="images/fancybox/jquery.fancybox.js"></script>
<script type="text/javascript" language="javascript" src="js/flexcroll.js"></script>
<script src="js/galleria-1.2.8.min.js"></script>
<script type="text/javascript" src="js/jquery.unleash.js"></script>
<script>
$(document).ready(function(){
	// hide #back-top first
	$("#back-top").hide();
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});
</script>