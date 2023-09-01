


   
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<?php
$count = 0;
$sql_slider_ba = "SELECT * FROM slider WHERE website_id='$website_id' and trash!='1' ";
$query_slider_ba = mysqli_query($conn_cpanel, $sql_slider_ba);
?>

<div class="w3-container w3-center">
    <div class="row">
        <div class="col-md-2">

        </div>
        <div class="col-md-8">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <?php
                    while ($result_slider_indicator = mysqli_fetch_array($query_slider_ba, MYSQLI_ASSOC)) {
                        if ($count == 0) { ?>
                    <li data-target="#myCarousel" data-slide-to="<?php echo strval($count); ?>" class="active"></li>
                    <?php } else { ?>
                    <li data-target="#myCarousel" data-slide-to="<?php echo strval($count); ?>"></li>
                    <?php }
                        $count++;
                    } ?>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <?php
                    $sql_slider = "SELECT * FROM slider WHERE website_id='$website_id' and trash!='1'  LIMIT 1";
                    $query_slider = mysqli_query($conn_cpanel, $sql_slider);
                    $result_slider = mysqli_fetch_array($query_slider, MYSQLI_ASSOC) ?>
                    <div class="item active">
                        <a target="blank" href="<?php echo $result_slider['link']; ?>">
                            <img class="d-block w-100"
                                style="width:70%; height: 500px; margin-left: auto; margin-right: auto"
                                src="<?php echo $url;?>media_agensi/<?php echo $website_id ?>/slider/<?php echo $result_slider['gambar'] ?>">
                        </a>
                    </div>

                    <?php
                    $sql_slider_sub = "SELECT * FROM slider WHERE website_id='$website_id' and trash!='1' ORDER BY ai ASC LIMIT 100 OFFSET 1 ";
                    $query_slider_sub = mysqli_query($conn_cpanel, $sql_slider_sub);
                    while ($result_slider_sub = mysqli_fetch_array($query_slider_sub, MYSQLI_ASSOC)) { ?>
                    <div class="item">
                        <a target="blank" href="<?php echo $result_slider_sub['link']; ?>">
                            <img class="d-block w-100"
                                style="width:70%; height: 500px; margin-left: auto; margin-right: auto"
                                src="<?php echo $url;?>media_agensi/<?php echo $website_id ?>/slider/<?php echo $result_slider_sub['gambar'] ?>">
                        </a>
                    </div>
                    <?php } ?>
                </div>

                <!-- Left and right controls -->
                <a class="float-left" href="#myCarousel" data-slide="prev">
                    <span style="background-color:skyblue; color:black; font-size:35px; position: absolute; top:50%; left: -27px;" class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="float-right" href="#myCarousel" data-slide="next">
                    <span style="background-color:skyblue; color:black; font-size:35px; position: absolute; top:50%; right: -27px;" class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
        <div class="col-md-2">

        </div>
    </div>
</div>