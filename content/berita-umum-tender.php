<div class="container box_1170">
      <!--tab menu start -->
      <div class="row d-flex justify-content-center">
        <div class="col-lg-12 mb-5 mb-lg-0">
          <div class="container mt-3">
            <div class="shadow-lg p-4 mb-4" style="background-color: #FFCC00;">
              <!-- Nav tabs -->
              <ul class="nav nav-tabs" width="950">
                <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#home" style="color:black;">PENGUMUMAN</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#menu2" style="color:black;">BERITA</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#menu3" style="color:black;">SEBUTHARGA / TENDER</a>
                </li>
              </ul>

              <!-- START PENGUMUMAN -->

              <div class="tab-content" style="background-color:#ffffff; overflow:auto; height:300px; width:100%;">
                <div id="home" class="container tab-pane fade in"><br>
                  <h3>Pengumuman</h3>
                  <?php
                  $display_pengumuman = "SELECT * FROM pengumuman WHERE website_id = '$website_id' and trash!='1' ORDER by tarikh DESC";
                  $query_pengumuman = mysqli_query($conn_cpanel, $display_pengumuman);
                  while ($result_pengumuman = mysqli_fetch_array($query_pengumuman, MYSQLI_ASSOC)) {
                  ?>
                  <div class="alert alert-info border border-info">
                    <p><b>
                        <?php echo date("d/m/Y", strtotime($result_pengumuman['tarikh'])) ?>
                      </b></p>
                    <b><a target="_blank"
                        href="<?php echo $url;?>media_agensi/<?php echo $website_id ?>/hebahan_pengumuman/<?php echo $result_pengumuman['pautan'] ?>"
                        download class="alert-link">
                        <?php echo $result_pengumuman['tajuk']; ?>
                      </a></b><br>
                    <p style="color:grey;"> -
                      <?php echo $result_pengumuman['deskripsi']; ?>
                    </p>
                  </div>
                  <?php } ?>
                </div>
                <!-- END PENGUMUMAN -->

                <!-- START BERITA -->
                <div id="menu2" class="container tab-pane fade in"><br>
                  <h3>Berita</h3>
                  <?php
                  $display_berita = "SELECT * FROM berita WHERE website_id='$website_id' and trash!='1' ORDER by tarikh DESC";
                  $query_berita = mysqli_query($conn_cpanel, $display_berita);
                  while ($result_berita = mysqli_fetch_array($query_berita, MYSQLI_ASSOC)) {
                  ?>
                  <div class="alert alert-info border border-info">
                    <p><b>
                        <?php echo date("d/m/Y", strtotime($result_berita['tarikh'])) ?>
                      </b></p>
                    <b><a target="_blank"
                        href="<?php echo $url;?>media_agensi/<?php echo $website_id ?>/berita_aktiviti/<?php echo $result_berita['pautan'] ?>"
                        download class="alert-link">
                        <?php echo $result_berita['tajuk']; ?>
                      </a></b><br>
                    <p style="color:grey;"> -
                      <?php echo $result_berita['deskripsi']; ?>
                    </p>
                  </div>
                  <?php } ?>
                </div>
                <!-- end BERITA -->

                <!-- START SEBUT HARGA -->
                <div id="menu3" class="tab-pane fade in container-fluid"><br>
                  <h3>Sebutharga / Tender</h3>
                  <div class="row table-responsive">
                    <div class="alert alert-info border border-info">
                      <table class="table">

                        <thead class="thead-dark">
                          <tr class="d-flex">
                            <th class="col-1">No</th>
                            <th class="col-2">No Rujukan</th>
                            <th class="col-3">Keterangan</th>
                            <th class="col-2">Makluman</th>
                            <th class="col-2">Jenis Perolehan</th>
                            <th class="col-1">Tarikh Tutup</th>
                            <th class="col-1">Fail</th>
                          </tr>
                        </thead>

                        <tbody>
                          <?php
                          $no = 1;
                          $display_tender = "SELECT * FROM sebutharga WHERE website_id='$website_id' and trash!='1' ORDER BY tarikh DESC";
                          $query_tender = mysqli_query($conn_cpanel, $display_tender);
                          while ($result_sebut_harga = mysqli_fetch_array($query_tender, MYSQLI_ASSOC)) { ?>
                          <tr class="d-flex">
                            <td class="col-1">
                              <?php echo $no++; ?>
                            </td>
                            <td class="col-2">
                              <?php echo $result_sebut_harga['rujukan']; ?>
                            </td>
                            <td class="col-3">
                              <?php echo $result_sebut_harga['keterangan']; ?>
                            </td>
                            <td class="col-2">
                              <?php echo $result_sebut_harga['makluman']; ?>
                            </td>
                            <td class="col-2">
                              <?php echo $result_sebut_harga['perolehan']; ?>
                            </td>
                            <td class="col-1">
                              <?php echo date("d/m/Y", strtotime($result_sebut_harga['tarikh'])) ?>
                            </td>
                            <td class="col-1"><a style="color:red;"
                                href="<?php echo $url;?>media_agensi/<?php echo $website_id; ?>/sebutharga_tender/<?php echo $result_sebut_harga['fail']; ?>"
                                target="_blank" download>Klik Sini</a></td>
                          </tr>
                          <?php
                          } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
      <!--tab menu end -->
