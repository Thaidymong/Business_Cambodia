<!--@@@@ MENU LEFT @@@@-->
<?php include("../admin2/connection.php"); ?>

<div class="menu-left">
    <div class="top">
        <div class="logo">
            <?php
            $sql  = "SELECT * FROM `tb_types_photo` WHERE type = 'Logo' LIMIT 1";
            $res  = $con->query($sql);
            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {

                    echo '
                            <img src="../upload/' . $row['photo'] . '" alt="">
                        ';
                }
            }
            ?>
        </div>
        <div class="title-business">
            <div class="top">
                <small>Business</small>
            </div>
            <div class="bottom">
                <p>Cambodia</p>
            </div>
        </div>
    </div>
    <div>
       <form action="search.php" method="get">
            <input class="search" type="text" name="result_serach">
            <button type="submit" class="btn btn-primary btn-sm mt-1" style="position: absolute; right:20px;">Search</button>
       </form>
    </div>
    <ul>
        <li class="active"><a href="index.php">ទំព័រដើម</a></li>
        <li><a href="layout1_1.php">ហរិញ្ញវត្ថុ</a></li>
        <li><a href="layout2_2.php">ចាប់ផ្តើមអាជីវកម្ម</a></li>
        <li><a href="layout3_3.php">អចលនទ្រព្យ</a></li>
        <li><a href="layout4_4.php">ភាពជាអ្នកដឹកនាំ</a></li>
        <li><a href="layout5_5.php">កំពូលអ្នកលក់</a></li>
        <li><a href="layout6_6.php">មុខរបរបច្ចេកវិទ្យា</a></li>
        <li><a href="layout7_7.php">ព័ត៏មានថ្មីៗ</a></li>
        <li><a href="layout8_8.php">អត្ថបទ</a></li>
        <li><a href="layout9_9.php">របាយការណ៍</a></li>
        <li><a href="layout10_10.php">ពិព័រណ័មុខរបរ2022</a></li>
        <li><a href="layout11_11.php">មុខរបរកសិកម្ម</a></li>
    </ul>
</div>