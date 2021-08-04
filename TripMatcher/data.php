<?php


$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function userOpvragen($user) {
  global $db;

  $query = "SELECT * FROM users WHERE login=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn();


  return $resultaat;
}

function passwordOpvragen($user) {
  global $db;

  $query = "SELECT * FROM users WHERE login=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn(2);


  return $resultaat;
}

//echo userOpvragen("test");


