<table class="products">
	<?php
		for ($i = 0; $i < count($this->videos); $i++) {
			if ($i % 1 == 0) { ?>
				<tr>
					<?php } ?>
						<td>
							<div class="intro"><?=$this->videos[$i]["video_desc"]?></div>
						</td>
					<?php if (($i + 1) % 1 == 0) { ?>
				</tr>
			<?php } ?>
	<?php } ?>
</table>
