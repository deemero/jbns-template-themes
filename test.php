


<!doctype html>
<html lang="en">
<head>
    <?php include("functions/url-is.php"); ?>
    
   

</head>
<body>
<?php
$subTitle = ''; // Define $subTitle since it's used later in your code
$displayedTitles = [];
?>

<section class="container my-5">
    <div class="d-block d-sm-none pb-3">
        <h1 style="text-align: center"><?= $subTitle ?></h1>
    </div>
    <div class="row">
        <?php
        $menu = $_GET['menu'];
        $menu = filter_var($menu, FILTER_SANITIZE_STRING);
        $menu = mysqli_real_escape_string($conn_cpanel, $menu);

        $sub = $_GET['sub'];
        $sub = filter_var($sub, FILTER_SANITIZE_STRING);
        $sub = mysqli_real_escape_string($conn_cpanel, $sub);

        $sql = "SELECT tajuk, tarikh, GROUP_CONCAT(fail) AS fail_grouped FROM galeri WHERE website_id = '$website_id' AND menu = '$menu' AND sub = '$sub' AND trash!='1' GROUP BY tajuk, tarikh";
        $query = mysqli_query($conn_cpanel, $sql);

        while ($result = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
            $fail_grouped = explode(',', $result['fail_grouped']);
            $first_fail = $fail_grouped[0];
            ?>
            <div class="col-12 col-md-4">
                <div class="card gallery-card">
                    <img src="<?= $url . "media_agensi/" . $website_id . "/galeri/" . $result['tajuk'] . "/" . $first_fail ?>" alt="<?= $result['tajuk'] ?>">
                    <div class="card-body gallery-caption">
                        <h5 class="card-title"><?= $result['tajuk'] ?></h5>
                        <p class="card-text"><?= date("F d, Y", strtotime($result['tarikh'])) ?></p>
                    </div>
                    <div class="gallery-button">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#galleryModal<?= $result['tajuk'] ?> "  >View Images</button>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="galleryModal<?= $result['tajuk'] ?>" tabindex="-1" role="dialog" aria-labelledby="galleryModalLabel<?= $result['tajuk'] ?>" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="galleryModalLabel<?= $result['tajuk'] ?>">Gallery: <?= $result['tajuk'] ?></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body gallery-modal">
                            <?php foreach ($fail_grouped as $fail) { ?>
                                <img src="<?= $url . "media_agensi/" . $website_id . "/galeri/" . $result['tajuk'] . "/" . $fail ?>" alt="<?= $result['tajuk'] ?>">
                            <?php } ?>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
</section>

</body>
</html>
