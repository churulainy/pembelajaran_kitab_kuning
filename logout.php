<?php 
    require_once 'connection.php';

    $email = $dataUser['email'];
    $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'User $email berhasil logout!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

    session_destroy();
    header("Location: login.php");
    exit;
?>