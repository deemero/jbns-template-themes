<!-- ======= Services Section ======= -->
<section id="testimonials" class="section-bg">
  <div class=" container" data-aos="fade-up">




         <?php
$sql_logo = "SELECT * FROM pautan_agensi WHERE website_id = '$website_id' AND url_agensi='jbn' and trash!='0' ";
$query_logo = mysqli_query($conn_cpanel, $sql_logo);
$num_rows1 = mysqli_num_rows($query_logo);
?>

        <?php
if ($num_rows1 > 0) {
    ?>

         <div class="row">
            <?php
while ($result_logo = mysqli_fetch_array($query_logo, MYSQLI_ASSOC)) {
        $checkifempty_logo = $result_logo;
        ?>
            <div class="col">
               <div class="enlarge-image pb-3 text-center">
                     <i><a href="<?php echo $result_logo['pautan']; ?>"><img src="<?php echo $url; ?>media_agensi/<?php echo $website_id ?>/pautan_agensi/<?php echo $result_logo['logo'] ?>" title="<?php echo $result_logo['tajuk'] ?>" style="width: 100px; height: 100px;"></a></i>
               </div>
            </div>
            <?php }?>
         </div>

         <?php } else {?>

         <div class="container">
            <p style="padding-top: 50px; text-align: center;">Tiada Maklumat Buat Masa Sekarang.</p>
          </div>
    <?php }?>
  </div>
</section><!-- End Services Section -->