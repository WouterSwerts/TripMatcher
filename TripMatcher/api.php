<?php
header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "data.php";

if (isset($_GET["user"])) {
  $userInput = $_GET["user"];
  $userName = userOpvragen($userInput);

  if ($userName === NULL) {
    jsonresponse(200, "User niet gevonden", $userInput, $userName);
  } else {
    jsonresponse(200, "User gevonden", $userInput, $userName);
  }
} else {
  jsonresponse(400, "Invalid request", null, null);
}

function jsonresponse($statuscode, $message, $userID, $userName, $password) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["id"] = $userID;
  $response["login"] = $userName;
  $response["password"] = $password;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
