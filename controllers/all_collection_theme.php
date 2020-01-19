<?php

$Collection = new collection($Conn);

$allTheme = $Collection->allCollectionTheme($_GET['id']);
$smarty->assign('collection_data', $allTheme);

$themeName = $Collection->getCollectionTheme($_GET['id']);
$smarty->assign('collection_theme', $themeName);

