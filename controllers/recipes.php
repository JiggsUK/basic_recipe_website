<?php
$Recipe = new recipe($Conn);
$allRecipes = $Recipe->allRecipes();
$smarty->assign('recipe_data', $allRecipes);

$courseList = $Recipe->getCourseList();
$smarty->assign('course_list', $courseList);

$cuisineList = $Recipe->getCuisineList();
$smarty->assign('cuisine_list', $cuisineList);

$servingList = $Recipe->getServingList();
$smarty->assign('serving_list', $servingList);

if ($_POST) {
    $filter = $Recipe->filterRecipes($_POST['serving'], $_POST['cuisine'], $_POST['course']);
    $smarty->assign('recipe_data', $filter);
} else {
    $allRecipes = $Recipe->allRecipes();
    $smarty->assign('recipe_data', $allRecipes);
}