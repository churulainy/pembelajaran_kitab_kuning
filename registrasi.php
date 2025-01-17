<?php 
    require_once 'connection.php';

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
        if (isset($_POST['btnRegistrasi'])) {
            $nama_lengkap = htmlspecialchars($_POST['nama_lengkap']);
            $email = htmlspecialchars($_POST['email']);
            $password = htmlspecialchars($_POST['password']);
            $ulangi_password = htmlspecialchars($_POST['ulangi_password']);
            
            // check email
            $check_email = mysqli_query($conn, "SELECT * FROM user WHERE email = '$email'");
            
            if (mysqli_num_rows($check_email) > 0) {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal Registrasi!',
                            text: 'Email sudah terdaftar!',
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

            // check password & ulangi password            
            if ($password !== $ulangi_password) {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal Registrasi!',
                            text: 'Password tidak sama dengan Ulangi Password!',
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
            
            $password = password_hash($password, PASSWORD_DEFAULT);
            
            $query_registrasi = mysqli_query($conn, "INSERT INTO user VALUES ('', '$nama_lengkap', '$email', '$password', 'pengguna', 'default.jpg', '1', CURRENT_TIMESTAMP())");

            if ($query_registrasi) {
                $data_user = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM user WHERE email = '$email'"));
                $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Registrasi User $email berhasil!', CURRENT_TIMESTAMP(), " . $data_user['id_user'] . ")");
                echo "
                    <script>
                        Swal.fire({
                            icon: 'success',
                            title: 'Registrasi Berhasil!',
                            text: 'Registrasi User " . $email . " berhasil!'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'login.php';
                            }
                        });
                    </script>
                ";
                exit;
            } else {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal Registrasi!',
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
                <h4 class="text-dark text-center">User Registrasi</h4>
                <form method="post">
                    <div class="input-group mb-1">
                        <div class="form-floating"> 
                            <input id="nama_lengkap" name="nama_lengkap" type="text" class="form-control" placeholder="" required> 
                            <label for="nama_lengkap">Nama Lengkap</label> 
                        </div>
                        <div class="input-group-text"> <span class="fas fa-fw fa-user"></span> </div>
                    </div>
                    <div class="input-group mb-1">
                        <div class="form-floating"> 
                            <input id="email" name="email" type="email" class="form-control" placeholder="" required> 
                            <label for="email">Email</label> 
                        </div>
                        <div class="input-group-text"> <span class="fas fa-fw fa-envelope"></span> </div>
                    </div>
                    <div class="input-group mb-1">
                        <div class="form-floating"> 
                            <input id="password" name="password" type="password" class="form-control" placeholder="" required>
                            <label for="password">Password</label> 
                        </div>
                        <div class="input-group-text"> <span class="fas fa-fw fa-lock"></span> </div>
                    </div>
                    <div class="input-group mb-1">
                        <div class="form-floating"> 
                            <input id="ulangi_password" name="ulangi_password" type="password" class="form-control" placeholder="" required>
                            <label for="ulangi_password">Ulangi Password</label> 
                        </div>
                        <div class="input-group-text"> <span class="fas fa-fw fa-lock"></span> </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-6 d-inline-flex align-items-center">
                            <a href="login.php">Login</a>
                        </div> <!-- /.col -->
                        <div class="col text-end">
                            <button type="submit" name="btnRegistrasi" class="btn btn-primary">Registrasi <span class="fas fa-fw fa-sign-in-alt"></span></button>
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