<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Content-Type:application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require "dataPost.php"; // DATABANK

if(isset($_POST['login']))
{
  $naam = $_POST['login'];
  $password = $_POST['password'];
  addUser($naam, $password);
  response(200, "Posted Data", $naam, $password);
}
else {
  response(200, "Data Send", NULL, NULL);
}
//* Onze functie om de response te versturen via HTTP in JSON formaat
function response($statuscode, $message, $userName, $password){

  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["login"] = $userName;
  $response["password"] = $password;

  $json_response = json_encode($response);



  echo $json_response;

}
