<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function getAllTrips() {
  global $db;

  $query = "SELECT * FROM tripmatcher.triptable;";

  $stmt = $db->prepare($query);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();

  return $resultaat;

}
