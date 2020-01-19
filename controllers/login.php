<?php
if ($_POST) {
    if (!$_POST['email']) {
        $error = "Email not set";
    } elseif (!$_POST['password']) {
        $error = "Password not set";
    }

    if ($error) {
        $smarty->assign('error', $error);
    } else {
        $User = new User($Conn);
        $user_data = $User->loginUser($_POST['email'], $_POST['password']);
        if ($user_data) {
            $_SESSION['is_loggedin'] = true;
            $_SESSION['user_data'] = $user_data;
            header("Location: index.php?p=account");
        } else {
            $smarty->assign('error', "Incorrect Email/Password");
        }
    }
}

