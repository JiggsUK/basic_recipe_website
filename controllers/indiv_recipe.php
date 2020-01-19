<?php

$Recipe = new recipe($Conn);
$recipe_data = $Recipe->getRecipe($_GET['id']);
$smarty->assign('recipe_data', array(
    "recipe_name" => $Recipe->recipe_name,
    "recipe_image" => $Recipe->recipe_image,
    "method" => $Recipe->method,
    "recipe_summary" => $Recipe->recipe_summary,
    "cook_time" => $Recipe->cook_time,
    "serving" => $Recipe->serving,
    "ingredients" => $Recipe->ingredients
));

$Review = new Review($Conn);
$reviews = $Review->getReviews($_GET['id']);
$smarty->assign('reviews', $reviews);

if (!$_POST['rating']) {
    $error = "Rating not set";
} elseif (!$_POST['reviewText']) {
    $error = "Review text not entered";
}
if ($error) {
    $smarty->assign('error', $error);
} else if ($_POST) {
    $Review->createReview($_GET['id'], $_POST['rating'], $_POST['reviewText']);
}

$rating = $Review->getAvgRating($_GET['id']);
$rating = round(floatval($rating['avg_rating']) * 20); // make it a percentage
$smarty->assign('rating', $rating);


