<?php
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
// Include Configuration File
if (file_exists("../configuration.php")) {
    require_once("../configuration.php");
} else {
    echo "Missing Configuration File";
    exit();
}
// Include Language File
if (file_exists("../languages/lang." . $ariaConfig_language . ".php")) {
    require_once("../languages/lang." . $ariaConfig_language . ".php");
} else {
    echo "Missing Language File";
    exit();
}
// Include Params File
if (file_exists("../params/params." . $ariaConfig_language . ".php")) {
    include("../params/params." . $ariaConfig_language . ".php");
} else {
    echo "Missing Params File";
    exit();
}
// Include Database Controller
if (file_exists("../include/database.php")) {
    include("../include/database.php");
} else {
    echo "Missing Database File";
    exit();
}
// Include System File
if (file_exists("../include/ariacms.php")) {
    include	("../include/ariacms.php");
} else {
    echo "Missing System File";
    exit();
}



$pid = trim($_REQUEST["pid"]);
$status = trim($_REQUEST["status"]);

$database = new database($ariaConfig_server, $ariaConfig_username, $ariaConfig_password, $ariaConfig_database);
$ariacms = new ariacms();
$params = new params();

$row = new stdClass;
$row->id 		= $pid;
$row->status 		= $status;
$row->date_updated = time();
$database->updateObject('e4_order_list', $row, 'id');

?>
