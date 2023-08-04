
    <div class="footer">
        <div class="top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12" style="display: flex; justify-content: center;">
                        <div class="box-1">
                            <div class="top">
                                <!-- <img src="https://via.placeholder.com/255x200" alt="" /> -->
                             <?php
                                $sql  = "SELECT * FROM `tb_types_photo` WHERE type = 'Footer'";
                                $res  = $con->query($sql);
                                if ($res->num_rows> 0) {
                                    while ($row = $res->fetch_assoc()) {

                                        echo '
                                            <img src="../upload/'.$row['photo'].'" alt="">
                                        ';
                                        
                                    }
                                }
                            ?>
                            </div>
                            <div class="bottom">
                                <h1>Business Cambodia</h1>
                                <p>បំផុសគំនិតរកស៊ី នាំមនុស្សឱ្យហ៊ានចេញរកស៊ីតាមក្ដីស្រមៃ </p>
                                <div class="icon">
                                    <i class="fa-brands fa-facebook"></i>
                                    <i class="fa-brands fa-facebook-messenger"></i>
                                    <i class="fa-brands fa-youtube"></i>
                                    <i class="fa-brands fa-tiktok"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-4" style="height:400px;">
                        <h1 class="h_1">ស្វែងយល់អំពីពួកយើង</h1>
                        <a href="#">About us</a>
                    </div>
                    <div class="col-4" style="height:400px;">
                        <h1 class="h_2">ផ្នែកដែលពេញនិយម</h1>
                        <div class="footer-a">

                            <p>បំផុសគំនិតរកស៊ី នាំមនុស្សឱ្យហ៊ានចេញរកស៊ីតាមក្ដីស្រមៃបំផុសគំនិតរកស៊ី
                                នាំមនុស្សឱ្យហ៊ានចេញរកស៊ីតាមក្ដីស្រមៃ
                                បំផុសគំនិតរកស៊ី នាំមនុស្សឱ្យហ៊ានចេញរកស៊ីតាមក្ដីស្រមៃ
                                បំផុសគំនិតរកស៊ី នាំមនុស្សឱ្យហ៊ានចេញរកស៊ីតាមក្ដីស្រមៃ
                                បំផុសគំនិតរកស៊ី នាំមនុស្សឱ្យហ៊ានចេញរកស៊ីតាមក្ដីស្រមៃ </p>
                            <h3><i class="fa-regular fa-copyright pr-2"></i>September 15 2022 Copyright by An Sokwin
                                <br /><br /> Create By An Sokwin</h3>
                        </div>
                    </div>
                    <div class="col-4" style="height:400px;">
                        <h1 class="h_3">ទំនាក់ទំនង​មក​ពួក​យើង</h1>
                        <p id="p_1">Address: Phnom Penh</p>
                        <p id="p_1">Email : forsupporter222@gmail.com</p>
                        <p id="p_1">Phone Number : 0885677688</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
