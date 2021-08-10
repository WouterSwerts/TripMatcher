<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function addUser($newUserName,$newUserEmail, $newUserPassword) {
    global $db;

    $query = "INSERT INTO tripmatcher.usertable (name, email, password) VALUES (?, ?, ?);";

    $stmt = $db->prepare($query);
    $stmt->execute([$newUserName,$newUserEmail, $newUserPassword]);

    $db->query($query);
}
