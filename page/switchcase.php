<?php
$page = $_GET["page"];
$page = filter_var($page, FILTER_SANITIZE_STRING);
$page = mysqli_real_escape_string($conn_cpanel,$page);

$menu = $_GET["menu"];
$menu = filter_var($menu, FILTER_SANITIZE_STRING);
$menu = mysqli_real_escape_string($conn_cpanel,$menu);

$sub = $_GET["sub"];
$sub = filter_var($sub, FILTER_SANITIZE_STRING);
$sub = mysqli_real_escape_string($conn_cpanel,$sub);
?>

<?php

switch ($page) {

  /**** page: text_pic****/
  
  case 'text_pic':
  $load = 'Text_Pic.php';
  break;
  
  /****page: text_nopic*****/
  //PERANAN //PERKHIDMATAN  
  case 'text_nopic':
  $load = 'Text_Nopic.php';
  break;


  /*****page: carta*****/
  //CARTA ORGANISASI **TEXT&GAMBAR
  case 'carta':
  $load = 'carta.php';
  break;

  /*****page: perutusan******/
  //PERUTUSAN PENGARAH  //TAKWIM JPKN
  case 'perutusan':
  $load = 'Perutusan.php';
  break;

  
 /*****page: penerbitan ********/
  //PENERBITAN **FILE/LINK 
  //ENAKMEN KERAJAAN ELEKTONIK   //PANDUAN PENGGUNA
  case 'penerbitan':
  $load = 'Penerbitan.php';
  break;


  /******page: video *******/
  //VIDEO **THUMBNAIL, LIST **FILE/LINK
  case 'video':
  $load = 'Video.php';
  break;

  /****** page: galeri ********/
  //GALERI/ALBUM **THUMBNAIL, LIST **FILE
  case 'galeri':
  $load = 'galeri.php';
  break;


  /***** page: direktori *******/
  //SENARAI NOMBOR TELEFON
  case 'direktori':
  $load = 'Direktori.php';
  break;

  //Default

  /***** page: maklum balas *******/
  //
  case 'maklum_balas':
  $load = 'maklumBalas.php';
  break;

  /***** page:notes *******/
  //
  case 'tinymce':
  $load = 'notes.php';
  break;

}
?>
