<?php
include 'config.php';

$named = isset($_REQUEST['name']) ? addslashes($_REQUEST['name']) : '';
$phoned = isset($_REQUEST['phone']) ? addslashes($_REQUEST['phone']) : '';
$idservice = isset($_REQUEST['service']) ? addslashes($_REQUEST['service']) : '';

$msg = "INSERT INTO clients_request (client_name, client_phone, id_services, request_date)
VALUES ('$named', '$phoned', '$idservice', NOW())";


if ($sql->query($msg) === TRUE) {
echo "Нова заявка успішно додана";
} else {
echo "Помилка: " . $msg . "<br>" . $sql->error;
}
?>