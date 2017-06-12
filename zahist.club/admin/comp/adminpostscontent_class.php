<?php
require_once "adminform_class.php";

class AdminPostsContent extends AdminForm {
	
	protected $title = "Редактирование страницы для поднятия настроения";
	protected $meta_desc = "Редактирование страницы для поднятия настроения";
	protected $meta_key = "изображения и выражения страницы настроения, загрузка постов";
	
	protected function getFormData() {
		$form_data = array();
		$form_data["fields"] = array("post", "post_img", "date"); 
		$form_data["func_add"] = "add_post";
		$form_data["func_edit"] = "edit_post";
		$form_data["title_add"] = "Добавление поста";
		$form_data["title_edit"] = "Редактирование информации";
		$form_data["get"] = $this->post->get($this->data["id"]);
		$form_data["form_t"] = "posts_form";
		$form_data["t"] = "posts";
		$form_data["obj"] = $this->post;
		$form_data["table_data"] = $this->post->getTableData($this->config->pagination_count, $this->page_info["offset"]);
		return $form_data;
	}
}

?>