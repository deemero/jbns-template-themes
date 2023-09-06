<!DOCTYPE html>
<html lang="en">
<head>
    <?php include "connection/db.php";?>
    <style>
        /* Add spacing between .fullAlbum containers */
        .fullAlbum {
            margin-bottom: 0px; /* Adjust the margin as needed for the desired spacing */
        }

        /* Make the fullAlbum container narrower */
        .fullAlbum .container {
            max-width: 70%; /* Adjust the max-width as needed */
        }

        /* Make the Owl Carousel smaller */
        .album-owl.owl-carousel {
            max-width: 100%; /* Adjust the max-width as needed */
        }
    </style>
</head>
<body>
    <?php
$pagetitle = $sub;
$pagetitles = $menu;
?>

    <hr class="rounded">

    <?php
$statementTxtPic = "SELECT * FROM galeri WHERE website_id = '$website_id' AND menu = '$pagetitles' AND sub = '$pagetitle' and trash!='1' GROUP BY tajuk ORDER BY tarikh DESC";
$test1_gel = mysqli_query($conn_cpanel, $statementTxtPic);
while ($getData1_gel = mysqli_fetch_array($test1_gel, MYSQLI_ASSOC)) {
    ?>
    <div class="fullAlbum container" style="background: white;">
        <h4 class="text-center" style="border-radius: 10px; margin-top: 10px; padding-top: 10px; padding-bottom: 10px; background:#FFCC00;"><?php echo $getData1_gel['tajuk']; ?></h4>
        <h5 style="text-align: justify; font-size: 12px; margin-left:10%; margin-right:10%; font-weight: bold"><?php echo nl2br($getData1_gel['deskripsi']); ?></h5>

        <div class="container album-owl geleri-slider owl-carousel owl-theme owl-loaded">
            <?php
$stimg = "SELECT * FROM galeri WHERE website_id = '$website_id' AND menu = '$pagetitles' AND sub = '$pagetitle' AND tajuk = '" . $getData1_gel['tajuk'] . "' and trash!='1'";
    $runst = mysqli_query($conn_cpanel, $stimg);
    while ($getData2_gel = mysqli_fetch_array($runst, MYSQLI_ASSOC)) {
        ?>
            <img src="<?php echo $url; ?>media_agensi/<?php echo $website_id; ?>/galeri/<?php echo $getData1_gel['tajuk']; ?>/<?php echo $getData2_gel['fail']; ?>" class="imgss d-block w-100 glightbox" alt="..." data-remote="<?php echo $url; ?>media_agensi/<?php echo $website_id; ?>/galeri/<?php echo $getData1_gel['tajuk']; ?>/<?php echo $getData2_gel['fail']; ?>">
            <?php }?>
        </div>
    </div>
    <?php }?>


</body>
</html>
