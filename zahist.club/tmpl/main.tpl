<!DOCTYPE html>
<html lang="ru">
<!--[if IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie9.css" />
<![endif]-->
<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/all-ie.css" />
<![endif]-->
<head>
	<meta charset="utf-8" />
	<title><?=$this->title?></title>
	<meta name="viewport" content="width=1024" />
	<meta name="format-detection" content="telephone=no" />
	<meta name="description" content="<?=$this->meta_desc?>" />
	<meta name="keywords" content="<?=$this->meta_key?>" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<link rel="stylesheet" href="libs/font-awesome-4.2.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="libs/fancybox/jquery.fancybox.css" />
	<link rel="stylesheet" href="libs/owl-carousel/owl.carousel.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/media.css" />
	<script src="libs/jquery/jquery-3.1.1.min.js"></script>
	<script src="libs/jquery-scrollup/jquery.scrollup.min.js"></script>
		<script type="text/javascript">
		document.ondragstart = test;
		document.onselectstart = test;
		document.oncontextmenu = test;
			function test() {
			return false;
			}
		document.oncontextmenu;
		function catchControlKeys(event){
			var code=event.keyCode ? event.keyCode : event.which ? event.which : null;
			if (event.ctrlKey){
			// Ctrl+U
			if (code == 117) return false;
			if (code == 85) return false;
			// Ctrl+C
			if (code == 99) return false;
			if (code == 67) return false;
			// Ctrl+A
			if (code == 97) return false;
			if (code == 65) return false;
			}
		}
	</script>
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-99427020-1', 'auto');
	  ga('require', 'displayfeatures');	  
	  ga('send', 'pageview');

	</script>
</head>
<body onkeypress="return catchControlKeys(event)">
	<div id="container">
		<div id="header">
			<img src="img/header.png" alt="Шапка" />
			<div>
				<p class="yellow">"ЗАХИСТ-club"</p>
				<p class="orange">(097)990-42-90<br />(095)002-49-02<br />www.zahist.club</p>
				<p class="slogan">Мы заботимся о Вашей безопасности!</p>
			</div>
			<div class="cart">
				<p class="cart_title">Корзина</p>
				<p class="blue">Текущий заказ</p>
				<p>В корзине <span><?=$this->cart_count?></span> <?=$this->cart_word?><br />на сумму <span><?=$this->cart_summa?></span> грн.</p>
				<a href="<?=$this->cart_link?>">Перейти в корзину</a>
			</div>
		</div>
		<div id="topmenu">
			<ul>
				<!-- <li>
					<a href="#" class="vk"><img src="img/vk.png" alt="Vkontakte" /></a>
				</li>
				<li>
					<a href="#" class="fb"><img src="img/fb.png" alt="Facebook" /></a>
				</li> -->
				<li>
					<a href="<?=$this->index?>">ВСЕ ТОВАРЫ</a>
				</li>
				<li>
					<img src="img/topmenu_border.png" alt="" />
				</li>
				<li>
					<a href="<?=$this->link_delivery?>">ДОСТАВКА И ОПЛАТА</a>
				</li>
				<li>
					<img src="img/topmenu_border.png" alt="" />
				</li>
				<li>
					<a href="<?=$this->link_contacts?>">КОНТАКТЫ</a>
				</li>
				<li>
					<img src="img/topmenu_border.png" alt="" />
				</li>
				<li>
					<a class="page" href="<?=$this->link_posts?>">Страница настроения</a>
				</li>
			</ul>
			<div id="search">
				<form name="search" action="<?=$this->link_search?>" method="get">
					<table>
						<tr>
							<td class="input_left"></td>
							<td>
								<input type="text" name="q" value="поиск" onfocus="if(this.value == 'поиск') this.value=''" onblur="if(this.value == '') this.value='поиск'" />
							</td>
							<td class="input_right"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div id="content">
			<div id="left">
				<div id="menu">
					<div class="header">
						<h3>Разделы</h3>
					</div>
					<div id="items">
						<?php for ($i = 0; $i < count($this->items); $i++) { ?>
							<p <?php if ($i + 1 == count($this->items)) {?>class="last"<?php }?>>
								<a href="<?=$this->items[$i]["link"]?>"><?=$this->items[$i]["title"]?></a>
							</p>
						<?php } ?>
					</div>
					<div class="bottom"></div>
				</div>
			</div>
			<div id="right">
				<?php include "content_".$this->content.".tpl"; ?>
			</div>
			<div id="footer">
				<div id="copy">
					<p>"ЗАХИСТ-club" &copy; 2016. Разработка и поддержка - <a href="http://chameleon.org.ua/" target="_blank">chameleon.org.ua</a></p>
					<p class="counter">
						<!--LiveInternet counter--><script type="text/javascript"><!--
						document.write("<a href='//www.liveinternet.ru/click' "+
						"target=_blank><img src='//counter.yadro.ru/hit?t11.2;r"+
						escape(document.referrer)+((typeof(screen)=="undefined")?"":
						";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
						screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
						";h"+escape(document.title.substring(0,80))+";"+Math.random()+
						"' alt='' title='LiveInternet: показано число просмотров за 24"+
						" часа, посетителей за 24 часа и за сегодня' "+
						"border='0' width='88' height='31'><\/a>")
						//--></script><!--/LiveInternet-->
					</p>
				</div>
			</div>
		</div>
	</div>
	<script src="libs/jquery-mousewheel/jquery.mousewheel.min.js"></script>
	<script src="libs/fancybox/jquery.fancybox.pack.js"></script>
	<script src="libs/owl-carousel/owl.carousel.min.js"></script>
	<script src="libs/scrollto/jquery.scrollTo.min.js"></script>
	<script src="js/common.js"></script>
</body>
</html>