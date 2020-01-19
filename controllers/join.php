<?php
if ($_POST) {
    if (!$_POST['email']) {
        $error = "Email not set";
    } elseif (!$_POST['password']) {
        $error = "Password not set";
    } elseif (!$_POST['confirmPassword']) {
        $error = "Confirm password not set";
    } elseif (!$_POST['fullName']) {
        $error = "Full name not set";
    }

    if ($error) {
        $smarty->assign('error', $error);
    } else {
        if ($_POST['password'] != $_POST['confirmPassword']) {
            $error = "Password and confirm password must match";
        } else if (strlen($_POST['password']) < 8) {
            $error = "Password must be at least 8 characters in length";
        } else if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $error = "Email is not valid";
        }
    }

    if ($error) {
        $smarty->assign('error', $error);
    } else {
        $User = new User($Conn);
        $attempt = $User->createUser($_POST);

        if ($attempt) {
            header("Location: index.php?p=login");
            exit();
        } else {
            $smarty->assign('error', "An error occurred, please try again later.");
        }
    }
}
