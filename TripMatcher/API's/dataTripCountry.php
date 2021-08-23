<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function getTripCountry($countryName) {
  global $db;

  $query = "SELECT * FROM tripmatcher.triptable LEFT JOIN tripmatcher.countrytable ON triptable.Country_id = countrytable.Country_id WHERE country =:countryName;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':countryName', $countryName);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();


  return $resultaat;


}
