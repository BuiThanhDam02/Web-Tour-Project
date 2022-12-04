<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>TravelLab - Khám phá đất nước của chúng ta</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="./assets/images/favicon.png" type="image/gif" sizes="20x20">

    <link rel="stylesheet" href="./assets/css/select2.min.css">

    <link rel="stylesheet" href="./assets/css/jquery.fancybox.min.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css">

    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="./assets/css/animate.min.css">

    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">
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


    <div class="breadcrumb breadcrumb-style-one">
        <div class="container">
            <div class="col-lg-12 text-center">
                <h2 class="breadcrumb-title">Về Chúng Tôi</h2>
                <ul class="d-flex justify-content-center breadcrumb-items">
                    <li class="breadcrumb-item"><a href="index.jsp">Trang Chủ</a></li>
                    <li class="breadcrumb-item active">Về Chúng Tôi</li>
                </ul>
            </div>
        </div>
    </div>


    <div class="about-main-wrappper pt-100">
        <div class="container">
            <div class="about-tab-wrapper">
                <div class="row justify-content-center align-items-center">
                    <div class="col-lg-6">
                        <div class="about-tab-image-grid text-center">
                            <div class="about-video d-inline-block">
                                <img src="./assets/images/about/about-g2.jpg" alt="">
                                <div class="video-overlay">
                                    <a data-fancybox href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-icon video-popup">
