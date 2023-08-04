<?php
include('../admin2/connection.php')
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="index.css"> -->
    <link rel="stylesheet" href="../html/index.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--Link FontAwesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <!--Link Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Exo+2&family=Hanuman&display=swap" rel="stylesheet">
    <!--Link Style CSS-->
</head>
<style>
    .box-img-detail1 {
        width: 60%;
        height: 400px;
        background-color: red;
        border-radius: 10px;
        overflow: hidden;
    }

    img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .box-description1 {
        width: 60%;
        height: 100px;
        /* background-color: blue; */
        margin-top: 20px;
    }

    .box-ads1 {
        width: 100%;
        height: 150px;
        /* background-color: red; */
        margin-top: 10px;
        border-radius: 10px;
    }

    .main {
        height: 3000px;
    }
</style>

<body>

    <div class="main">

        <!-- include sidebars -->
        <?php include("../include/sidebars.php") ?>

        <!--@@@@ CONTENT RIGHT @@@@-->
        <div class="content-right">

            <!-- <div class="box-ads1"></div>
            <div class="box-ads1"></div>
            <div class="box-ads1"></div>
            <div class="box-ads1"></div> -->

            <?php
            
            // function for catch url of detail card
            $id  = $_GET['url'];
            $sql    = "SELECT * FROM `tb_news` WHERE id = $id";
            $res    = $con->query($sql);

            //code for viewer
            $sql_viewer = "SELECT * FROM `tb_news` WHERE id = $id";
            $res_viewer = $con->query($sql_viewer);
            $row_viewer = mysqli_fetch_assoc($res_viewer);
            $veiwers    = $row_viewer['viewers'];
            $sql_update = "UPDATE `tb_news` SET `viewers`=$veiwers+1 WHERE id = $id";
            $result     = $con->query($sql_update);

            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {

                    echo ' 
                        <div class="box-img-detail1 mt-4">
                            <img src="../image_news/' . $row['thumnail_detail1'] . '" alt="">
                        </div>
                        <div class="box-description1">
                            <p>' . $row['title_detail1'] . '</p>
                        </div>
                        <div class="box-img-detail1 mt-4">
                            <img src="../image_news/' . $row['thumnail_detail2'] . '" alt="">
                        </div>
                        <div class="box-description1">
                            <p>' . $row['title_detail2'] . '</p>
                        </div>
                        <div class="box-img-detail1 mt-4">
                            <img src="../image_news/' . $row['thumnail_detail3'] . '" alt="">
                        </div>
                        <div class="box-img-detail1 mt-4">
                            <img src="../image_news/' . $row['thumnail_detail4'] . '" alt="">
                        </div>
                    
                    ';
                }
            }
            ?>

            <div class="container-fluid mt-5 con-3">
                <div class="row">

                    <?php
                        // need parameter
                        function layout_detail($id)
                        {
                            global $con;
                            $sql  = "SELECT * FROM `tb_news` WHERE id>$id  LIMIT 4";
                            $res  = $con->query($sql);
                            if ($res->num_rows > 0) {
                                while ($row = $res->fetch_assoc()) {

                                    echo '
                                            <div class="col-3" style=" height: 300px;padding-left: 0;">
                                        
                                            <a style="text-decoration: none; color: black;" href="../html/tb_detail.php?url='.$row['id'].'">
                                            <div class="card1" >
                                                <img src="../image_news/' . $row['thumnail_card'] . '" alt="">
                                                <div class="box-title">
                                                    <div class="box-decription">
                                                        <span>' . $row['date'] . '</span>
                                                        <strong>
                                                            <p>' . $row['title'] . '</p>
                                                        </strong>
                                                        <div class="left-right">
                                                            <small style="margin-top: -2px; position: absolute;">' . $row['publisher'] . '</small>

                                                            <small style="float: right; padding-left: 5px;margin-top: -2px; mr-2">' . $row['viewers'] . '</small>
                                                            <i style="float: right; opacity: 0.8;font-size: 14px ;" class="fa-solid fa-eye mr-3"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </a>
                                        
                                        </div>
                                    ';
                                }
                            }
                        }

                        layout_detail($_GET['url']);
                        // argument 

                    ?>

                </div>
            </div>
            <!--Content card-->
        </div>
        <!--@@@@ CONTENT RIGHT @@@@-->
        <!-- @@@@ Footer @@@@ -->
    </div>
    <!-- include footer -->
    <?php include("../include/footer.php")  ?>
    <!-- @@@@ Footer @@@@ -->
</body>

</html>