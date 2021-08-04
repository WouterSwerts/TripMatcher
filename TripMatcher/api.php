<?php
header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "data.php";

if (isset($_GET["user"])) {
  $userInput = $_GET["user"];
  $userName = userOpvragen($userInput);
  $password = passwordOpvragen($userInput);

  if ($userName === NULL) {
    jsonresponse(200, "User niet gevonden", $userInput, $userName, $password);
  } else {
    jsonresponse(200, "User gevonden", $userInput, $userName, $password);
  }
} else {
  jsonresponse(400, "Invalid request", null, null, null);
}

function jsonresponse($statuscode, $message, $userName, $userID, $password) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["login"] = $userName;
  $response["id"] = $userID;
  $response["password"] = $password;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
