<?php


$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function getTags($trip_id) {
  global $db;

  $query = "SELECT Category_name FROM tripcategory LEFT JOIN categorytable ON categorytable.Category_id = tripcategory.Category_id WHERE Trip_id =:trip_id  LIMIT 10;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':trip_id', $trip_id);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();

  return $resultaat;

}
