<?php
session_start();

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");


function sessionID($user) {
  global $db;

  $query = "SELECT * FROM users WHERE login=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn(0);


  return $resultaat;
}

function userOpvragen($user) {
  global $db;

  $query = "SELECT * FROM users WHERE login=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn();

  $_SESSION["id"] = sessionID($user);

  return $resultaat;

}

function passwordOpvragen($user) {
  global $db;

  $query = "SELECT * FROM users WHERE login=:user;";

  $stmt = $db->prepare($query);
  $stmt->bindParam(':user', $user);
  $stmt->execute();

  $resultaat = $stmt->fetchColumn(2);

  $_SESSION["id"] = sessionID($user);

  return $resultaat;
}



//echo userOpvragen("test");


