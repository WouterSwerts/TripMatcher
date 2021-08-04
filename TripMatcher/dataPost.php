<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function addUser($newUserLogin, $newUserPassword) {
    global $db;

    $query = "INSERT INTO users (login, password) VALUES (:login, :password);";

    $stmt = $db->prepare($query);
    $stmt->bindParam(':login', $newUserLogin);
    $stmt->bindParam(':password', $newUserPassword);
    $stmt->execute();

    $db->query($query);


}
