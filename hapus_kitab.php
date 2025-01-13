<body>
<?php 
	require 'connection.php';
 	include_once 'include/head.php';
 	include_once 'include/script.php';

	if (!isset($_SESSION['id_user'])) {
	    header("Location: login.php");
	    exit;
	}
	
	$id_kitab = $_GET['id_kitab'];

    $data_kitab = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM kitab WHERE id_kitab = '$id_kitab'"));
    $nama_kitab = $data_kitab['nama_kitab'];
	$delete_kitab = mysqli_query($conn, "DELETE FROM kitab WHERE id_kitab = '$id_kitab'");

	if ($delete_kitab) {
        $log_berhasil = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Kitab $nama_kitab berhasil dihapus!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

		echo "
	        <script>
	            Swal.fire({
	                icon: 'success',
	                title: 'Berhasil!',
	                text: '" . $nama_kitab . " berhasil dihapus!'
	            }).then((result) => {
	                if (result.isConfirmed) {
	                    window.location.href = 'kitab.php';
	                }
	            });
	        </script>
	    ";
	    exit;
	} else {
        $log_gagal = mysqli_query($conn, "INSERT INTO log VALUES ('', 'Kitab $nama_kitab gagal dihapus!', CURRENT_TIMESTAMP(), " . $dataUser['id_user'] . ")");

	    echo "
	        <script>
	            Swal.fire({
	                icon: 'error',
	                title: 'Gagal!',
	                text: '" . $nama_kitab . " gagal dihapus!'
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