<i class="bi bi-play-fill"></i>
</a>
                                </div>
                            </div>
                            <div class="row float-images g-4">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="about-image">
                                        <img src="./assets/images/about/about-g1.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="about-image">
                                        <img src="./assets/images/about/about-g3.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mt-5 mt-lg-0">
                        <div class="about-tab-wrap">
                            <h2 class="about-wrap-title">
                                Giới thiệu về công ty của chúng tôi và <span>những gì chúng tôi</span> cung cấp.
                            </h2>
                            <div class="about-tab-switcher">
                                <ul class="nav nav-pills mb-3 justify-content-md-between justify-content-center" id="about-tab-pills" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <div class="nav-link active" id="pills-about1" data-bs-toggle="pill" data-bs-target="#about-pills1" role="tab" aria-controls="about-pills1" aria-selected="true">
                                            <h3>10</h3>
                                            <h6>Năm Kinh Nghiệm</h6>
                                        </div>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <div class="nav-link" id="pills-about2" data-bs-toggle="pill" data-bs-target="#about-pills2" role="tab" aria-controls="about-pills2" aria-selected="false">
                                            <h3>100+</h3>
                                            <h6>Hướng Dẫn Viên Du Lịch</h6>
                                        </div>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <div class="nav-link" id="pills-about3" data-bs-toggle="pill" data-bs-target="#about-pills3" role="tab" aria-controls="about-pills3" aria-selected="false">
                                            <h3>500+</h3>
                                            <h6>Kết nối khách du lịch</h6>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content about-tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="about-pills1" role="tabpanel" aria-labelledby="pills-about1">
                                    <p>Thành lập từ ngày 27/4/2010, đến nay Công ty du lịch TRAVELLAB đã có gần 10 năm kinh nghiệm tổ chức tour và dịch vụ du lịch trong và ngoài nước bao gồm: tổ chức Các Tour du lịch tham quan trọn gói cho du khách khởi hành đều đặn hàng tuần cả trong và ngoài nước, tư vấn visa, đặt vé máy bay, đặt phòng khách sạn, cho thuê xe du lịch từ 7 đến 45 chỗ và thực hiện các thủ tục xuất nhập cảnh bằng điện tử…
                                        <br>
                                        Với sứ mạng mang đến cho Quý khách hàng những trải nghiệm du lịch với dịch vụ tốt nhất. Đội ngũ nhân viên công ty luôn không ngừng trau dồi nghiệp vụ, tăng cường học hỏi và luôn cập nhật thông tin lữ hành. Đảm bảo chất lượng phục vụ tốt nhất, mang lại sự hài long cho mỗi khách hàng đã tin tưởng lụa chọn dịch vụ của TRAVELLAB.
                                    </p>
                                </div>
                                <div class="tab-pane fade" id="about-pills2" role="tabpanel" aria-labelledby="pills-about2">
                                    <p> Cho đến nay TRAVELLAB đã có 2 chi nhánh tại thành phố Hồ Chí Minh và Đà Lạt với gần 100 nhân viên gồm đội ngũ điều hành, tư vấn viên, nhân viên kinh doanh và hướng dẫn viên du lịch có trình độ chuyên môn cao được đào tạo và tuyển chọn chuyên nghiệp.
                                        <br>
                                        Với đội ngũ quản lý điều hành có nhiều kinh nghiệm và chuyên môn cao trong quản lý – điều hành dịch vụ du lịch và lực lượng lao động có trình độ chuyên môn cao được đào tạo và tuyển chọn chuyên nghiệp TRAVELLAB luôn cam kết mang đến cho Quý khách hàng và đối tác các sản phẩm dịch vụ chất lượng và lợi ích tốt nhất, cùng với đội ngũ nhân viên được đào tạo chuyên nghiệp có kinh nghiệm trong lĩnh vực du lịch lữ hành.
                                        <br>
                                        Công ty luôn tập trung xây dựng, liên kết và phát triển đội ngũ nhân viên kinh doanh, hướng dẫn viên chuyên nghiệp và lành nghề nhằm mang đến cho du khách sự hài lòng nhất về chất lượng và dịch vụ. Hệ thống các nhà cung cấp dịch vụ gồm các đối tác trong nước và quốc tế luôn duy trì các hoạt động cung cấp dịch vụ ổn định hàng năm. Hệ thống cơ sở vật chất và các đơn vị thành viên luôn sẵn sàng đáp ứng các dịch vụ du lịch lữ hành của Công ty.
                                    </p>
                                </div>
                                <div class="tab-pane fade" id="about-pills3" role="tabpanel" aria-labelledby="pills-about3">
                                    <p>Nhờ vào sự nỗ lực không ngừng của tập thể vững mạnh TRAVELLAB và sự tin yêu tín thác của Quý khách. Năm 2018 doanh nghiệp đã tổ chức cho 3811 khách đi du lịch Hàn Quốc, 3800 khách đi Đài Loan, 3524 khách đi Thái Lan,... và hàng ngàn lượt khách du lịch trong và ngoài nước. Các tour khởi khành đều đặn hằng tháng với lượt khách ổn định. Với gần 20.000 lượt khách du lịch, hàng trăm đoàn khách du lịch quốc tế khởi hành mỗi năm thương hiệu TRAVELLAB đã và đang được khẳng định mạnh mẽ trong nước và quốc tế. 
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row pt-100 align-items-center">
                <div class="col-lg-6">
                    <div class="achievement-counter-wrap">
                        <h2 class="about-wrap-title">
                            Tại sao phải đặt gói với
                            <br>
                            <span>TRAVELLAB</span>
                        </h2>
                        <div class="achievement-counter-cards">
                            <div class="achievement-counter-card flex-sm-row flex-column text-sm-start text-center ">
                                <div class="counter-box mb-sm-0 mb-3">
                                    <h2>Tầm Nhìn</h2>
                                </div>
                                <h5 class="about_h5_box3">Đưa TRAVELLAB trở thành một giá trị cốt lõi trong cuộc sống của người dân Việt Nam.</h5>
                            </div>
                            <div class="achievement-counter-card flex-sm-row flex-column text-sm-start text-center">
                                <div class="counter-box mb-3">
                                    <h2>Sứ Mệnh</h2>
                                </div>
                                <h5 class="about_h5_box3">Người tiên phong trong lĩnh vực công ty lữ hành</h5>
                            </div>
                            <div class="achievement-counter-card flex-sm-row flex-column text-sm-start text-center">
                                <div class="counter-box mb-3">
                                    <h2>Giá Trị <br> Cốt Lõi</h2>
                                </div>
                                <h5 class="about_h5_box3"> Tính chuyên nghiệp
                                    <br>
                                    Cảm xúc thăng hoa
                                    <br>
                                    Gia tăng giá trị</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-image-group mt-5 mt-lg-0">
                        <img src="./assets/images/about/about-image-group2.jpg" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="testimonial-area testimonial-style-one mt-120">
        <div class="testimonial-shape-group"></div>
        <div class="container position-relative">
            <div class="row align-items-center">
                <div class="col-lg-8">
                    <div class="section-head-alpha">
                        <h2>Khách hàng nói gì về chúng tôi</h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="slider-arrows text-center d-lg-flex d-none justify-content-end mb-3">
                        <div class="testi-prev custom-swiper-prev" tabindex="0" role="button" aria-label="Previous slide"> <i class="bi bi-chevron-left"></i> </div>
                        <div class="testi-next custom-swiper-next" tabindex="0" role="button" aria-label="Next slide"><i class="bi bi-chevron-right"></i></div>
                    </div>
                </div>
            </div>
            <div class="swiper testimonial-slider-one position-relative">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="testimonial-card testimonial-card-alpha">
                            <div class="testimonial-overlay-img">
                                <img src="./assets/images/reviewer/reviewer-1.png" alt="">
                            </div>
                            <div class="testimonial-card-top">
                                <div class="qoute-icon"><i class='bx bxs-quote-left'></i></div>
                                <div class="testimonial-thumb"><img src="./assets/images/reviewer/r-sm1.png" alt=""></div>
                                <h3 class="testimonial-count">01</h3>
                            </div>
                            <div class="testimonial-body">
                                <p>Chuyến du lịch biển đã kết thúc nhưng những kỷ niệm chắc chắn sẽ còn đọng lại mãi trong ký ức của chúng tôi. Đoàn chúng tôi đã có một kì nghỉ đúng chất bung xõa với Tour Đà Nẵng vừa rồi, thật là một chuyến đi khó quên.</p>
                                <div class="testimonial-bottom">
                                    <div class="reviewer-info">
                                        <h4 class="reviewer-name">Hoàng Thái Duy</h4>
                                        <h6>Khách du lịch</h6>
                                    </div>
                                    <ul class="testimonial-rating">
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="testimonial-card testimonial-card-alpha">
                            <div class="testimonial-overlay-img">
                                <img src="./assets/images/reviewer/reviewer-1.png" alt="">
                            </div>
                            <div class="testimonial-card-top">
                                <div class="qoute-icon"><i class='bx bxs-quote-left'></i></div>
                                <div class="testimonial-thumb"><img src="./assets/images/reviewer/r-sm2.png" alt=""></div>
                                <h3 class="testimonial-count">02</h3>
                            </div>
                            <div class="testimonial-body">
                                <p>Công ty tôi rất hài lòng về chất lượng dịch vụ cũng như chất lượng phục vụ của công nhân viên công ty TRAVELLAB. Mặc dù thời tiết hôm đoàn của công ty đi không thuận lợi cho lắm, những ai nấy đều vui vẻ.</p>
                                <div class="testimonial-bottom">
                                    <div class="reviewer-info">
                                        <h4 class="reviewer-name">Trương Chí Tuấn</h4>
                                        <h6>Khách du lịch</h6>
                                    </div>
                                    <ul class="testimonial-rating">
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="testimonial-card testimonial-card-alpha">
                            <div class="testimonial-overlay-img">
                                <img src="./assets/images/reviewer/reviewer-1.png" alt="">
                            </div>
                            <div class="testimonial-card-top">
                                <div class="qoute-icon"><i class='bx bxs-quote-left'></i></div>
                                <div class="testimonial-thumb"><img src="./assets/images/reviewer/r-sm3.png" alt=""></div>
                                <h3 class="testimonial-count">03</h3>
                            </div>
                            <div class="testimonial-body">
                                <p>Đơn vị mình rất vui và hài long khi được công ty đứng ra tổ chức dịch vụ. Đơn vị mình rất thích về những dịch vụ của TRAVELLAB để phục vụ khách hàng.</p>
                                <div class="testimonial-bottom">
                                    <div class="reviewer-info">
                                        <h4 class="reviewer-name">Nguyễn Thuỳ Trang</h4>
                                        <h6>Khách du lịch</h6>
                                    </div>
                                    <ul class="testimonial-rating">
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="guide-area guide-style-one pt-110">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head-alpha" style="text-align: center; max-width: 100%;">
                        <h2>Hướng Dẫn Viên Du Lịch</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="guide-card-gamma">
                        <div class="guide-image">
                            <img src="./assets/images/guide/guide-6.jpg" alt="">
                            <ul class="guide-social-links">
                                <li><a href="#"><i class='bx bxl-instagram'></i></a></li>
                                <li><a href="#"><i class='bx bxl-facebook'></i></a></li>
                                <li><a href="#"><i class='bx bxl-twitter'></i></a></li>
                            </ul>
                            <div class="contact-lavel">
                                <a href="contact.jsp">Liên hệ</a>
                            </div>
                        </div>
                        <div class="guide-content">
                            <h4 class="guide-name">Nguyễn Mạnh Hùng
                            </h4>
                            <h6 class="guide-designation">Hướng dẫn viên</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="guide-card-gamma">
                        <div class="guide-image">
                            <img src="./assets/images/guide/guide-7.jpg" alt="">
                            <ul class="guide-social-links">
                                <li><a href="#"><i class='bx bxl-instagram'></i></a></li>
                                <li><a href="#"><i class='bx bxl-facebook'></i></a></li>
                                <li><a href="#"><i class='bx bxl-twitter'></i></a></li>
                            </ul>
                             <div class="contact-lavel">
                                <a href="contact.jsp">Liên hệ</a>
                            </div>
                        </div>
                        <div class="guide-content">
                            <h4 class="guide-name">Cao Minh Thắng
                            </h4>
                            <h6 class="guide-designation">Hướng dẫn viên</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="guide-card-gamma">
                        <div class="guide-image">
                            <img src="./assets/images/guide/guide-8.jpg" alt="">
                            <ul class="guide-social-links">
                                <li><a href="#"><i class='bx bxl-instagram'></i></a></li>
                                <li><a href="#"><i class='bx bxl-facebook'></i></a></li>
                                <li><a href="#"><i class='bx bxl-twitter'></i></a></li>
                            </ul>
                             <div class="contact-lavel">
                                <a href="contact.jsp">Liên hệ</a>
                            </div>
                        </div>
                        <div class="guide-content">
                            <h4 class="guide-name">Đoàn Thiên Ân
                            </h4>
                            <h6 class="guide-designation">Hướng dẫn viên</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="blog-area blog-style-two pt-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="section-head-alpha text-start">
                        <h2>Tin tức mới nhất</h2>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="blog-btn text-lg-end"><a href="blog-standard.jsp" class="button-fill-round">Xem tất cả Tin tức</a></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-card-gamma">
                        <div class="blog-thumb">
                            <a href="blog-details.jsp">
