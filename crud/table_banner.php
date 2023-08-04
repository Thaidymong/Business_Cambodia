<?php
    include("../admin2/connection.php");
?>
<?php

    if(isset($_POST['btn-submit-banner'])){

        $date      = $_POST['txt_date'];

        $title     = $_POST['txt_title'];

        $btnTitle  = $_POST['txt_btn_title'];

        $photo     = $_FILES['txt_photo']['name'];

        $file      = rand(1,9999).'-'.$photo;
        
        $path      = "../upload_banner/".$file;
        
        move_uploaded_file($_FILES['txt_photo']['tmp_name'],$path);

        $data      = "INSERT INTO `tb_banner`(`date`, `title`, `btnTiitle`, `photo`) 
                      VALUES ('$date','$title','$btnTitle','$file')";

        $result    = $con->query($data);

    }

    // update 
    if(isset($_POST['btn-update-banner'])){

        $id        = $_POST['txt_id'];

        $date      = $_POST['txt_date'];

        $title     = $_POST['txt_title'];

        $btnTitle  = $_POST['txt_btn_title'];

        $photo     = $_FILES['txt_photo']['name'];

        $file      = rand(1,9999).'-'.$photo;
        
        $path      = "../upload_banner/".$file;
        
        move_uploaded_file($_FILES['txt_photo']['tmp_name'],$path);

        $data      = "UPDATE `tb_banner` SET `date`='$date',
                    `title`='$title',`btnTiitle`='$btnTitle',`photo`='$file' WHERE id = $id";

        $res       = $con->query($data);

    }

    // delete 
    if(isset($_POST['btn-delete-banner'])){

        $id     = $_POST['txt_id'];

        $data   = "DELETE FROM `tb_banner` WHERE id = $id";

        $res    = $con->query($data);
    }
?>

