<head>
    <meta charset="utf-8">
      <?php

$statement3 = "SELECT * FROM agensi WHERE website_id = '$website_id' ";
$query3 = mysqli_query($conn_cpanel, $statement3);

$result3 = mysqli_fetch_array($query3, MYSQLI_ASSOC);
?>

    <title><?php echo $result3['nama']; ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    

      <!-- Site Icons -->
    <link rel="shortcut icon" href="<?php echo $url; ?>media_agensi/<?php echo $website_id; ?>/maklumat_agensi/<?php echo $result3['logo']; ?>" type="image/x-icon" />
    <link rel="apple-touch-icon" href="<?php echo $url; ?>media_agensi/<?php echo $website_id; ?>/maklumat_agensi/<?php echo $result3['logo']; ?>">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>
