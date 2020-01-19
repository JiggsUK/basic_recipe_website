<?php
$Collection = new collection($Conn);

$courseCollection = $Collection->courseCollection();
$smarty->assign('course_data', $courseCollection);

$cuisineCollection = $Collection->cuisineCollection();
$smarty->assign('cuisine_data', $cuisineCollection);