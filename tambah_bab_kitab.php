<?php 
    require_once 'connection.php';

    if (!isset($_SESSION['id_user'])) {
        header("Location: login.php");
        exit;
    }

    $id_kitab = $_GET['id_kitab'];

    $data_kitab = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM kitab WHERE id_kitab = '$id_kitab'"));

    $result_urutan_bab = mysqli_query($conn, "SELECT urutan_bab FROM bab_kitab WHERE id_kitab = '$id_kitab' ORDER BY urutan_bab DESC LIMIT 1");

    if ($result_urutan_bab && mysqli_num_rows($result_urutan_bab) > 0) {
        $row = mysqli_fetch_assoc($result_urutan_bab);
        $urutan_bab_terakhir = $row['urutan_bab'];
    } else {
        $urutan_bab_terakhir = 0; // Atau nilai default lainnya
    }
?>

<!DOCTYPE html>
<html lang="en"> <!--begin::Head-->

<head>
    <title>Tambah Bab Kitab - <?= $data_kitab['nama_kitab']; ?></title>
    <?php include_once 'include/head.php'; ?>
</head> <!--end::Head--> <!--begin::Body-->
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
    <?php 
        if (isset($_POST['btnTambahBabKitab'])) {
            $judul_bab_kitab = htmlspecialchars($_POST['judul_bab_kitab']);
            $urutan_bab = htmlspecialchars($_POST['urutan_bab']);
            $isi_bab = $_POST['isi_bab'];
          
            $insert_kitab = mysqli_query($conn, "INSERT INTO bab_kitab VALUES ('', '$id_kitab', '$judul_bab_kitab', '$urutan_bab', '$isi_bab')");

            if ($insert_kitab) {
                $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Kitab $judul_bab_kitab berhasil ditambahkan!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

               

                echo "
                    <script>
                        Swal.fire({
                            icon: 'success',
                            title: 'Berhasil!',
                            text: 'Bab Kitab " . $judul_bab_kitab . " berhasil ditambahkan!'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = 'bab_kitab.php?id_kitab=" . $id_kitab . "';
                            }
                        });
                    </script>
                ";
                exit;
            } else {
                $log_gagal = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Kitab $judul_bab_kitab gagal ditambahkan!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");
                echo "
                    <script>
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal!',
                            text: 'Bab Kitab " . $judul_bab_kitab . " gagal ditambahkan!'
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
                            <h3 class="mb-0">Tambah Bab Kitab - <?= $data_kitab['nama_kitab']; ?></h3>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-end">
                                <li class="breadcrumb-item"><a href="kitab.php">Kitab</a></li>
                                <li class="breadcrumb-item"><a href="bab_kitab.php?id_kitab=<?= $data_kitab['id_kitab']; ?>">Bab Kitab</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Tambah Bab Kitab
                                </li>
                            </ol>
                        </div>
                    </div> <!--end::Row-->
                </div> <!--end::Container-->
            </div>
            <div class="app-content"> <!--begin::Container-->
                <div class="container-fluid"> <!-- Info boxes -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-primary card-outline mb-4">
                                <form method="post" enctype="multipart/form-data"> 
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <div class="mb-3"> 
                                                    <label for="judul_bab_kitab" class="form-label">Judul Bab Kitab</label>
                                                    <input type="text" class="form-control" id="judul_bab_kitab" name="judul_bab_kitab" required>
                                                </div>
                                            </div>
                                            <div class="col-3 col-sm-2">
                                                <div class="mb-3"> 
                                                    <label for="urutan_bab" class="form-label">Urutan Bab</label>
                                                    <input type="number" class="form-control" id="urutan_bab" value="<?= $urutan_bab_terakhir+1; ?>" name="urutan_bab" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="mb-3"> 
                                                    <label for="summernote" class="form-label">Isi Bab</label>
                                                    <textarea id="summernote" name="isi_bab" class="form-control" required></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="card-footer pt-3">
                                        <button type="submit" name="btnTambahBabKitab" class="btn btn-primary">Submit</button>
                                    </div> 
                                </form> <!--end::Form-->
                            </div>
                        </div>
                    </div>
                </div> <!--end::Container-->
            </div> <!--end::App Content-->
        </main> <!--end::App Main--> 
        <?php include_once 'include/footer.php'; ?>
    </div> <!--end::App Wrapper--> 
    <?php include_once 'include/script.php'; ?>

    <script>
        $(document).ready(function() {
          $('#summernote').summernote({
            height: 300,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']]
            ]
          });
        });
    </script>   
</body><!--end::Body-->

</html>