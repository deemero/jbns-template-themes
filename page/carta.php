<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <br>
                <br>
                <br>
                <?php
                // Fetch and display the images here
                $sql_carta = "SELECT * FROM carta WHERE website_id = '$website_id' AND menu = '$menu' AND sub = '$sub' and trash!='1' ";
                $query_carta = mysqli_query($conn_cpanel, $sql_carta);
                while ($result_carta = mysqli_fetch_array($query_carta, MYSQLI_ASSOC)) {
                ?>
                    <img class="img-fluid w-100" style="object-fit: cover;" src="<?php echo $url;?>media_agensi/<?php echo $result_carta['website_id']; ?>/carta_organisasi/<?php echo $result_carta['fail']; ?>">
                    <p></p>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
</body>
</html>
