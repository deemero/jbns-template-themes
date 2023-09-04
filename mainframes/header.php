<?php 

$queryPengumuman = "SELECT * FROM pengumuman WHERE website_id = '$website_id' AND trash != '1' ORDER BY tarikh DESC";?>

<!-- Topbar Start -->
<div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center bg-dark px-lg-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-n2">
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#"><span><?= date('l, F j, Y') ?></span>
</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 text-right d-none d-md-block">
               
            </div>
        </div>
        <div class="row align-items-center bg-white py-3 px-lg-5">


        <div class="col-lg-4 d-none d-lg-block">
                <a href="index.html" class="navbar-brand p-0 ">
                    <h1 class="m-0 display-4 text-uppercase text-primary">Jabatan Bendahari <span class="text-secondary font-weight-normal">Negeri Sabah</span></h1>
                </a>
            </div>
            <div class="col-lg-8 text-center text-lg-right">
                <a href=""><img class="img-fluid" src="img/Logo jbns.png" alt=""></a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
