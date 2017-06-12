<?php
require_once "modules_class.php";

class PostsContent extends Modules {
	
	protected $title = "Для настроения";
	protected $meta_desc = "Страница хорошего настроения.";
	protected $meta_key = "хорошее настроение, позитив, настройся на лучшее, позитивные посты";
	
	protected function getContent() {
		$this->template->set("products", $this->product->getOthers($product_info, $this->config->count_others));
		$this->template->set("posts", $this->post->getPosts($this->config->posts_count));
		$this->template->set("pages", $this->post->getPages());
		return "posts";
	}
	
}

?>