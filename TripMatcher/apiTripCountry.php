<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataTrips.php";
include "dataTripCountry.php";
include "dataTags.php";


$userInput = $_GET["countryName"];
$tripCountry = getTripCountry($userInput);

for ($i = 0; $i < count($tripCountry); $i++) {
  $tripCountry[$i]["tripTags"]=getTags($tripCountry[$i]["Trip_id"]);
}

jsonresponse(200, "Trip gevonden", $tripCountry);


function jsonresponse($statuscode, $message, $trip) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["trip"] = $trip;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}
