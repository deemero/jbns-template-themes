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
    include("template/header.php"); 
  ?> 
  <section id="infokorp" class="Txtnopic">
    <div class="section-title">
      <?php include ("breadcrumbs.php")?>
      <h2 class="tajuk-besar"> <?php  echo $pagetitle; ?></h2>
    </div>

     <hr class="rounded">

    <div class="container">
      <?php
        $statementTxtPic = "SELECT * FROM text_nopic WHERE website_id = '$website_id' AND menu = '$pagetitles' AND sub = '$pagetitle' and trash!='1'";
        $test1_textno = mysqli_query($conn_cpanel, $statementTxtPic);
        while($getData1_textno = mysqli_fetch_array($test1_textno, MYSQLI_ASSOC))
      { ?> 


        <div class="nopic-body">
          <h2 class="text-center" style="border-bottom: 2px solid black;" ><?php echo $getData1_textno['tajuk']; ?></h2>
          <p class="nopic-desc"><?php echo nl2br($getData1_textno['deskripsi']);?></p>
            <?php if (!empty ($getData1_textno['link'])) { ?>
              <a href="<?php echo $getData1_textno['link']; ?>" target="_blank">Lihat selanjutnya...</a> 
            <?php } ?>
        </div>
      <?php }?>
    </div>
  </section>
  <?php include("template/footer.php"); ?>
  <button onclick="topFunction()" id="ToTop" title="Go to top"><i class="fa fa-arrow-up" aria-hidden="true"></i></button>
  <?php include("template/scripts.php"); ?>
  </body>
</html>