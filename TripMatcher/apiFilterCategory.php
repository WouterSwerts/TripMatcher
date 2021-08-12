<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataTrips.php";
include "dataFilterCategory.php";
include "dataTags.php";

$userInput = $_GET["categoryName"];

$categoryName = filterCategory($userInput);

for ($i = 0; $i < count($categoryName); $i++) {
  $categoryName[$i]["tripTags"]=getTags($categoryName[$i]["Trip_id"]);
}

jsonresponse(200, "Trip gevonden", $categoryName);


function jsonresponse($statuscode, $message, $trip) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["trip"] = $trip;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
