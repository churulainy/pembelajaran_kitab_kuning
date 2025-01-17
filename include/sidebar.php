<aside class="app-sidebar bg-primary-subtle shadow" data-bs-theme="dark">
    <div class="sidebar-brand"> 
        <a href="index.php" class="brand-link"> 
            <img src="assets/img/properties/logo.png" alt="Logo" class="brand-image rounded-circle">
            <span class="brand-text fw-light small">Sistem Pembelajaran<br> Kitab Kuning</span>
        </a> 
    </div>
    <div class="sidebar-wrapper">
        <nav class="mt-2"> <!--begin::Sidebar Menu-->
            <ul class="nav sidebar-menu flex-column" data-lte-toggle="treeview" role="menu" data-accordion="false">
                <li class="nav-item"> 
                    <a href="index.php" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/pembelajaran_kitab_kuning/index.php') ? 'active' : ''; ?>"> <i class="nav-icon fas fa-fw fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="nav-item"> 
                    <a href="kitab.php" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/pembelajaran_kitab_kuning/kitab.php') ? 'active' : ''; ?>"> <i class="nav-icon fas fa-fw fa-book"></i>
                        <p>Kitab</p>
                    </a> 
                </li>
                <li class="nav-item"> 
                    <a href="user.php" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/pembelajaran_kitab_kuning/user.php') ? 'active' : ''; ?>"> <i class="nav-icon fas fa-fw fa-users"></i>
                        <p>User</p>
                    </a> 
                </li>
                <hr class="sidebar-divider">
                <li class="nav-item"> 
                    <a href="log.php" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/pembelajaran_kitab_kuning/log.php') ? 'active' : ''; ?>"> <i class="nav-icon fas fa-fw fa-history"></i>
                        <p>Log</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div> 
</aside> 