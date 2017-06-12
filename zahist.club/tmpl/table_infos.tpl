<table class="products">
	<?php
		for ($i = 0; $i < count($this->infos); $i++) {
			if ($i % 3 == 0) { ?>
				<tr>
					<?php } ?>
						<td>
							<div class="infos">
								<p class="img"><img src="<?=$this->infos[$i]["infoimgs"]?>" alt="section image" /></p>
								<p class="infoimg_desc"><?=$this->infos[$i]["infoimg_description"]?></p>
							</div>
						</td>
					<?php if (($i + 1) % 3 == 0) { ?>
				</tr>
			<?php } ?>
	<?php } ?>
</table>