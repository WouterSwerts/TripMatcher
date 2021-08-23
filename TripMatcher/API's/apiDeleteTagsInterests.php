<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

include "dataDeleteTagsInterests.php";

//$method = $_SERVER["REQUEST_METHOD"];

//if ($method === "DELETE"){
  $tagID = $_GET['Category_name'];

  deleteTagInterests($tagID);

  jsonresponse(200, "Data deleted", NULL);

//}


function jsonresponse($statuscode, $message, $tagName) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["tagName"] = $tagName;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}

