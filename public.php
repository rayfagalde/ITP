<?php

SELECT m.FoodName, md.Price, md.ItemDescription, md.ItemType
FROM Menu as m
	JOIN MenuDetail as md ON m.MId = md.MDId
;

?>

