<div id="positive">
	<h2>Хорошего настроения!</h2>
	<div id="posts">
		<?php for ($i = 0; $i < count($this->posts); $i++) { ?>
			<p class="post">
				<a><?=$this->posts[$i]["post"]?></a>
			</p>
			<p class="imgpost">
				<a><img src="<?=$this->posts[$i]["post_img"]?>" alt="<?=$this->posts[$i]["title"]?>" /></a>
			</p>
			<p class="datepost">
				<a><?=$this->posts[$i]["date"]?></a>
			</p>
		<?php } ?>
		<?php include "pagination.tpl"; ?>
		<p class="pages">страницы</p>
	</div>
	<div id="others">
		<h3>Вам может понравиться:</h3>
		<div class="sider_container">
			<div class="next_button"><i class="fa fa-angle-right"></i></div>
			<div class="prev_button"><i class="fa fa-angle-left"></i></div>
			<div class="carousel">
				<?php for ($i = 0; $i < count($this->products); $i++) { ?>
					<div class="slide_item">
						<div class="intro_product">
							<p class="img">
								<a href="<?=$this->products[$i]["link"]?>"><img src="<?=$this->products[$i]["img"]?>" alt="<?=$this->products[$i]["title"]?>" /></a>
							</p>
							<p class="title">
								<a href="<?=$this->products[$i]["link"]?>"><?=$this->products[$i]["title"]?></a>
							</p>
							<p class="price"><?=$this->products[$i]["price"]?> грн.</p>
							<p>
								<a class="link_cart" href="<?=$this->products[$i]["link_cart"]?>"></a>
							</p>
						</div>
					</div>
				<?php } ?>
			</div>	
		</div> 
	</div>
</div>