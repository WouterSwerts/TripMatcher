<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");


function getQuestionTags($questionID){
  global $db;

  $query = "SELECT * FROM questioncategory LEFT JOIN categorytable ON questioncategory.Category_id = categorytable.Category_id WHERE Question_id =:questionID;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':questionID', $questionID);
  $stmt->execute();

  $resultaat = $stmt->fetchAll();

  return $resultaat;
}
