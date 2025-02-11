<?php 
    require_once 'connection.php';

    if (!isset($_SESSION['id_user'])) {
        header("Location: login.php");
        exit;
    }

    if ($dataUser['role'] == 'pengguna') {
        header("Location: index.php");
        exit;
    }

?>

<!DOCTYPE html>
<html lang="en"> <!--begin::Head-->

<head>
    <title>Tambah User</title>
    <?php include_once 'include/head.php'; ?>
</head> <!--end::Head--> <!--begin::Body-->
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
    <?php 
        if (isset($_POST['btnTambahUser'])) {
            $email = htmlspecialchars($_POST['email']);
            if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM user WHERE email = '$email'")) > 0) {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal!',
                            text: 'Email sudah digunakan!',
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

            $password_baru = $_POST['password_baru'];
            $ulangi_password_baru = $_POST['ulangi_password_baru'];
            if ($password_baru == $ulangi_password_baru) {
                $password_baru_hash = password_hash($password_baru, PASSWORD_DEFAULT);
            } else {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal!',
                            text: 'Password baru tidak sama dengan ulangi password baru!'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.history.back();
                            }
                        });
                    </script>
                ";
                exit;
            }
            
            $role = htmlspecialchars($_POST['role']);
            if ($role == '0') {
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal!',
                            text: 'Pilih role user!',
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

            $nama_lengkap = htmlspecialchars($_POST['nama_lengkap']);

            $foto = $_FILES['foto']['name'];
            if ($foto != '') {
                $acc_extension = array('png', 'jpg', 'jpeg', 'gif');
                $extension = explode('.', $foto);
                $extension_lower = strtolower(end($extension));
                $size = $_FILES['foto']['size'];
                $file_tmp = $_FILES['foto']['tmp_name'];     

                if ($size > 5253120) {
                    echo "
                        <script>
                            Swal.fire({
                                icon: 'error',
                                title: 'Gagal!',
                                text: 'Ukuran file terlalu besar!',
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

                if(!in_array($extension_lower, $acc_extension))
                {
                    echo "
                        <script>
                            Swal.fire({
                                icon: 'error',
                                title: 'Gagal!',
                                text: 'File yang di upload bukan gambar!',
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

                $foto = uniqid() . '_' . time() . '_' . $foto;
            } else {
                $foto = 'default.jpg';
            }

            $insert_user = mysqli_query($conn, "INSERT INTO user VALUES ('', '$nama_lengkap', '$email', '$password_baru_hash', '$role', '$foto', '1', CURRENT_TIMESTAMP())");

            if ($insert_user) {
                $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'User $email berhasil ditambahkan!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

                if ($foto != '') {
                    $file_tmp = $_FILES['foto']['tmp_name'];     
                    move_uploaded_file($file_tmp, 'assets/img/profiles/' . $foto);
                }

                echo "
                    <script>
                        Swal.fire({
                            icon: 'success',
                            title: 'Berhasil!',
                            text: 'User " . $email . " berhasil ditambahkan!'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'user.php';
                            }
                        });
                    </script>
                ";
                exit;
            } else {
                $log_gagal = mysqli_query($conn, "INSERT INTO log VALUES ('', 'User $email gagal ditambahkan!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal!',
                            text: 'User " . $email . " gagal ditambahkan!'
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
    <div class="app-wrapper"> <!--begin::Header-->
        <?php include_once 'include/navbar.php'; ?>
        <?php include_once 'include/sidebar.php'; ?>
        <!--begin::App Main-->
        <main class="app-main"> <!--begin::App Content Header-->
            <div class="app-content-header"> <!--begin::Container-->
                <div class="container-fluid"> <!--begin::Row-->
                    <div class="row">
                        <div class="col-sm-6">
                            <h3 class="mb-0">Tambah User</h3>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-end">
                                <li class="breadcrumb-item"><a href="user.php">User</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Tambah User
                                </li>
                            </ol>
                        </div>
                    </div> <!--end::Row-->
                </div> <!--end::Container-->
            </div>
            <div class="app-content"> <!--begin::Container-->
                <div class="container-fluid"> <!-- Info boxes -->
                    <div class="row">
                        <div class="col-6">
                            <div class="card card-primary card-outline mb-4">
                                <form method="post" enctype="multipart/form-data"> 
                                    <div class="card-body">
                                        <div class="mb-3"> 
                                            <label for="email" class="form-label">Email</label>
                                            <input type="text" class="form-control" id="email" name="email" required>
                                        </div>
                                        <div class="mb-3"> 
                                            <label for="password_baru" class="form-label">Password Baru</label> 
                                            <input type="password" class="form-control" id="password_baru" name="password_baru" required>
                                        </div>
                                        <div class="mb-3"> 
                                            <label for="ulangi_password_baru" class="form-label">Ulangi Password Baru</label> 
                                            <input type="password" class="form-control" id="ulangi_password_baru" name="ulangi_password_baru" required>
                                        </div>
                                        <div class="mb-3"> 
                                            <label for="role" class="form-label">Role</label> 
                                            <select class="form-select" id="role" name="role">
                                                <option value="0">--- Pilih Role ---</option>
                                                <option value="admin"><?= ucwords('admin'); ?></option>
                                                <option value="pengguna"><?= ucwords('pengguna'); ?></option>
                                            </select>
                                        </div>
                                        <div class="mb-3"> 
                                            <label for="nama_lengkap" class="form-label">Nama Lengkap</label> 
                                            <input type="text" class="form-control" id="nama_lengkap" name="nama_lengkap" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="foto" class="form-label">Foto</label>
                                            <div class="input-group">
                                                <input type="file" class="form-control" id="foto" name="foto" onchange="previewImage(event)"> 
                                                <label class="input-group-text" for="foto">Upload</label> 
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="card-footer pt-3">
                                        <button type="submit" name="btnTambahUser" class="btn btn-primary">Submit</button>
                                    </div> 
                                </form> <!--end::Form-->
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card card-primary card-outline mb-4">
                                <div class="card-body text-center">
                                    <h5 class="form-label">Preview Foto</h5>
                                    <div class="row justify-content-between">
                                        <div class="col">
                                            <img id="preview-img" class="img-fluid rounded-3" src="assets/img/profiles/default.jpg" alt="default.jpg">
                                        </div>
                                        <div class="col">
                                            <img id="preview-img-circle" class="img-fluid rounded-circle" src="assets/img/profiles/default.jpg" alt="default.jpg">
                                        </div>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--end::Container-->
            </div> <!--end::App Content-->
        </main> <!--end::App Main--> 
        <?php include_once 'include/footer.php'; ?>
    </div> <!--end::App Wrapper--> 
    <?php include_once 'include/script.php'; ?>
</body><!--end::Body-->

</html>