<?php
$serverName = "NAMLONG-PC\SQLEXPRESS";
$connectionInfo = array( "Database"=>"AdventureWorks2012", "UID"=>"Nam", "PWD"=>"long");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn === false ) {
    die( print_r( sqlsrv_errors(), true));
}

?>