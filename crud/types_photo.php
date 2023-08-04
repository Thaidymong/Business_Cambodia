<?php
    include("../admin2/connection.php");
?>
<?php
    if (isset($_POST['btn-submit-photo'])) {

        $type_photo  = $_POST['txt_types'];

        $photo       = $_FILES['txt_types_photo']['name'];

        $rand_photo  = rand(1, 9999).'-'. $photo;

        $path_upload = "../upload/".$rand_photo;

        move_uploaded_file($_FILES['txt_types_photo']['tmp_name'],$path_upload);

        $sql   = "INSERT INTO `tb_types_photo`(`photo`, `type`) VALUES ('$rand_photo','$type_photo')";

        $res   = $con->query($sql);

    }
    // update 
    if (isset($_POST['btn-update-photo'])) {

        $id   = $_POST['txt_id'];

        $type_photo  = $_POST['txt_types'];

        $photo       = $_FILES['txt_types_photo']['name'];

        $rand_photo  = rand(1, 9999) . '-' . $photo;

        $path_upload = "../upload/" . $rand_photo;

        move_uploaded_file($_FILES['txt_types_photo']['tmp_name'], $path_upload);

        $sql  = "UPDATE `tb_types_photo` SET `photo`='$rand_photo',`type`='$type_photo' WHERE id = $id ";

        $res  = $con->query($sql);
    }

    //delete 
    if (isset($_POST['btn-delete-photo'])) {

        $id   = $_POST['txt_id'];

        $sql  = "DELETE FROM `tb_types_photo` WHERE id = $id";

        $res  = $con->query($sql);
    }

?>