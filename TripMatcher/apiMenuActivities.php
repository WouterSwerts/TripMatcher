<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataMenuActivities.php";

$activity = getAllActivities();


jsonresponse(200, "Trip gevonden", $activity);

function jsonresponse($statuscode, $message, $activity) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["activity"] = $activity;


  $jsonencode = json_encode($response);

  echo $jsonencode;


}
