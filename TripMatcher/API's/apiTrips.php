<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataTrips.php";
include "dataTags.php";

$trip = getAllTrips();

for ($i = 0; $i < count($trip); $i++) {
  $trip[$i]["tripTags"]=getTags($trip[$i]["Trip_id"]);
}

//var_dump($trip[0]);


jsonresponse(200, "Trip gevonden", $trip);


function jsonresponse($statuscode, $message, $trip) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["trip"] = $trip;

//  $response["image"] = $image;
//  $response["title"] = $title;
//  $response["summary"] = $summary;
//  $response["country_id"] = $country_id;
//  $response["added_date"] = $added_date;

  $jsonencode = json_encode($response);

  echo $jsonencode;


}




