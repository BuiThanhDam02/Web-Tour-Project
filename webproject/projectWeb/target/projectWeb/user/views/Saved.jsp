<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html >

<head>
    <title>TravelLab - Khám phá đất nước của chúng ta</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="./assets//images/favicon.png" type="image/gif" sizes="20x20">

    <link rel="stylesheet" href="./assets//css/select2.min.css">

    <link rel="stylesheet" href="./assets//css/jquery.fancybox.min.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link rel="stylesheet" href="./assets//css/swiper-bundle.min.css">

    <link rel="stylesheet" href="./assets//css/bootstrap.min.css">

    <link rel="stylesheet" href="./assets//css/animate.min.css">

    <link rel="stylesheet" href="./assets//css/style.css">
    <link rel="stylesheet" href="./assets//css/responsive.css">
    <link rel="stylesheet" href="./assets//css/profile.css">
</head>

<body>

    <div class="preloader">
        <div class="loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>


    <%@include file="./components/header.jsp"%>

    <div class="profile-wrapper">
        <main role="main">
            <main role="main">
                <div class="profile">
                    <div class="container_profile">
                        <div class="content">

                            <%@include file="./components/box-left.jsp"%>
    
    
                            <div class="ps-md-4">
                                <div class="wrapper saved">
                                    <div class="tab">
                                        <ul class="nav py-3 tab flex-sm-row mb-3" role="tablist">
                                            <li class="nav-item flex-sm-fill text-sm-center" role="presentation">
                                                <a class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" role="tab" aria-controls="pills-home" value="1" aria-selected="true">Tour du lịch</a>
                                            </li>
                                           
                                        </ul>
                                        <div class="form-search mb-4">
                                            <form action="#" method="get">
                                                <input class="form-control px-5" type="text" placeholder="Tìm kiếm theo tên Tour hoặc mã Tour" aria-label="default input example" />
                                                <i class="icon icon--search"></i>
                                            </form>
                                        </div>
                                        <div class="tab-content" id="pills-tabContent">
                                            <div class="tab-pane result fade show active" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                                <div class="row g-3 g-lg-4" id="divTourLikeAccount">
                                                    <div class="tour-list" >
                                                        <div class="tour-item">
                                                            <div class="tour-item-first-side">
                                                                <span>Miền Tây - Bến Tre - Trà Vinh- Cồn Chim - Nụ Cười Mê Kông</span>
                                                            </div>
                                                            <div class="tour-item-second-side">
                                                                <div class="tour-item-second-side-start">
                                                                    <span >Bắt đầu chuyến đi</span>
                                                                    <p class="time" >CN, 18 Tháng 11, 2022</p>                        
                                                                </div>
                                                                <div class="tour-item-second-side-end">
                                                                    <span >Kết thúc chuyến đi</span>
                                                                    <p class="time" >CN, 20 Tháng 11, 2022</p>                        
                                                                </div>
                                                            </div>
                                                            <div class="tour-item-third-side">
                                                                <p class="add-more"style="font-size: 12px;" ><span id="">Địa điểm </span><span id="">Cà mau</span></p>
                                                                <span>Số chỗ còn lại <span>10</span></span>
                                                            </div>
                                                            <div class="tour-item-four-side">
                                                                <div class="bound dahuy btn-xoa" >
                                                                    <span>Xóa</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                       
                                                        
                                                       
                                                        
                                                       
                                                   </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
                    </div>
                </div>
                <div class="overlay"></div>
            </main>
        </main>
    </div>

    <%@include file="./components/footer.jsp"%>



    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="./assets//js/jquery-3.6.0.min.js"></script>
    <script src="./assets//js/bootstrap.bundle.min.js"></script>
    <script src="./assets//js/chain_fade.js"></script>
    <script src="./assets//js/owl.carousel.min.js"></script>
    <script src="./assets//js/swiper-bundle.min.js"></script>
    <script src="./assets//js/jquery.fancybox.min.js"></script>
    <script src="./assets//js/select2.min.js"></script>
    <script src="./assets//js/jquery-ui.js"></script>

    <script src="./assets//js/main.js"></script>
    <script src="./assets//js/profile.js"></script>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</body>

</html>