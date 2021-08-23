<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataTags.php";

$trip_id = $_GET["trip_id"];

$tripTags = getTags($trip_id);

jsonresponse(200, "Trip gevonden", $tripTags);

function jsonresponse($statuscode, $message, $tripTags) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["tripTags"] = $tripTags;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
