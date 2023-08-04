<?php
include("../admin2/connection.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/photo/logo.png" type="image/gif" sizes="16x16">
    <title>Business Cambodia</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--Link FontAwesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <!--Link Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Exo+2&family=Hanuman&display=swap" rel="stylesheet">
    <!--Link Style CSS-->

</head>

<body>

    <!-- @@@@ RESPONSIVE @@@@ -->
    <div class="res-menu">
        <img src="https://via.placeholder.com/255x200" alt="">

        <i class="fa-solid fa-magnifying-glass"></i>
        <i class="fa-solid fa-bars"></i>
    </div>

    <!-- @@@@ RESPONSIVE @@@@ -->
    <div class="main">

        <!--@@@@ MENU LEFT @@@@-->
        <?php include('../include/sidebars.php') ?>

        <!--@@@@ MENU LEFT @@@@-->

        <!--@@@@ CONTENT RIGHT @@@@-->
        <div class="content-right">

            <?php include('../include/header.php') ?>
            <?php include('../include/layout1.php') ?>
            <?php include('../include/layout2.php') ?>
            <?php include('../include/layout3.php') ?>
            <?php include('../include/layout4.php') ?>
            <?php include('../include/layout5.php') ?>
            <?php include('../include/layout6.php') ?>
            <?php include('../include/layout7.php') ?>
            <?php include('../include/layout8.php') ?>
            <?php include('../include/layout9.php') ?>
            <?php include('../include/layout10.php') ?>
            <?php include('../include/layout11.php') ?>
            
            
        </div>

        <!--@@@@ CONTENT RIGHT @@@@-->

        <!-- @@@@ Footer @@@@ -->
    </div>

    <?php include('../include/footer.php') ?>

    <!-- @@@@ Footer @@@@ -->

</body>

</html>