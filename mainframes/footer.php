<!-- Footer one start  -->
<div class="container-fluid bg-dark pt-5 px-sm-3 px-md-5 mt-5">
  <div class="container" style="text-align: center;">

    <?php
$sql_agensi = "SELECT * FROM agensi WHERE website_id = '$website_id'";
$query_agensi = mysqli_query($conn_cpanel, $sql_agensi);
$result_agensi = mysqli_fetch_array($query_agensi, MYSQLI_ASSOC);
?>
    <div class="row py-4">

      <?php if (!empty($result_agensi['lokasi'])) {?>
        <iframe src="<?php echo $result_agensi['lokasi'] ?>" class="container-fluid" width="100%" height="150" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
      <?php }?>

      <!-- Hubungi Kami start -->
      <div class="col-lg-3 col-md-6 mb-5" style="margin-top: 20px;">
        <h5 class="mb-4 text-white text-uppercase font-weight-bold">Alamat</h5>
        <p>
          <?php echo nl2br($result_agensi['alamat']); ?>
        </p>
      </div>
      <!-- Hubungi Kami End -->

      <!-- Alamat Start -->
      <div class="col-lg-3 col-md-6 mb-5" style="margin-top: 20px;">
        <h5 class="mb-4 text-white text-uppercase font-weight-bold">Hubungi Kami</h5>
        <p>No Tel: <?php echo $result_agensi['notel']; ?><br>No Faks: <?php echo $result_agensi['nofaks']; ?></p>
      </div>
      <!-- Alamat Start -->

      <!-- Waktu Pejabat Start -->
      <div class="col-lg-3 col-md-6 mb-5" style="margin-top: 20px;">
        <h5 class="mb-4 text-white text-uppercase font-weight-bold">Waktu Pejabat</h5>
        <p>
          <?php echo $result_agensi['hari_bekerja']; ?><br>
          <?php echo $result_agensi['masa_bekerja']; ?><br>
          <?php echo $result_agensi['waktu_rehat']; ?><br>
          <?php echo $result_agensi['cuti']; ?>
        </p>
      </div>
      <!-- Waktu Pejabat End-->

      <!-- Alamat start-->
      <div class="col-lg-3 col-md-6 mb-5" style="margin-top: 20px;">
        <h5 class="mb-4 text-white text-uppercase font-weight-bold">Email</h5>
        <p>
          <?php echo $result_agensi['emel']; ?>
        </p>
      </div>
      <!-- Alamat End-->
    </div>
  </div>
</div>
<!-- Footer one End  -->


<!-- Footer Two start  -->
<style>
  .centered-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 20px; /* Adjust this value to control the top margin */
    margin-bottom: 20px; /* Adjust this value to control the bottom margin */
  }
</style>

<div class="row justify-content-center text-center">
  <div class="col-md-7">

    <?php
$sql_jum = "SELECT pelawat FROM counter WHERE website_id = '$website_id'";
$query_jum = mysqli_query($conn_cpanel, $sql_jum);
$result_jum = mysqli_fetch_array($query_jum, MYSQLI_ASSOC);

$counterz = $result_jum['pelawat'] + 1;
$sql_up = "UPDATE counter SET pelawat = '$counterz' WHERE website_id = '$website_id'";
$query_up = mysqli_query($conn_cpanel, $sql_up);
?>


    <div class="centered-content">
      <img src="assets/SMJ.png" alt="" style="width:190px; height:100px; object-fit: scale-down;"><br><br>
      <p style="font-size:16px;"><b style="color:black;">"SABAH MAJU JAYA"</b></p>
      <p style="text-align: center;"> Jumlah Pelawat : <!-- <?php echo number_format($result_jum['pelawat']); ?> --> 12314 Orang </p>
    </div>

    <?php
$s01 = "SELECT * FROM agensi WHERE website_id = '$website_id' ";
date_default_timezone_set('Asia/Kuching');
$q02 = mysqli_query($conn_cpanel, $s01);
$r03 = mysqli_fetch_array($q02, MYSQLI_ASSOC);?>


    <p class="copyright">&copy; Hak Cipta @ (JPKN)-BAYU <?php echo date("Y-m-d h:i:sa") ?> (<?php echo $r03['website_id'] ?>)-<?php echo $r03['nama'] ?></p>
    <div class="credits">
    </div>
  </div>
</div>

<!-- Footer Two End  -->
