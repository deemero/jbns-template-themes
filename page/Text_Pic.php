<!doctype html>
<html lang="en">
  <head>
    <?php include("template/links.php"); ?>
    <?php include ("connection/db.php"); ?>
  </head>
  <body>
	 <?php 	
	 $pagetitles = $menu;  
	 $pagetitle = $sub;
	 include('template/header.php'); 
	 ?> 
  <section id="infokorp">
    <div class="section-title">
      <?php include("breadcrumbs.php")?>
      <h2 class=" tajuk-besar"> <?php  echo $pagetitle; ?></h2>
    </div>

    <hr class="rounded">

    <div class="txtPic container-fluid" >
    <?php
      $statementTxtPic = "SELECT * FROM text_pic WHERE website_id = '$website_id' AND menu = '$pagetitles' AND sub = '$pagetitle' and trash!='1'";
      $test1_text = mysqli_query($conn_cpanel, $statementTxtPic);
      while($getData1_text = mysqli_fetch_array($test1_text, MYSQLI_ASSOC))
          {
    ?>
      <div class="contents-textpic row justify-content-center">
        <div class="img-sej col-xs-6 col-sm-6 col-md-6"  >
        <?php 
          $KalauPDF = array('pdf');
          $ext = pathinfo($getData1_text['gambar'], PATHINFO_EXTENSION);
          // echo pathinfo($getData1['gambar'], PATHINFO_EXTENSION);
          if (in_array($ext, $KalauPDF)) {?>
            <div class="embed-responsive embed-responsive-16by9" style="margin-bottom: 30px;">
              <iframe  class="embed-responsive-item" src="<?php echo $url; ?>media_agensi/<?php echo $website_id;?>/text_pic/<?php echo $getData1_text['gambar']; ?>" frameborder="0" style="overflow:hidden; display:block; position: absolute; height: 100%; width: 100%"></iframe>
            </div>

          <?php    
          } else{ ?>
            <img src="<?php echo $url; ?>media_agensi/<?php echo $website_id;?>/text_pic/<?php echo $getData1_text['gambar']; ?>" alt="<?php echo $getData1_text['tajuk']; ?> " class="glightbox">
          <?php } ?>
        </div>

        <div class=" desc-sej col-xs-6 col-sm-6 col-md-6">
          <h2><?php echo $getData1_text['tajuk']; ?></h2>
          <h5><?php echo nl2br($getData1_text['deskripsi']); ?></h5>
            <?php if (!empty ($getData1_text['link'])) { ?>
              <a href="<?php echo $getData1_text['link']; ?>" target="_blank">Lihat selanjutnya...</a> 
            <?php } ?>
            
        </div>
        
        </div>
    <?php } ?>
    </div>
  </section>
  <?php include("template/footer.php"); ?>
  <button onclick="topFunction()" id="ToTop" title="Go to top"><i class="fa fa-arrow-up" aria-hidden="true"></i></button>
  <?php include("template/scripts.php"); ?>
  </body>
</html>

