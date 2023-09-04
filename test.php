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
                            <img src="<?php echo $url;?>media_agensi/<?php echo $website_id ?>/slider/<?php echo $result_slider_ba['gambar']; ?>" alt="Slider Image">
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


<!-- ====== SebutHarga/Tender Section ====== -->
<section class="why-us" data-aos="fade-up" data-aos-delay="250">
    <div class="container-fluid pt-5 mb-3">
        <div class="container">
            <div class="section-title">
                <h4 class="m-0 text-uppercase font-weight-bold">Tender/Sebut Harga</h4>
            </div>


  <?php
  $sql_tender = "SELECT * FROM sebutharga WHERE website_id = '$website_id' AND trash != '1' LIMIT 10";
  $query_tender = mysqli_query($conn_cpanel, $sql_tender);
  $num_rows1 = mysqli_num_rows($query_tender);

  if ($num_rows1 > 0) {
  ?>

    <div class="container">
      <div class="row table-responsive" style="border-style: solid; border-color: #66668A;">
        <div class="oliver_table col static" style="text-overflow: ellipsis; word-wrap: break-word; padding-left: 0px; padding-right: 0px;">
          <table class="table table-striped table-bordered justify-content-center" style="width: 100%;">
            <tr class="text-center">
              <th><p>Nombor</p></th>
              <th><p>Nombor Rujukan</p></th>
              <th><p>Keterangan</p></th>
              <th><p>Jenis Perolehan</p></th>
              <th><p>Tarikh Tutup</p></th>
              <th><p>Borang</p></th>
              <th><p>Makluman</p></th>
            </tr>
            
            <?php
            $counterz = 1;
            while ($result_tender = mysqli_fetch_array($query_tender, MYSQLI_ASSOC)) {
            ?>
              
              <tr>
                <td><p><center><?php echo $counterz++; ?></center></p></td>
                <td><p><?php echo $result_tender['rujukan']; ?></p></td>
                <td><p><?php echo $result_tender['keterangan']; ?></p></td>
                <td><p><?php echo $result_tender['perolehan']; ?></p></td>
                <td><p><?php echo $result_tender['tarikh']; ?></p></td>
                <td><a href="<?php echo $url; ?>media_agensi/jpkn/sebutharga_tender/<?php echo $result_tender['fail']; ?>" target="_blank" download><p>Klik Sini</p></a></td>
                <td><p><?php echo $result_tender['makluman']; ?></p></td>
              </tr>
            <?php } ?>
          </table>
        
        </div>
      </div>
       </div>
       
  <?php } ?>
</section>
<!------ End SebutHarga/Tende Section ------>