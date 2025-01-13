<body>
<?php 
	require 'connection.php';
 	include_once 'include/head.php';
 	include_once 'include/script.php';

	if (!isset($_SESSION['id_user'])) {
	    header("Location: login.php");
	    exit;
	}
	
	$id_bab_kitab = $_GET['id_bab_kitab'];

    $data_bab_kitab = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM bab_kitab WHERE id_bab_kitab = '$id_bab_kitab'"));
    $judul_bab_kitab = $data_bab_kitab['judul_bab_kitab'];
	$delete_kitab = mysqli_query($conn, "DELETE FROM kitab WHERE id_bab_kitab = '$id_bab_kitab'");

	if ($delete_kitab) {
        $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Kitab $judul_bab_kitab berhasil dihapus!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

		echo "
	        <script>
	            Swal.fire({
	                icon: 'success',
	                title: 'Berhasil!',
	                text: '" . $judul_bab_kitab . " berhasil dihapus!'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    window.location.href = 'kitab.php';
	                }
	            });
	        </script>
	    ";
	    exit;
	} else {
        $log_gagal = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Kitab $judul_bab_kitab gagal dihapus!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

	    echo "
	        <script>
	            Swal.fire({
	                icon: 'error',
	                title: 'Gagal!',
	                text: '" . $judul_bab_kitab . " gagal dihapus!'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    window.location.href = 'kitab.php';
	                }
	            });
	        </script>
	    ";
	    exit;
	}

?>
</body>
