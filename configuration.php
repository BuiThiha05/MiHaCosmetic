<?php

error_reporting(E_ALL & ~E_NOTICE);

// Database configuration:";

$ariaConfig_server = "localhost";

$ariaConfig_username = "root";

$ariaConfig_password = "";

$ariaConfig_database = "mypham";

// Site Configuration:

$ariaConfig_sitename = "";

$ariaConfig_template = "traid";

// Set Language

if (!isset($_SESSION['steam_lang'])) {

  $_SESSION['steam_lang'] = "vi";

}

$ariaConfig_language = $_SESSION['steam_lang'];


