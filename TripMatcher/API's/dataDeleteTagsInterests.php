<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function deleteTagInterests($tagName) {
  global $db;

  $query = "DELETE FROM tripmatcher.usercategory WHERE Category_id = (SELECT category_id FROM categorytable WHERE category_name =:tagID);";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':tagID', $tagName);
  $stmt->execute();

}
