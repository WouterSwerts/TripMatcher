<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Content-Type:application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require "dataPost.php"; // DATABANK

if(isset($_POST['email']))
{
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  addUser($name, $email, $password);
  response(200, "Posted Data", $name, $email, $password);
}
else {
  response(200, "Data Send", NULL, NULL, NULL);
}
//* Onze functie om de response te versturen via HTTP in JSON formaat
function response($statuscode, $message, $userName, $userEmail, $password){

  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["name"] = $userName;
  $response["email"] = $userEmail;
  $response["password"] = $password;

  $json_response = json_encode($response);



  echo $json_response;

}
