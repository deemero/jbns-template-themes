<?php

$queryPengumuman = "SELECT * FROM pengumuman WHERE website_id = '$website_id' AND trash != '1' ORDER BY tarikh DESC";
$mainData11 = "SELECT * FROM agensi WHERE website_id = '" . $website_id . "'";
$run_mainData11 = mysqli_query($conn_cpanel, $mainData11);
$getData11 = mysqli_fetch_array($run_mainData11, MYSQLI_ASSOC);

?>




<!-- Topbar Start -->
<div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center bg-dark px-lg-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-n2">
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#"><span><?=date('l, F j, Y')?></span>
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
        <?php
//statement logo
$querylogo = "SELECT * FROM agensi WHERE website_id = '$website_id' ";
$runlogo = mysqli_query($conn_cpanel, $querylogo);
$num_rows = mysqli_num_rows($runlogo);
//check data if empty
if ($num_rows > 0) {
    while ($displayLogo = mysqli_fetch_array($runlogo, MYSQLI_ASSOC)) {
        ?>
                <a href="index.php" class="navbar-brand p-0 ">
                <h1 class="m-0 display-5 text-uppercase  gradient-text" style="font-size: 2.7em;"><?php echo $displayLogo['nama']; ?></h1>
                </a>
            </div>
            <div class="col-lg-8 text-center text-lg-right">
                <a href=""><img class="img-fluid" src="<?php echo $url; ?>media_agensi/<?php echo $website_id ?>/maklumat_agensi/<?php echo $displayLogo['logo']; ?>" alt="" style="width: 150px; height: auto;"></a>
            </div>
            <style>
        /* Add gradient color to text */
        .gradient-text {
            background-image: linear-gradient(45deg, #ffcf07, #fe8116); /* Adjust the colors as needed */
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
    </style>
            <?php }
}?>
        </div>
    </div>
    <!-- Topbar End -->
    <?php

?>



