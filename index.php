<?php
require_once(__DIR__.'/includes/boot.include.php');

if($_GET['p']) {
    $secure_pages = array('account');
    if(in_array($_GET['p'], $secure_pages)){
      if(!$_SESSION['is_loggedin']){
        header("Location:index.php?p=login");
        exit();
      }
    }
    require_once('controllers/'.$_GET['p'].'.php');
    $smarty->display('pages/'.$_GET['p'].'.tpl');
}else{
  require_once('controllers/home.php');
    $smarty->display('pages/home.tpl');
}
?>
