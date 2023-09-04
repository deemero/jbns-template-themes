<div class="container-fluid">
    <div class="container">
       
        </div>
    </div>

    <?php
    $queryPengumuman = "SELECT * FROM pengumuman WHERE website_id = '$website_id' AND trash != '1' ORDER BY tarikh DESC";
    $runPengumuman = mysqli_query($conn_cpanel, $queryPengumuman);
    $num_rows = mysqli_num_rows($runPengumuman);
    ?>

    <div class="owl-carousel news-carousel">
        <?php
        if ($num_rows > 0) {
            while ($displayData = mysqli_fetch_array($runPengumuman, MYSQLI_ASSOC)) {
        ?>
                <div class="item">
                    <div class="position-relative mb-3">
                        <div class="bg-white border border-top-0 p-4">
                            <div class="mb-2">
                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href="">Pengumuman</a>
                                <a class="text-body" href=""><small><?php echo date("F d, Y", strtotime($displayData['tarikh'])); ?></small></a>
                            </div>
                            <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href=""><?php echo $displayData['tajuk']; ?></a>
                            <p class="m-0"><?php echo $displayData['deskripsi']; ?></p>
                        </div>
                    </div>
                </div>
        <?php
            }
        } else {
        ?>
            <div class="item">
                <p>No announcements available.</p>
            </div>
        <?php
        }
        ?>
    </div>
</div>

<script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            items: 1,
            loop: true,
            autoplay: true,
            autoplayTimeout: 5000, // Change the slide duration as needed
        });
    });
</script>
