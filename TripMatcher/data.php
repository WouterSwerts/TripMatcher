<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");


function userOpvragen($user) {
  global $db;

  $query = "SELECT * FROM tripmatcher.usertable WHERE Email=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn();


  return $resultaat;

}

function passwordOpvragen($user) {
  global $db;

  $query = "SELECT * FROM tripmatcher.usertable WHERE email=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn(4);

  return $resultaat;
}

function imageOpvragen($user) {
  global $db;

  $query = "SELECT * FROM tripmatcher.usertable WHERE email=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn(3);

  return $resultaat;
}

function nameOpvragen($user) {
  global $db;

  $query = "SELECT * FROM tripmatcher.usertable WHERE email=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn(1);

  return $resultaat;
}


