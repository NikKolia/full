<table id="hornav">
	<tr>
		<td>
			<a href="<?=$this->index?>">Главная</a>
		</td>
		<td>
			<img src="img/hornav_arrow.png" alt="" />
		</td>
		<td>
			<a href="<?=$this->link_section?>"><?=$this->product["section"]?></a>
		</td>
		<td>
			<img src="img/hornav_arrow.png" alt="" />
		</td>
		<td><?=$this->product["title"]?></td>
	</tr>
</table>
<?php include "message.tpl"; ?>
<table id="images">
	<?php
		for ($i = 0; $i < count($this->images); $i++) {
			if ($i % 3 == 0) { ?>
				<tr>
					<?php } ?>
						<td>
							<div class="intro_images">
								<div class="slide_item"><a class="fancybox" data-fancybox-group="group" href="<?=$this->images[$i]["imgs"]?>"><span oncontextmenu="return false;" ondragstart="return false;"><img src="<?=$this->images[$i]["imgs"]?>" alt="product image" /></span></a></div>
								<p class="loop">
									<img src="img/loop.png" class="img-responsive" alt="Loop" />
								</p>
								<p class="title">
									<?=$this->images[$i]["img_description"]?>
								</p>
							</div>
						</td>
					<?php if (($i + 1) % 3 == 0) { ?>
				</tr>
			<?php } ?>
	<?php } ?>
</table>
<table id="product">
	<tr>	
		<td class="product_desc">
			<p>Код товара: <span><?=$this->product["id"]?></span></p>
			<p>Наименование: <span class="title"><?=$this->product["title"]?></span></p>
			<table>
				<tr>
					<td>
						<p class="price"><?=$this->product["price"]?> грн.</p>
					</td>
					<td>
						<p>
							<a class="link_cart" href="<?=$this->product["link_cart"]?>"></a>
						</p>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<button>Отзывы и комментарии</button>
		</td>
	</tr>
	<tr>
		<td>
			<p class="desc_title">Описание товара:</p>
			<p class="desc"><?=$this->product["description"]?></p>
		</td>
	</tr>
	<tr>
		<td>
			<button>Отзывы и комментарии</button>
		</td>
	</tr>
	<tr>	
		<td class="product_desc">
			<p>Наименование: <span class="title"><?=$this->product["title"]?></span></p>
			<table>
				<tr>
					<td>
						<p class="price"><?=$this->product["price"]?> грн.</p>
					</td>
					<td>
						<p>
							<a class="link_cart" href="<?=$this->product["link_cart"]?>"></a>
						</p>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- <div>
	<p class="frame">
		<iframe class="video img-responsive" src="<?=$this->product["frame"]?>" frameborder="0" allowfullscreen></iframe>
	</p>
</div> -->
<div id="others">
	<h3>Вам также может понравиться:</h3>
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
<div id="comment" class="target-el">
	<h4>Отзывы и комментарии о товаре:<br /><span class="title"><?=$this->product["title"]?></span></h4>
	<p class="lowp"><?=$this->product["price"]?> грн.</p>
	<p>
		<a class="link_cart" href="<?=$this->product["link_cart"]?>"></a>
	</p>
	<?php include "message.tpl"; ?>
	<div>
		<p id="low">Вы также можете оставить отзыв или комментарий об этом товаре:</p>
		<form name="order" action="<?=$this->action?>" method="post">
			<p><textarea name="comment" cols="70" rows="3" required><?=$this->comment?></textarea></p>
			<p>Ваше имя:<span style="color: #BA0000; font-weight: bold;">*</span><br /><input type="text" name="name" value="<?=$this->name?>" placeholder="Введите Имя..." required title="Введите Имя" /></p>
			<p>Ваш E-mail:<span style="color: #BA0000; font-weight: bold;">*</span><br /><input type="text" name="email" value="<?=$this->email?>" placeholder="Введите E-Mail..." required pattern="\S+@[a-z]+.[a-z]+" title="Введите E-Mail" /></p>
			<p class="button">
				<input type="hidden" name="func" value="comment" />
				<input type="hidden" name="product_id" value="<?=$this->product_id?>" />
				<input type="image" src="img/comment.png" alt="Закончить оформление заказа" onmouseover="this.src='img/comment_active.png'" onmouseout="this.src='img/comment.png'" />
			</p>
		</form>
	</div>
	<div>
		<?php foreach ($this->comments as $data) { ?>
			<p class="comment"><?=$data["comment"]?></p>
			<p class="name"><?=$data["name"]?></p> 
			<p class="date"><?=$data["date"]?></p>
		<?php } ?>
	</div>
</div>