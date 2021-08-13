<?php

header("Content-Type:application/json");
header("Access-Control-Allow-Origin: *");

include "dataQuestionTags.php";

$Qtags = getQuestionTags($_GET["questionID"]);

jsonresponse(200, "Trip gevonden", $Qtags);

function jsonresponse($statuscode, $message, $Qtags) {
  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["Qtags"] = $Qtags;


  $jsonencode = json_encode($response);

  echo $jsonencode;


}
