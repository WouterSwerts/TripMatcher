<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Content-Type:application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require "dataTagsToUser.php"; // DATABANK

if(isset($_POST['User_id']))
{
  $userID = $_POST['User_id'];
  $categoryID = $_POST['Category_id'];
  addCategoryToUser($userID, $categoryID);

  response(200, "Posted Data", $userID ,$categoryID);
}



function response($statuscode, $message, $userID ,$categoryID){

  header("HTTP/1.1 ".$statuscode);

  $response["status"] = $statuscode;
  $response["message"] = $message;
  $response["User_id"] = $userID;
  $response["Category_id"] = $categoryID;

  $json_response = json_encode($response);



  echo $json_response;

}
