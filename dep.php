<?php
session_start(); 
include_once('dbconnect.php');

$sql = "SELECT  d.id_dep, d.name_dep
        FROM     dep d";

$stmt = $conn->prepare($sql);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($id_dep, $name_dep);

?>