<img src="./assets/images/package/pac-034.jpg" alt="">
</a>
                            
                        </div>
                        <div class="blog-content">
                            <div class="blog-body-top">
                                <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> By Trần Quốc Bảo </a>
                                <a href="#" class="blog-comments"><i class="bi bi-calendar3"></i> 26 Tháng 01, 2021</a>
                            </div>
                            <h4 class="blog-title"><a href="blog-details.jsp">Hà Giang mùa hoa Tam Giác Mạch không thể bỏ lỡ.</a></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-card-gamma">
                        <div class="blog-thumb">
                            <a href="blog-details.jsp">
<img src="./assets/images/package/pac-036.jpg" alt="">
</a>
                            
                        </div>
                        <div class="blog-content">
                            <div class="blog-body-top">
                                <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> By Nguyễn Bích Ngọc </a>
                                <a href="#" class="blog-comments"><i class="bi bi-calendar3"></i> 10 Tháng 9, 2021</a>
                            </div>
                            <h4 class="blog-title"><a href="blog-details.jsp">5 bãi biển siêu đẹp ở Việt Nam không phải ai cũng biết.</a></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-card-gamma">
                        <div class="blog-thumb">
                            <a href="blog-details.jsp">
<img src="./assets/images/package/pac-040.jpg" alt="">
</a>
                          
                        </div>
                        <div class="blog-content">
                            <div class="blog-body-top">
                                <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> By admin </a>
                                <a href="#" class="blog-comments"><i class="bi bi-calendar3"></i> 21 Tháng 7, 2021</a>
                            </div>
                            <h4 class="blog-title"><a href="blog-details.jsp">Kinh nghiệm du lịch đảo Bình Ba</a></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <%@include file="./components/footer.jsp"%>



    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="./assets/js/jquery-3.6.0.min.js"></script>
    <script src="./assets/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/js/chain_fade.js"></script>
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <script src="./assets/js/jquery.fancybox.min.js"></script>
    <script src="./assets/js/select2.min.js"></script>
    <script src="./assets/js/jquery-ui.js"></script>

    <script src="./assets/js/main.js"></script>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</body>

</html>