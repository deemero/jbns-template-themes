<!doctype html>
<html lang="en">
<head>
    <?php include("connection/db.php"); ?>
</head>
<body>
<?php
$pagetitles = $menu;
$pagetitle = $sub;
$subTitle = ''; // Define $subTitle since it's used later in your code

?>

<section class="container my-5">
    <div class="d-block d-sm-none mb-4">
        <h1 style="text-align: center"><?= $subTitle ?></h1>
    </div>
    <div class="row">
        <?php
        $statementTxtPic = "SELECT * FROM text_nopic WHERE website_id = '$website_id' AND menu = '$pagetitles' AND sub = '$pagetitle' and trash!='1'";
        $test1_textno = mysqli_query($conn_cpanel, $statementTxtPic);
        while ($getData1_textno = mysqli_fetch_array($test1_textno, MYSQLI_ASSOC)) { ?>
            <div class="col-md-4 mb-4">
                <div class="card rounded rounded-0">
                    <div class="card-header fw-bold">
                        <?php echo $getData1_textno['tajuk']; ?>
                    </div>
                    <div class="card-body">
                        <?php echo nl2br($getData1_textno['deskripsi']); ?>
                    </div>
                    <!-- Add "Lihat Kandungan" button here -->
                    <a href="<?php echo $getData1_textno['link']; ?>" class="btn btn-outline-primary">Lihat Kandungan</a>
                </div>
            </div>
        <?php } ?>
    </div>
</section>

<?php
// Add missing else condition here if needed
?>

</body>
</html>
