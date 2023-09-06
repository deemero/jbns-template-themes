<!DOCTYPE html>
<html lang="en">

<head>

<?php include "connection/db.php";?>

</head>

<body>
<?php
$pagetitles = $menu;
$pagetitle = $sub;
?>


    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="position-relative mb-3">
                        <img class="img-fluid w-100" src="" style="object-fit: cover;">
                        <div class="bg-white border border-top-0 p-4">
                            <div class="mb-3">
                            <?php
$statementTxtPic = "SELECT * FROM perutusan WHERE website_id = '" . $website_id . "' AND menu = '$pagetitles' AND sub = '" . $pagetitle . "' and trash!='1'";
$test1_perutusan = mysqli_query($conn_cpanel, $statementTxtPic);
while ($getData1_perutusan = mysqli_fetch_array($test1_perutusan, MYSQLI_ASSOC)) {
    ?>
                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                    href=""><?php echo $getData1_perutusan['tajuk']; ?></a>
                                <a class="text-body" href=""><?=date('l, F j, Y')?></a>
                            </div>

                            <h1 class="mb-3 text-secondary text-uppercase font-weight-bold"><?php echo $pagetitle; ?></h1>
                            <img class="img-fluid w-50 float-left mr-4 mb-2" src="<?php echo $url; ?>media_agensi/<?php echo $website_id; ?>/perutusan_sejarah/<?php echo $getData1_perutusan['gambar']; ?>" alt="" class="glightbox" >
                            <p><?php echo $getData1_perutusan['tajuk']; ?></p>
                            <p><?php echo nl2br($getData1_perutusan['deskripsi']); ?></p>

                        </div>
                        <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                            <div class="d-flex align-items-center">

                                <span></span>
                            </div>
                            <div class="d-flex align-items-center">
                                <span class="ml-3"><i class=""></i></span>
                                <span class="ml-3"><i class=""></i></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">

                </div>
            </div>
        </div>
        <?php }?>
    </div>
</body>
</html>