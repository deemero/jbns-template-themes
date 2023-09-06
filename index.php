<!DOCTYPE html>
<?php include("connection/db.php"); ?>
<html lang="en">
<?php include('mainframes/head.php'); ?>

<body>


    <?php include('mainframes/header.php'); ?>
    <?php include('mainframes/navbar.php'); ?>
    <?php include('content/slider.php'); ?>

    <div class="container-fluid bg-primary-alternative bg-light-radial my-2 py-5">
        <center>
            <h1 class="text-warning fw-bolder">INFO TERKINI</h1>
            
        </center>
    </div>

    <?php include('content/umum.php'); ?>

    
    
    <?php include('content/berita-umum-tender.php'); ?>
    <br>
    <br>
    <br>
    <?php include('content/logos.php')?>
   
    
 

    <?php include('mainframes/footer.php'); ?>
    <?php include('mainframes/script.php'); ?>
</body>

</html>