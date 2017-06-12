<table class="products">
	<?php
		for ($i = 0; $i < count($this->videos); $i++) {
			if ($i % 1 == 0) { ?>
				<tr>
					<?php } ?>
						<td>
							<div class="videos">
								<p class="frame">
									<iframe width="560" height="315" src="<?=$this->videos[$i]["sec_videos"]?>" frameborder="0" allowfullscreen></iframe>
								</p>
							</div>
						</td>
					<?php if (($i + 1) % 1 == 0) { ?>
				</tr>
			<?php } ?>
	<?php } ?>
</table>
