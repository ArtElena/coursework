<?php
$host = 'localhost'; // адреса сервера 
$database = 'audit'; // ім'я бази даних
$user = 'root'; // ім'я користувача
$password = ''; // пароль

$sql = mysqli_connect($host, $user, $password, $database) 
    or die("Помилка");
?>