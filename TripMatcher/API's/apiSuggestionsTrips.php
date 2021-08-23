<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataTrips.php";
include "dataSuggestionsTrips.php";
include "dataTags.php";

$userInput = $_GET["userID"];
$userID = getSuggestionTrips($userInput);

for ($i = 0; $i < count($userID); $i++) {
  $userID[$i]["tripTags"]=getTags($userID[$i]["Trip_id"]);
}


jsonresponse(200, "Trip gevonden", $userID);

function jsonresponse($statuscode, $message, $trip) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["trip"] = $trip;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
