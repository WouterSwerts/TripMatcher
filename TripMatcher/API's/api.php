<?php
header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "data.php";

if (isset($_GET["user"])) {
  $userInput = $_GET["user"];
  $userName = userOpvragen($userInput);
  $password = passwordOpvragen($userInput);
  $image = imageOpvragen($userInput);
  $name = nameOpvragen($userInput);

  if ($userName === NULL) {
    jsonresponse(200, "User niet gevonden", $userInput, $userName, $password, $image, $name);
  } else {
    jsonresponse(200, "User gevonden", $userInput, $userName, $password, $image, $name);
  }
} else {
  jsonresponse(400, "Invalid request", null, null, null, NULL, NULL);
}

function jsonresponse($statuscode, $message, $userName, $userID, $password, $userImage, $name) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["email"] = $userName;
  $response["id"] = $userID;
  $response["password"] = $password;
  $response["image"] = $userImage;
  $response["name"] = $name;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
