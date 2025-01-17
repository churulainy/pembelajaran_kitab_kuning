<?php 
    require_once 'connection.php';

    if (!isset($_SESSION['id_user'])) {
        header("Location: login.php");
        exit;
    }

    $kitab = mysqli_query($conn, "SELECT * FROM kitab ORDER BY nama_kitab ASC");
?>

<!DOCTYPE html>
<html lang="en"> <!--begin::Head-->

<head>
    <title>Kitab</title>
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
                        <div class="col-sm-6">
                            <h3 class="mb-0"><i class="nav-icon fas fa-fw fa-book"></i> Kitab</h3>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-end">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Kitab
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
                                <?php if ($dataUser['role'] == 'admin'): ?>
                                    <a href="tambah_kitab.php" class="mb-3 btn btn-primary"><i class="fas fa-fw fa-plus"></i> Tambah Kitab</a>
                                <?php endif ?>
                                <table class="table table-bordered" id="table_id">
                                    <thead class="table-dark">
                                        <tr>
                                            <th class="text-center align-middle">No.</th>
                                            <th class="text-center align-middle">Nama Kitab</th>
                                            <th class="text-center align-middle">Pengarang</th>
                                            <th class="text-center align-middle">Jumlah Dibaca</th>
                                            <th class="text-center align-middle">Tanggal Dibuat</th>
                                            <th class="text-center align-middle">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($kitab as $dk): ?>
                                            <tr>
                                                <td class="text-center align-middle"><?= $i++; ?>.</td>
                                                <td class="align-middle"><?= $dk['nama_kitab']; ?></td>
                                                <td class="align-middle"><?= $dk['pengarang']; ?></td>
                                                <td class="align-middle"><?= $dk['jumlah_dibaca']; ?></td>
                                                <td class="align-middle"><?= date('d-m-Y, H:i:s', strtotime($dk['dibuat_pada'])); ?></td>
                                                <td class="text-center align-middle">
                                                    <a href="bab_kitab.php?id_kitab=<?= $dk['id_kitab']; ?>" class="m-1 btn btn-primary"><i class="fas fa-fw fa-bars"></i> Bab Kitab</a>
                                                    <?php if ($dataUser['role'] == 'admin'): ?>
                                                        <a href="ubah_kitab.php?id_kitab=<?= $dk['id_kitab']; ?>" class="m-1 btn btn-success"><i class="fas fa-fw fa-edit">
                                                        </i> Ubah</a>
                                                        <a href="hapus_kitab.php?id_kitab=<?= $dk['id_kitab']; ?>" data-nama="<?= $dk['nama_kitab']; ?>" class="m-1 btn btn-danger btn-delete"><i class="fas fa-fw fa-trash"></i> Hapus</a>
                                                    <?php endif ?>
                                                </td>
                                            </tr>
                                        <?php endforeach ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div> <!-- /.row --> <!--begin::Row-->
                </div> <!--end::Container-->
            </div> <!--end::App Content-->
        </main> <!--end::App Main--> 
        <?php include_once 'include/footer.php'; ?>
    </div> <!--end::App Wrapper--> 
    <?php include_once 'include/script.php'; ?>
</body><!--end::Body-->

</html>