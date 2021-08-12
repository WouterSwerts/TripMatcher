<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function filterCategory($categoryName) {
  global $db;

  $query = "SELECT * FROM triptable LEFT JOIN tripcategory ON triptable.Trip_id = tripcategory.Trip_id LEFT JOIN categorytable ON tripcategory.Category_id = categorytable.Category_id WHERE Category_name=:categoryName;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':categoryName', $categoryName);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();


  return $resultaat;

}
