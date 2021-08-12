<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function getAllActivities(){
  global $db;

  $query = "SELECT Category_name FROM tripmatcher.categorytable;";

  $stmt = $db->prepare($query);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();

  return $resultaat;
}
