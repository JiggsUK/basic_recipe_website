<?php

$User = new User($Conn);

$user_id = $_SESSION['user_data']['user_id'];

if ($_SESSION['user_data']['user_id'] == $user_id) {
    $user_account = $User->getUserAccount($user_id);
    $smarty->assign('user_data', $user_account);

    $Review = new Review($Conn);
    $user_reviews = $Review->getUsersReviews($user_id);
    $smarty->assign('user_reviews', $user_reviews);
} else {
    $permissionDenied = "Permission Denied";
    $smarty->assign('access', $permissionDenied);
}

