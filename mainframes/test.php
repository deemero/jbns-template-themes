<div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-4 text-uppercase text-primary">Jabatan Bendahari<span class="text-white font-weight-normal">Negeri Sabah</span></h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    
                    <a href="index.html" class="nav-item nav-link active ">Laman Utama</a>

<?php
//statement
$query = "SELECT * FROM menu_main WHERE website_id = '$website_id' and page=''and trash!='1' GROUP BY menu ORDER BY main_order asc";
//execute
$menu_data = mysqli_query($conn_cpanel, $query);
?>
<?php while ($menu = mysqli_fetch_array($menu_data, MYSQLI_ASSOC)) : ?>

                    <div class="nav-item dropdown">
                        <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown"><?php echo $menu['menu']; ?></a>

<?php
//statement for submenu
$query2 = "SELECT * FROM menu_main WHERE website_id = '$website_id' AND menu = '" . $menu['menu'] . "' AND sub!='' and trash!='1' order by sub_order asc ";
$sub_data = mysqli_query($conn_cpanel, $query2);
?> 

                        <div class="dropdown-menu rounded-0 m-0">

<?php
while ($sub = mysqli_fetch_array($sub_data, MYSQLI_ASSOC)) :
?>
                        
                            <a href="prutusan_bn.html" class="dropdown-item "><?php echo $sub['sub']; ?></a>
                            <!-- <a href="visi_misi.html" class="dropdown-item">Visi dan Misi</a>
                            <a href="fungsi.html" class="dropdown-item">Fungis Jabatan</a>
                            <a href="carta_org.html" class="dropdown-item">Carta Organisasi</a>
                            <a href="#" class="dropdown-item">Direktori</a>
                            <a href="piagam.html" class="dropdown-item">Piagam Pelanggan</a>
                            <a href="sejarah.html" class="dropdown-item">Sejarah JBNS</a> -->
<?php endwhile?>
                        </div>
                    </div>
<?php endwhile?>


                    <!-- <div class="nav-item dropdown">
                        <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown">Info Perakaunan</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="penyata.html" class="dropdown-item">Penyata Kewangan Negeri Sabah</a>
                            <a href="kod.html" class="dropdown-item">Kod - Kod Akaun</a>
                        </div>
                    </div>
                    <a href="perkhidmatan.html" class="nav-item nav-link">Perkhidmatan</a>
                    <a href="borang.html" class="nav-item nav-link">Borang JBNS</a>
                    <a href="lain_lain.html" class="nav-item nav-link">Lain - Lain</a> -->
                </div>

                <!-- <div class="input-group ml-auto d-none d-lg-flex" style="width: 100%; max-width: 300px;">
                    <input type="text" class="form-control border-0" placeholder="Keyword">
                    <div class="input-group-append">
                        <button class="input-group-text bg-primary text-dark border-0 px-3"><i
                                class="fa fa-search"></i></button>
                    </div>
                </div> -->
            </div>
        </nav>
    </div>


<!-- roland ans -->
