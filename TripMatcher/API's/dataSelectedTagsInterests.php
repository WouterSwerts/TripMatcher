<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");


function getSelectedTagsInterests($userID) {
  global $db;

  $query = "SELECT * FROM tripmatcher.usercategory LEFT JOIN tripmatcher.categorytable ON usercategory.Category_id = categorytable.Category_id WHERE User_id =:userID;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':userID', $userID);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();


  return $resultaat;


}
