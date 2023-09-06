<?php

$queryVideo = "SELECT * FROM video WHERE website_id = '$website_id' AND trash != 1 ORDER BY ai";



$videoData = mysqli_query($conn_cpanel, $queryVideo);

$count = 0;
$search1 = "youtube";
$search2 = "youtu.be";

?>

<section class="container my-5">
    <div class="d-block d-sm-none pb-3">
        <
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        <?php while ($video = mysqli_fetch_array($videoData, MYSQLI_ASSOC)) : ?>
            <div class="col">
                <div class="card h-100 rounded rounded-0">
                    <?php if ((strpos($video['pautan'], $search1)) || (strpos($video['pautan'], $search2)) !== false) : ?>
                        <iframe height="315" src="https://www.youtube.com/embed/<?= substr($video['pautan'], -11) ?>" allowfullscreen>
                        </iframe>
                        <div class="card-body rounded rounded-0">
                            <h5 class="card-title"><?= $video['tajuk'] ?></h5>
                        </div>
                    <?php else : ?>
                        <a href="<?= $video['pautan'] ?>"></a>
                        <h4>
                            <a href="<?= $video['pautan'] ?>">
                                <?= $video['tajuk'] ?>
                            </a>
                        </h4>
                    <?php endif ?>
                </div>
            </div>
        <?php endwhile ?>
    </div>
</section>