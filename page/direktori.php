<br><br>
<h1 style="text-align: center;">Direktori</h1>
<div class="container py-5">
  <div class="row py-5">
    <div class="col-lg-12 mx-auto">
      <div class="card rounded shadow border-0">
        <div class="card-body p-5 bg-white rounded">
    
          <div class="table-responsive">
            <table id="myTable" style="width:100%" class="table table-striped table-bordered">
              <thead>
                <tr>
                <th>#</th>
                                    <th>Gambar</th>
                                    <th>Nama</th>
                                    <th>Sambungan</th>
                                    <th>Nombor Telefon</th>
                                    <th>Jawatan</th>
                </tr>
              </thead>
              <tbody>

              <?php
                $counter = 1;
                $statement = "SELECT * FROM direktori WHERE website_id = '$website_id' AND menu = '$menu' AND sub = '$sub' and trash!='1' ORDER BY ai ASC";
                $query = mysqli_query($conn_cpanel, $statement);
                while ($displayDirektori = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
               ?>
                <tr>
                                        <th scope="row"><?php echo $counter++; ?></th>
                                        <td>
                                          <center>
                                           <img src="https://cpanel.sabah.gov.my/media_agensi/<?php echo $website_id ?>/direktori/<?php echo $displayDirektori['gambar']; ?>" class="img-fluid img-thumbnail"  alt="direktori"></td>
                                          </center>
                                          <td><?php echo $displayDirektori['nama'] ?></td>


                                        <td><?php echo $displayDirektori['sambungan'] ?></td>
                                        <td><?php echo $displayDirektori['notel'] ?></td>
                                        <td><?php echo $displayDirektori['bahagian'] ?></td>
                                    </tr>
                                <?php } ?>
                
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap4.min.css">

<script>
    $.noConflict();
    jQuery(document).ready(function($) {
        $('#myTable').DataTable({
          "language": {
          "lengthMenu": "Papar _MENU_ rekod",
          "zeroRecords": "Tiada padanan rekod yang dijumpai.",
          "info": "Paparan dari _START_ hingga _END_ dari _TOTAL_ rekod",
          "infoEmpty": "Paparan 0 hingga 0 dari 0 rekod",
          "infoFiltered": "(Ditapis dari jumlah _MAX_ rekod)",
          "paginate": {
            "first": "Pertama",
            "previous": "Sebelum",
            "next": "Seterusnya",
            "last": "Akhir"
          },
          "search": "Carian:"
        }
        });
    });
</script>
