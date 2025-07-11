<?php 
    require_once 'connection.php';
    // echo password_hash("admin", PASSWORD_DEFAULT);
    if (isset($_SESSION['id_user'])) {
        echo "
            <script>
                window.location='index.php'
            </script>
        ";
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en"> <!--begin::Head-->

<head>
    <title>Sistem Pembelajaran Kitab Kuning</title>
    <?php include_once 'include/head.php'; ?>
</head> <!--end::Head--> <!--begin::Body-->

<body class="login-page bg-body-secondary">

    <?php 
        if (isset($_POST['btnLogin'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];

            $query_login = mysqli_query($conn, "SELECT * FROM user WHERE email = '$email'");
            
            if ($data_user = mysqli_fetch_assoc($query_login)) {
                if (password_verify($password, $data_user['password'])) {
                    $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'User $email berhasil login!', CURRENT_TIMESTAMP(), " . $data_user['id_user'] . ")");
                    $_SESSION['id_user'] = $data_user['id_user'];
                    header("Location: index.php");
                    exit;
                } else {
                    echo "
                        <script>
                            Swal.fire({
                                icon: 'error',
                                title: 'Gagal Login!',
                                text: 'Email atau Password salah!',
                                confirmButtonText: 'Kembali'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.history.back();
                                }
                            });
                        </script>
                    ";
                    exit;
                }
            } else {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal Login!',
                            text: 'Email atau Password salah!',
                            confirmButtonText: 'Kembali'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.history.back();
                            }
                        });
                    </script>
                ";
                exit;
            }
        }
    ?>

    <div class="login-box">
        <div class="card card-outline card-primary">
            <div class="card-header">
                <div class="text-center">
                    <img src="assets/img/properties/logo.png" class="mx-auto w-25" alt="Logo">
                </div>
                <h2 class="text-center">Sistem Pembelajaran Kitab Kuning</h2>
            </div>
            <div class="card-body login-card-body pb-0 pt-2">
                <h4 class="text-dark text-center">User Login</h4>
                <form method="post">
                    <div class="input-group mb-1">
                        <div class="form-floating"> 
                            <input id="email" name="email" type="text" class="form-control" value="" placeholder="" required> 
                            <label for="email">Email</label> 
                        </div>
                        <div class="input-group-text"> <span class="fas fa-fw fa-envelope"></span> </div>
                    </div>
                    <div class="input-group mb-1">
                        <div class="form-floating"> <input id="password" name="password" type="password" class="form-control" placeholder="" required> <label for="password">Password</label> </div>
                        <div class="input-group-text"> <span class="fas fa-fw fa-lock"></span> </div>
                    </div> <!--begin::Row-->
                    <div class="row mt-3">
                        <div class="col-6 d-inline-flex align-items-center">
                            <a href="registrasi.php">Registrasi</a>
                        </div> <!-- /.col -->
                        <div class="col text-end">
                            <button type="submit" name="btnLogin" class="btn btn-primary">Login <span class="fas fa-fw fa-sign-in-alt"></span></button>
                        </div> <!-- /.col -->
                    </div> <!--end::Row-->
                </form>
            </div> 
            <div class="card-footer">
                <p class="m-0 p-0">Copyright &copy; 2024 Sistem Pembelajaran Kitab Kuning.</p>
            </div>
        </div>
    </div> <!-- /.login-box --> <!--begin::Third Party Plugin(OverlayScrollbars)-->
    <?php include_once 'include/script.php'; ?>
</body><!--end::Body-->

</html>