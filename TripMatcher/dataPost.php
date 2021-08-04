<?php

$dbUsername = "root";
$dbPassword = "";
$dbHostname = "localhost";
$dbDatabank = "tripmatcher";

$db = new PDO("mysql:host=$dbHostname; dbname=$dbDatabank", "$dbUsername", "$dbPassword");

function addUser($newUserLogin, $newUserPassword) {
    global $db;

    $query = "INSERT INTO users (login, password) VALUES (?, ?);";

    $stmt = $db->prepare($query);
    $stmt->execute([$newUserLogin, $newUserPassword]);

    $db->query($query);
}
