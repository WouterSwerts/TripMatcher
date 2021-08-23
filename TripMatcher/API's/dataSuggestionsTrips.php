<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");


function getSuggestionTrips($userID) {
  global $db;

  $query = "SELECT DISTINCT triptable.Trip_id, triptable.Image, triptable.Title, triptable.Summary, triptable.Country_id, triptable.Added_date FROM triptable LEFT JOIN tripcategory ON triptable.Trip_id = tripcategory.Trip_id LEFT JOIN categorytable ON tripcategory.Category_id = categorytable.Category_id WHERE Category_name IN (SELECT categorytable.Category_name FROM usercategory LEFT JOIN categorytable ON usercategory.Category_id = categorytable.Category_id WHERE User_id =:userID);
";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':userID', $userID);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();


  return $resultaat;


}
