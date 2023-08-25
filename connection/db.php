<?php

$host = "localhost";
$user  = "root";
$password =  "";
// $database2 = "w3bconsole"; // Jangan ubah untuk maintain cms
$database = "devdbtemplate";

///////////////////////////////////////////////////
// LIST OF DATABASE CONNECTION FOR EVERY TEMPLATE//
///////////////////////////////////////////////////

$conn_cpanel = new mysqli($host, $user, $password, $database);
if($conn_cpanel->connect_errno > 0){
    // die('Unable to connect to database2' . $conn_cpanel->connect_error);
    die('Unable to connect to database' . $conn_cpanel->connect_error);
}

$website_id='WB-932034-2023';
$website_id = mysqli_escape_string($conn_cpanel, $website_id);
$website_id = filter_var($website_id, FILTER_SANITIZE_STRING);

$url="https://w3bconsole.sabah.gov.my/";