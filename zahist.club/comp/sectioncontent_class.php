<?php
require_once "modules_class.php";

class SectionContent extends Modules {
	
	
	protected function getContent() {
		$section_info = $this->section->get($this->data["id"]);
		if (!$section_info) return $this->notFound();
		$this->title = $section_info["title"];
		$this->meta_desc = "ЗАХИСТ-club | Мы заботимся о Вашей безопасности ✓ Бесплатная доставка по Украине ✓ Недорого   ☎ (095)002-49-02   Заказывайте! ✓ Список товаров для безопасности из раздела ".$section_info["title"];
		$this->meta_key = mb_strtolower("товары для безопасности, список товаров ".$section_info["title"]);
		
		$this->setLinkSort();
		$sort = $this->data["sort"];
		$up = $this->data["up"];
		$this->template->set("table_products_title", $section_info["title"]);
		$this->template->set("products", $this->product->getAllOnSectionID($section_info["id"], $sort, $up));
		$this->template->set("infos", $this->section->getInfoses($section_info["id"], $this->info->getTableName()));
		$this->template->set("videos", $this->section->getVideos($section_info["id"], $this->video->getTableName()));
		return "index";
	}
	
}

?>