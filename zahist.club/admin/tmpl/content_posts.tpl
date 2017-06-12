<h3>Редактирование страницы настроения</h3>
<?php include "message.tpl"; ?>
<?php include "pagination.tpl"; ?>
<p class="link_new">
	<a href="<?=$this->link_new?>">Добавить новый пост</a>
</p>
<table class="info">
	<tr class="header">
		<td>ID</td>
		<td>Пост, дата</td>
		<td>Изображение</td>
		<td>Функции</td>
	</tr>
	<?php foreach ($this->table_data as $data) { ?>
		<tr>
			<td><?=$data["id"]?></td>
			<td>
				<?=$data["post"]?>
				<br />
				<?=$data["date"]?>
			</td>
			<td>
				<img class="img" src="<?=$data["post_img"]?>" alt="post image" />
			</td>
			<td>
				<a href="<?=$data["link_admin_edit"]?>">Редактировать</a>
				<br />
				<a href="<?=$data["link_admin_delete"]?>" onclick="return confirm('Вы уверены, что хотите удалить элемент?')">Удалить</a>
			</td>
		</tr>
	<?php } ?>
</table>
<?php include "pagination.tpl"; ?>