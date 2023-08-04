<p class="mt-4">អត្ថបទប្រចាំថ្ងៃថ្មីៗ </p>
<h3>ដើម្បីបង្កើនចំណេះដឹងក្នុងការធ្វើអាជីវកម្ម</h3>
<?php
    $sql  = "SELECT * FROM `tb_banner` LIMIT 1";
    $res  = $con->query($sql);
    if ($res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {

            echo '
            <div class="big-photo">
                <img src="../upload_banner/'.$row['photo'].'" alt="">
                <small class="pl-5">'.$row['date'].'</small>
                <h2 class="pl-5">'.$row['title'].'</h2>
                <button class="p-2">'.$row['btnTiitle'].'</button>
            </div>
            ';
        }
    }
?>

<p class="mt-3">ពាណិជ្ជកម្ម</p>
<?php
    $sql  = "SELECT * FROM `tb_types_photo` WHERE type = 'ads' LIMIT 2";
    // $sql  = "SELECT * FROM `tb_types_photo` WHERE type = 'ads' ORDER BY ASC type LIMIT 2";
    $res  = $con->query($sql);
    if ($res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {

            echo '
                <img src="../upload/' . $row['photo'] . '" alt="" style="height: 250px;width:350px;">
            ';
        }
    }
?>