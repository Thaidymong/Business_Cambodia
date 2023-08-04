
<?php 
   
   $con = new mysqli("localhost","root","","project_business") or die("Error Connection...!");

   if(isset($_POST['btn_submit'])){
      $typeNews      = $_POST['txt_type_photo'];
      $date          = $_POST['txt_date'];
      $title         = $_POST['txt_title'];
      $publisher     = $_POST['txt_publisher'];
      $titleDetail   = $_POST['txt_title_detail'];
      $titleDes1     = $_POST['txt_description1'];
      $titleDes2     = $_POST['txt_description2'];

      // file thumnail
      $thumnailSmall = $_FILES['txt_thumnail_samll']['name'];
      $thumnailDet1  = $_FILES['txt_thumnail_detail1']['name'];
      $thumnailDet2  = $_FILES['txt_thumnail_detail2']['name'];
      $thumnailDet3  = $_FILES['txt_thumnail_detail3']['name'];
      $thumnailDet4  = $_FILES['txt_thumnail_detail4']['name'];

      $file1         = rand(1,999).'-'.$thumnailSmall;
      $file2         = rand(1,999).'-'.$thumnailDet1;
      $file3         = rand(1,999).'-'.$thumnailDet2;
      $file4         = rand(1,999).'-'.$thumnailDet3;
      $file5         = rand(1,999).'-'.$thumnailDet4;

      $path1         = "./upload/".$file1;
      $path2         = "./upload/".$file2;
      $path3         = "./upload/".$file3;
      $path4         = "./upload/".$file4;
      $path5         = "./upload/".$file5;

      $sql = "INSERT INTO `tb_news`(`date`, `title`, `publisher`, `title_detail`, `description1`, `description2`, `thumnail_small`, `thumail_detail1`, `thumail_detail2`, `thumail_detail3`, `thumail_detail4`, `type`, `status`)VALUES ('".$date."','".$title."','".$publisher."','".$titleDetail."','".$titleDes1."','".$titleDes2."','".$file1."','".$file2."','".$file3."','".$file4."','".$file5."','".$typeNews."','0')";

      $res = $con->query($sql);

      if($res===true){
        move_uploaded_file($_FILES['txt_thumnail_samll']['tmp_name'],$path1);
        move_uploaded_file($_FILES['txt_thumnail_detail1']['tmp_name'],$path2);
        move_uploaded_file($_FILES['txt_thumnail_detail2']['tmp_name'],$path3);
        move_uploaded_file($_FILES['txt_thumnail_detail3']['tmp_name'],$path4);
        move_uploaded_file($_FILES['txt_thumnail_detail4']['tmp_name'],$path5);

        header("Location: news.php");
      }

   }
  

   // Delete Data
   if(isset($_POST['btn-delete'])){
    $id  = $_POST['txt_id'];
    $sql = "DELETE FROM `tb_news` WHERE id=$id";
    $res = $con->query($sql);
    if($res===true){
        header("Location: news.php");
    }
   }

   // Update Data

   if(isset($_POST['btn-update'])){
      $id = $_POST['txt_id'];
      $typeNews      = $_POST['txt_type_photo'];
      $date          = $_POST['txt_date'];
      $title         = $_POST['txt_title'];
      $publisher     = $_POST['txt_publisher'];
      $titleDetail   = $_POST['txt_title_detail'];
      $titleDes1     = $_POST['txt_description1'];
      $titleDes2     = $_POST['txt_description2'];

      // file thumnail
      $thumnailSmall = $_FILES['txt_thumnail_samll']['name'];
      $thumnailDet1  = $_FILES['txt_thumnail_detail1']['name'];
      $thumnailDet2  = $_FILES['txt_thumnail_detail2']['name'];
      $thumnailDet3  = $_FILES['txt_thumnail_detail3']['name'];
      $thumnailDet4  = $_FILES['txt_thumnail_detail4']['name'];

      if(empty($thumnailSmall)){
      $thumnailSmall = $_POST['txt_thumnail_samll'];
      $file1         = $thumnailSmall;
      }else{
        $file1       = rand(1,999).'-'.$thumnailSmall;
      }

      if(empty($thumnailDet1)){
      $thumnailDet1  = $_POST['txt_thumnail_detail1'];
      $file2         = $thumnailDet1;
      }else{
      $file2         = rand(1,999).'-'.$thumnailDet1;
      }

      if(empty($thumnailDet2)){
      $thumnailDet2  = $_POST['txt_thumnail_detail2'];
      $file3         = $thumnailDet2;
      }else{
      $file3         = rand(1,999).'-'.$thumnailDet2;
      }

      if(empty($thumnailDet3)){
      $thumnailDet3  = $_POST['txt_thumnail_detail3'];
      $file4         = $thumnailDet3;
      }else{
      $file4         = rand(1,999).'-'.$thumnailDet3;
      } 

      if(empty($thumnailDet4)){
      $thumnailDet4  = $_POST['txt_thumnail_detail4'];
      $file5         = $thumnailDet4;
      }else{
      $file5         = rand(1,999).'-'.$thumnailDet4;
      }


      $path1         = "./upload/".$file1;
      $path2         = "./upload/".$file2;
      $path3         = "./upload/".$file3;
      $path4         = "./upload/".$file4;
      $path5         = "./upload/".$file5;

      $sql = "UPDATE `tb_news` SET `date`='".$date."',`title`='".$title."',`publisher`='".$publisher."',`title_detail`='".$titleDetail."'
      ,`description1`='".$titleDes1."',`description2`='".$titleDes2."',`thumnail_small`='".$file1."',`thumail_detail1`='".$file2."'
      ,`thumail_detail2`='".$file3."',`thumail_detail3`='".$file4."',`thumail_detail4`='".$file5."'
      ,`type`='".$typeNews."',`status`='0' WHERE id=$id";
      

      $res = $con->query($sql);
        if($res===true){
            move_uploaded_file($_FILES['txt_thumnail_samll']['tmp_name'],$path1);
            move_uploaded_file($_FILES['txt_thumnail_detail1']['tmp_name'],$path2);
            move_uploaded_file($_FILES['txt_thumnail_detail2']['tmp_name'],$path3);
            move_uploaded_file($_FILES['txt_thumnail_detail3']['tmp_name'],$path4);
            move_uploaded_file($_FILES['txt_thumnail_detail4']['tmp_name'],$path5);
            header("Location: news.php");
        }



   }
   




?>