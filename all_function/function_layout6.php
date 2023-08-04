<?php
include('../admin2/connection.php')
?>

<?php
    
// layout6
function layout6()
{
    global $con;
    $sql  = "SELECT * FROM `tb_news` WHERE type = 'មុខរបរបច្ចេកវិទ្យា' LIMIT 4";
    $res  = $con->query($sql);
    if ($res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {

            echo '
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3 mt-4" style=" height: 300px;padding-left: 0;">
                   
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

function layout6_6()
{
    global $con;
    $sql  = "SELECT * FROM `tb_news` WHERE type = 'មុខរបរបច្ចេកវិទ្យា' ";
    $res  = $con->query($sql);
    if ($res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {

            echo '
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3 mt-4" style=" height: 300px;padding-left: 0;">
                   
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

?>