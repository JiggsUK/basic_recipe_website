<?php
$Collection = new collection($Conn);

$collectionRecipes = $Collection->getCollectionRecipes($_GET['id']);
$smarty->assign('recipes_collection', $collectionRecipes);

$collectionName = $Collection->getCollectionName($_GET['id']);
$smarty->assign('collection_name', $collectionName);
