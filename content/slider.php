<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<?php
$count = 0;
$sql_slider_ba = "SELECT * FROM slider WHERE website_id='$website_id' and trash!='1' ";
$query_slider_ba = mysqli_query($conn_cpanel, $sql_slider_ba);
?>

<!-- Main News Slider Start -->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 px-0">
            <div class="owl-carousel main-carousel position-relative">
                <?php
$sql_slider_ba = "SELECT * FROM slider WHERE website_id='$website_id' and trash!='1' ";
$query_slider_ba = mysqli_query($conn_cpanel, $sql_slider_ba);

while ($result_slider_ba = mysqli_fetch_array($query_slider_ba, MYSQLI_ASSOC)) {
    ?>
                    <div class="position-relative overflow-hidden">
                        <div class="img-wrapper">
                            <img src="<?php echo $url; ?>media_agensi/<?php echo $website_id ?>/slider/<?php echo $result_slider_ba['gambar']; ?>" alt="Slider Image">
                        </div>
                    </div>
                <?php
}
?>
            </div>
        </div>
    </div>
</div>
<!-- Main News Slider End -->
