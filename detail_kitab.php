<?php 
    require_once 'connection.php';

    if (!isset($_SESSION['id_user'])) {
        header("Location: login.php");
        exit;
    }

    $id_kitab = $_GET['id_kitab'];

    $data_kitab = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM kitab WHERE id_kitab = '$id_kitab'"));
    

?>

<!DOCTYPE html>
<html lang="en"> <!--begin::Head-->

<head>
    <title>Detail Kitab - <?= $data_kitab['nama_kitab']; ?></title>
    <?php include_once 'include/head.php'; ?>
</head> <!--end::Head--> <!--begin::Body-->
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary"> <!--begin::App Wrapper-->
    <div class="app-wrapper"> <!--begin::Header-->
        <?php include_once 'include/navbar.php'; ?>
        <?php include_once 'include/sidebar.php'; ?>
        <!--begin::App Main-->
        <main class="app-main"> <!--begin::App Content Header-->
            <div class="app-content-header"> <!--begin::Container-->
                <div class="container-fluid"> <!--begin::Row-->
                    <div class="row">
                        <div class="col-sm-8">
                            <h3 class="mb-0"><i class="nav-icon fas fa-fw fa-book"></i> Detail Kitab - <?= $data_kitab['nama_kitab']; ?></h3>
                        </div>
                        <div class="col-sm-4">
                            <ol class="breadcrumb float-sm-end">
                                <li class="breadcrumb-item"><a href="kitab.php">Kitab</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Detail Kitab
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
                                            <label for="nama_kitab" class="form-label">Nama Kitab</label>
                                            <input type="text" class="form-control" id="nama_kitab" name="nama_kitab" required>
                                        </div>
                                        <div class="mb-3"> 
                                            <label for="pengarang" class="form-label">Pengarang</label>
                                            <input type="text" class="form-control" id="pengarang" name="pengarang" required>
                                        </div>
                                    </div> 
                                    <div class="card-footer pt-3">
                                        <button type="submit" name="btnTambahKitab" class="btn btn-primary">Submit</button>
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
    
</body><!--end::Body-->

</html>