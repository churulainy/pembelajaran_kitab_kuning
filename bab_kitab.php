<?php 
    require_once 'connection.php';

    if (!isset($_SESSION['id_user'])) {
        header("Location: login.php");
        exit;
    }

    $id_kitab = $_GET['id_kitab'];

    $data_kitab = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM kitab WHERE id_kitab = '$id_kitab'"));
    
    $bab_kitab = mysqli_query($conn, "SELECT * FROM bab_kitab WHERE id_kitab = '$id_kitab' ORDER BY urutan_bab ASC"); 
?>

<!DOCTYPE html>
<html lang="en"> <!--begin::Head-->

<head>
    <title>Bab Kitab - <?= $data_kitab['nama_kitab']; ?></title>
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
                            <h3 class="mb-0"><i class="nav-icon fas fa-fw fa-book"></i> Bab Kitab - <?= $data_kitab['nama_kitab']; ?></h3>
                        </div>
                        <div class="col-sm-4">
                            <ol class="breadcrumb float-sm-end">
                                <li class="breadcrumb-item"><a href="kitab.php">Kitab</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Bab Kitab
                                </li>
                            </ol>
                        </div>
                    </div> <!--end::Row-->
                </div> <!--end::Container-->
            </div>
            <div class="app-content"> <!--begin::Container-->
                <div class="container-fluid"> <!-- Info boxes -->
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive p-2">
                                <a href="tambah_bab_kitab.php?id_kitab=<?= $id_kitab; ?>" class="mb-3 btn btn-primary"><i class="fas fa-fw fa-plus"></i> Tambah Bab Kitab</a>
                                <table class="table table-bordered" id="table_id">
                                    <thead class="table-dark">
                                        <tr>
                                            <th class="text-center align-middle">No.</th>
                                            <th class="text-center align-middle">Judul Bab Kitab</th>
                                            <?php if ($dataUser['role'] == 'admin'): ?>
                                                <th class="text-center align-middle">Urutan Bab</th>
                                            <?php endif ?>
                                            <th class="text-center align-middle">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($bab_kitab as $dbk): ?>
                                            <tr>
                                                <td class="text-center align-middle"><?= $i++; ?>.</td>
                                                <td class="align-middle"><?= $dbk['judul_bab_kitab']; ?></td>
                                                <?php if ($dataUser['role'] == 'admin'): ?>
                                                    <td class="align-middle"><?= $dbk['urutan_bab']; ?></td>
                                                <?php endif ?>
                                                <td class="text-center align-middle">
                                                    <a href="isi_bab.php?id_bab_kitab=<?= $dbk['id_bab_kitab']; ?>" class="m-1 btn btn-primary"><i class="fas fa-fw fa-bars"></i> Isi Bab</a>
                                                    <?php if ($dataUser['role'] == 'admin'): ?>
                                                        <a href="ubah_bab_kitab.php?id_bab_kitab=<?= $dbk['id_bab_kitab']; ?>" class="m-1 btn btn-success"><i class="fas fa-fw fa-edit"></i> Ubah Bab</a>
                                                        <a href="hapus_bab_kitab.php?id_bab_kitab=<?= $dbk['id_bab_kitab']; ?>" data-nama="<?= $dbk['judul_bab_kitab']; ?>" class="m-1 btn btn-danger btn-delete"><i class="fas fa-fw fa-trash"></i> Hapus Bab</a>
                                                    <?php endif ?>
                                                </td>
                                            </tr>
                                        <?php endforeach ?>
                                    </tbody>
                                </table>
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