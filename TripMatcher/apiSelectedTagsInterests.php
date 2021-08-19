<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataSelectedTagsInterests.php";

$userInput = $_GET["userID"];
$userID = getSelectedTagsInterests($userInput);

jsonresponse(200, "Trip gevonden", $userID);

function jsonresponse($statuscode, $message, $category_id) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["category_id"] = $category_id;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
