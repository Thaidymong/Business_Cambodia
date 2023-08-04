<?php
    include("../admin2/connection.php");
?>
<?php

    if(isset($_POST['btn_table_news'])){
       
        $type         = $_POST['txt_type'];

        $title        = $_POST['txt_title'];
        $date         = $_POST['txt_date'];
        $publisher    = $_POST['txt_publisher'];
        $detail1      = $_POST['txt_detail1'];
        $detail2      = $_POST['txt_detail2'];
        
        // file thumnail 
        $thimnail_card     = $_FILES['txt_thumnail_card']['name'];
        $thumnail_detail1  = $_FILES['txt_thumnail_detail1']['name'];
        $thumnail_detail2  = $_FILES['txt_thumnail_detail2']['name'];
        $thumnail_detail3  = $_FILES['txt_thumnail_detail3']['name'];
        $thumnail_detail4  = $_FILES['txt_thumnail_detail4']['name'];

        // file random
        $file1      = rand(1,1000).'-'.$thimnail_card;
        $file2      = rand(1,1000).'-'.$thumnail_detail1;
        $file3      = rand(1,1000).'-'.$thumnail_detail2;
        $file4      = rand(1,1000).'-'.$thumnail_detail3;
        $file5      = rand(1,1000).'-'.$thumnail_detail4;

        // path photo
        $path1      = "../image_news/".$file1;
        $path2      = "../image_news/".$file2;
        $path3      = "../image_news/".$file3;
        $path4      = "../image_news/".$file4;
        $path5      = "../image_news/".$file5;

        // move file upload
        move_uploaded_file($_FILES['txt_thumnail_card']['tmp_name'],$path1);
        move_uploaded_file($_FILES['txt_thumnail_detail1']['tmp_name'],$path2);
        move_uploaded_file($_FILES['txt_thumnail_detail2']['tmp_name'],$path3);
        move_uploaded_file($_FILES['txt_thumnail_detail3']['tmp_name'],$path4);
        move_uploaded_file($_FILES['txt_thumnail_detail4']['tmp_name'],$path5);

        $sql_news   ="INSERT INTO `tb_news`(`title`, `date`, `publisher`, `title_detail1`, `title_detail2`,
                    `thumnail_card`, `thumnail_detail1`, `thumnail_detail2`, `thumnail_detail3`, `thumnail_detail4`, 
                    `type`) VALUES ('$title','$date','$publisher','$detail1','$detail2','$file1','$file2','$file3',
                    '$file4','$file5','$type')";
        $result     = $con->query($sql_news);


    }

    // update
    if(isset($_POST['btn_update_table_news'])){

        $id           = $_POST['txt_id'];
        $type         = $_POST['txt_type'];

        $title        = $_POST['txt_title'];
        $date         = $_POST['txt_date'];
        $publisher    = $_POST['txt_publisher'];
        $detail1      = $_POST['txt_detail1'];
        $detail2      = $_POST['txt_detail2'];
        
        // file thumnail 
        $thimnail_card     = $_FILES['txt_thumnail_card']['name'];
        $thumnail_detail1  = $_FILES['txt_thumnail_detail1']['name'];
        $thumnail_detail2  = $_FILES['txt_thumnail_detail2']['name'];
        $thumnail_detail3  = $_FILES['txt_thumnail_detail3']['name'];
        $thumnail_detail4  = $_FILES['txt_thumnail_detail4']['name'];

        // file random
        $file1      = rand(1,1000).'-'.$thimnail_card;
        $file2      = rand(1,1000).'-'.$thumnail_detail1;
        $file3      = rand(1,1000).'-'.$thumnail_detail2;
        $file4      = rand(1,1000).'-'.$thumnail_detail3;
        $file5      = rand(1,1000).'-'.$thumnail_detail4;

        // path photo
        $path1      = "../image_news/".$file1;
        $path2      = "../image_news/".$file2;
        $path3      = "../image_news/".$file3;
        $path4      = "../image_news/".$file4;
        $path5      = "../image_news/".$file5;

        // move file upload
        move_uploaded_file($_FILES['txt_thumnail_card']['tmp_name'],$path1);
        move_uploaded_file($_FILES['txt_thumnail_detail1']['tmp_name'],$path2);
        move_uploaded_file($_FILES['txt_thumnail_detail2']['tmp_name'],$path3);
        move_uploaded_file($_FILES['txt_thumnail_detail3']['tmp_name'],$path4);
        move_uploaded_file($_FILES['txt_thumnail_detail4']['tmp_name'],$path5);

        $sql    = "UPDATE `tb_news` SET`title`='$title',`date`='$date',`publisher`='$publisher',
               `title_detail1`='$detail1',`title_detail2`='$detail2',`thumnail_card`=' $file1',
               `thumnail_detail1`=' $file2',`thumnail_detail2`=' $file3',`thumnail_detail3`=' $file4',
               `thumnail_detail4`=' $file5',`type`='$type' WHERE id = $id";

        $res   = $con->query($sql);

    }

    // delete 
    if(isset($_POST['btn_delete_table_news'])){

        $id   = $_POST['txt_id'];

        $sql  = "DELETE FROM `tb_news` WHERE id = $id";

        $res  = $con->query($sql);
        
    }

?>