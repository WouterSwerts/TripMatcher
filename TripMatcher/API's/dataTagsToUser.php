<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");


function addCategoryToUser($userID,$categoryID) {
  global $db;

  $query = "INSERT INTO tripmatcher.usercategory (User_id, Category_id) VALUES (?, ?);";

  $stmt = $db->prepare($query);
  $stmt->execute([$userID,$categoryID]);

  $db->query($query);

}
