<div id="order">
	<h2>Оформление заказа</h2>
	<?php include "message.tpl"; ?>
	<form name="order" action="<?=$this->action?>" method="post">
		<table>
			<tr>
				<td class="w120">Ваше имя и фамилия:<span style="color: #BA0000; font-weight: bold;">*</span></td>
				<td>
					<input type="text" name="name" value="<?=$this->name?>" placeholder="Введите Имя и Фамилию..." required pattern="[^0-9]{2,}" title="Введите Имя" />
				</td>
			</tr>
			<tr>
				<td>Ваш номер телефона:<span style="color: #BA0000; font-weight: bold;">*</span></td>
				<td>
					<input type="text" name="phone" value="<?=$this->phone?>" placeholder="Введите номер телефона..." required pattern="^((8|\+[0-9])[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{6,15}$" title="Введите номер телефона"/>
				</td>
			</tr>
			<tr>
				<td>Ваш E-mail:<span style="color: #BA0000; font-weight: bold;">*</span></td>
				<td>
					<input type="text" name="email" value="<?=$this->email?>" placeholder="Введите E-Mail..." required pattern="\S+@[a-z]+.[a-z]+" title="Введите E-Mail"/>
				</td>
			</tr>
			<tr>
				<td>Доставка:<span style="color: #BA0000; font-weight: bold;">*</span></td>
				<td>
					<select name="delivery" onchange="changeDelivery(this)" required>
						<option value="">выберите, пожалуйста...</option>
						<option value="0" <?php if ($this->delivery == "0") { ?>selected="selected"<?php }?>>В отделение "Новой почты"</option>
						<option value="1" <?php if ($this->delivery == "1") { ?>selected="selected"<?php }?>>Курьером по адресу</option>
					</select>
				</td>
			</tr>
		</table>
		<table>
			<tr id="address">
				<td>
					<p>Отделение "Новой почты" (город, номер отделения) или<br />адрес доставки (индекс, город, улица, дом, квартира):<span style="color: #BA0000; font-weight: bold;">*</span></p>
					<textarea name="address" cols="44" rows="3" required><?=$this->address?></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<p>Дополнительная информация к заказу:</p>
					<textarea name="notice" cols="44" rows="3"><?=$this->notice?></textarea>
				</td>
			</tr>
			<tr>
				<td class="button">
					<input type="hidden" name="func" value="order" />
					<input type="image" src="img/order_end.png" alt="Закончить оформление заказа" onmouseover="this.src='img/order_end_active.png'" onmouseout="this.src='img/order_end.png'" />
				</td>
			</tr>
		</table>
	</form>
</div>