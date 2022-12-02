<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html >

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
                <h2 class="breadcrumb-title">Chi tiết Gói Du Lịch</h2>
                <ul class="d-flex justify-content-center breadcrumb-items">
                    <li class="breadcrumb-item"><a href="index.jsp">Trang Chủ</a></li>
                    <li class="breadcrumb-item active">Du Lịch</li>
                    <li class="breadcrumb-item active">Chi tiết Gói Du Lịch</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="package-details-wrapper pt-76">
        <div class="container">
            <div class="row ">
                <div class="col-lg-8">
                    <div class="tour-package-details">
                        <div class="pd-header">
                            <div class=" pd-top row row-cols-lg-4 row-cols-md-2 row-cols-2 gy-4">
                                <div class="col">
                                    <div class="pd-single-info">
                                        <div class="info-icon">
                                            <img src="./assets/images/icons/pd1.svg" alt="">
                                        </div>
                                        <div class="info">
                                            <h6>Thời Gian</h6>
                                            <span>4 Ngày</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="pd-single-info">
                                        <div class="info-icon">
                                            <img src="./assets/images/icons/pd2.svg" alt="">
                                        </div>
                                        <div class="info">
                                            <h6>Loại Hình Du Lịch</h6>
                                            <span>Chuyến tham quan hàng ngày</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="pd-single-info">
                                        <div class="info-icon">
                                            <img src="./assets/images/icons/pd3.svg" alt="">
                                        </div>
                                        <div class="info">
                                            <h6>Quy Mô Nhóm</h6>
                                            <span>30 Người</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="pd-single-info">
                                        <div class="info-icon">
                                            <img src="./assets/images/icons/pd4.svg" alt="">
                                        </div>
                                        <div class="info">
                                            <h6>Hướng Dẫn Viên</h6>
                                            <span>05 Người</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pd-thumb">
                                <img src="./assets/images/package/thumb-nhatrang.jpg" alt="">
                            </div>
                            <div class="header-bottom">
                                <div class="pd-lavel d-flex justify-content-between align-items-center flex-wrap gap-2">
                                    <h5 class="location"><i class="bi bi-geo-alt"></i> Nha Trang, Khánh Hoà</h5>
                                    <ul class="d-flex align-items-center rating">
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                        <li><i class="bi bi-star-fill"></i></li>
                                    </ul>
                                </div>
                                <div class="pd-lavel d-flex justify-content-between align-items-center flex-wrap gap-2">
                                    <h2 class="pd-title">DU LỊCH NHA TRANG</h2>
                                    <div title="Thêm vào yêu thích" style="color: red;font-size: 2rem;cursor: pointer;"><i class='bx bxs-heart'></i></div>
                                </div>
                                <span>Số còn nhận <span style="color: var(--c-primary);">6</span></span>
                            </div>
                        </div>
                        <div class="package-details-tabs">
                            <ul class="nav nav-pills tab-switchers gap-xxl-4 gap-3" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pills-package1" data-bs-toggle="pill" data-bs-target="#pill-body1" type="button" role="tab" aria-controls="pill-body1" aria-selected="true"><i class="bi bi-info-lg"></i> Thông Tin</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-package2" data-bs-toggle="pill" data-bs-target="#pill-body2" type="button" role="tab" aria-controls="pill-body2" aria-selected="false"> <i class="bi bi-file-earmark-spreadsheet"></i> Kế Hoạch</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-package3" data-bs-toggle="pill" data-bs-target="#pill-body3" type="button" role="tab" aria-controls="pill-body3" aria-selected="false"><i class="bi bi-images"></i> Hình Ảnh</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-package4" data-bs-toggle="pill" data-bs-target="#pill-body4" type="button" role="tab" aria-controls="pill-body4" aria-selected="false"><i class="bi bi-geo-alt"></i> Vị Trí</button>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">

                                <div class="tab-pane fade show active package-info-tab mt-3" id="pill-body1" role="tabpanel" aria-labelledby="pills-package1">
                                    <h3 class="d-subtitle">Chi tiết du lịch</h3>
                                    <p>
                                        Biển Nha Trang xanh trong, mang đến những làn gió tươi mát, như kích thích con người vươn tới những khao khát của thiên nhiên… Ngập tràn trong sắc hoa Đà Lạt - một góc châu Âu ở phương Đông, chắc chắn bạn sẽ có những ngày nghỉ tuyệt vời và thư thái trong không gian của tự do… Nhắc tới tour du lịch  Nha Trang, du lịch Đà Lạt, chắc hẳn không ai không biết tới thành phố ngàn hoa đã tạo nên một Đà Lạt  mộng mơ, quyến rũ nhờ cái lạnh của cao nguyên, sương mù và những dải rừng thông xanh mướt. Đến với Nha Trang - miền đất được mệnh danh là “xứ trầm, biển yến”, cùng hệ thống các đảo nổi tiếng như Vinpearl Land, Hòn Tằm, Hòn Mun…
                                    </p>
                                    <div class="p-info-featured-img row position-relative g-4 row-cols-1 row-cols-sm-2">
                                        <div class="col">
                                            <div class="featured-img">
                                                <img src="./assets/images/package/feat-img1.png" alt="">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="featured-img">
                                                <img src="./assets/images/package/feat-img2.png" alt="">
                                            </div>
                                        </div>
                                        <div class="featured-video position-absolute ">
                                            <img src="./assets/images/package/feat-img3.png" alt="">
                                            <div class="video-overlay">
                                                <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-icon video-popup" data-fancybox>
<i class="bi bi-play-fill"></i>
</a>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="table package-info-table mb-0">
                                        <tbody>
                                            <tr>
                                                <th>Địa Điểm</th>
                                                <td>Nha Trang</td>
                                            </tr>
                                            <tr>
                                                <th>Xuất Phát</th>
                                                <td>Bắt Buộc</td>
                                            </tr>
                                            <tr>
                                                <th>Thời Gian Xuất Phát</th>
                                                <td>01 Tháng 04, 2021 5h sáng</td>
                                            </tr>
                                            <tr>
                                                <th>Thởi Gian</th>
                                                <td>5 Ngày 4 Đêm</td>
                                            </tr>
                                            <tr>
                                                <th>Đã Bao Gồm</th>
                                                <td>
                                                    <ul class="included-list">
                                                        <li><i class="bi bi-check2"></i> Hướng dẫn song ngữ chuyên ngành</li>
                                                        <li> <i class="bi bi-check2"></i> Phương tiện giao thông tư nhân</li>
                                                        <li><i class="bi bi-check2"></i> Phí tham quan</li>
                                                        <li><i class="bi bi-check2"></i> Bữa trưa, Nước, Bữa tối và Đồ ăn nhẹ</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Không Bao Gồm</th>
                                                <td>
                                                    <ul class="excluded-list">
                                                        <li><i class="bi bi-x-lg"></i> Dịch vụ bổ sung</li>
                                                        <li> <i class="bi bi-x-lg"></i> Bảo hiểm</li>
                                                        <li><i class="bi bi-x-lg"></i> Đồ uống</li>
                                                        <li><i class="bi bi-x-lg"></i> Vé</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="tour-transport-col">
                                                    <div class="tour-transport  d-flex align-items-center justify-content-center"><img src="./assets/images/icons/bus.svg" alt=""> <span>Phương Tiện: Xe Khách</span></div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="rating-overview">
                                        <h3 class="d-subtitle">Tổng quan</h3>
                                        <div class="rating-overview-row row g-0">
                                            <div class="col-lg-4 col-md-5 col-sm-5">
                                                <div class="total-rating d-flex justify-content-center align-items-center flex-column h-100 ">
                                                    <h3>10.00</h3>
                                                    <h5>Xuất Sắc</h5>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-7 col-sm-7">
                                                <div class="rating-info">
                                                    <div class="rating-box">
                                                        <h6>Khách Sạn <span>5.0</span></h6>
                                                        <div class="rating-bar"></div>
                                                    </div>
                                                    <div class="rating-box">
                                                        <h6>Phương tiện vận chuyển <span>5.0</span></h6>
                                                        <div class="rating-bar"></div>
                                                    </div>
                                                    <div class="rating-box">
                                                        <h6>Thoải mái <span>5.0</span></h6>
                                                        <div class="rating-bar"></div>
                                                    </div>
                                                    <div class="rating-box">
                                                        <h6>Lòng hiếu khách <span>5.0</span></h6>
                                                        <div class="rating-bar"></div>
                                                    </div>
                                                    <div class="rating-box">
                                                        <h6>Đồ Ăn <span>5.0</span></h6>
                                                        <div class="rating-bar"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comment-section">
                                        <div class="comment-list" id="group-comment">
                                            <div class="single-comment " >
                                                <div>
                                                    <div class="commmentor">
                                                        <img src="./assets/images/reviewer/commertor2.png" alt="">
                                                    </div>
                                                    <div class="comment mt-4 mt-sm-0">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="info">
                                                                <h6>Nguyễn Minh Thiện</h6>
                                                                <span>2 Tháng 3, 2021 20.00 Tối</span>
                                                            </div>
                                                            <ul class="rating d-flex ">
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p>Trong suốt chuyến đi, cả VP mình ai cũng đều hào hứng. Không một ai cảm thấy mệt mỏi hay chán nản. Tất cả đều hướng đến vì một tập thể làm hết sức, chơi hết mình.</p>
                                                        <div class="reply-btn">
                                                            <a href="#"><i class="bi bi-reply-all-fill"></i> Trả Lời</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-comment ">
                                                <div>
                                                    <div class="commmentor">
                                                        <img src="./assets/images/reviewer/commertor3.png" alt="">
                                                    </div>
                                                    <div class="comment mt-4 mt-sm-0">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="info">
                                                                <h6>Lê Ngọc Ánh</h6>
                                                                <span>23 Tháng 10, 2021 18.00 Tối</span>
                                                            </div>
                                                            <ul class="rating d-flex ">
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p>Ngoài những bãi biển tuyệt đẹp không thể chê vào đâu được, là đội ngũ HDV và tư vấn viên nhiệt tình, hiểu biết và trách nhiệm.</p>
                                                        <div class="reply-btn">
                                                            <a href="#"><i class="bi bi-reply-all-fill"></i> Trả Lời</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-comment ">
                                                <div>
                                                    <div class="commmentor">
                                                        <img src="./assets/images/reviewer/commertor1.png" alt="">
                                                    </div>
                                                    <div class="comment mt-4 mt-sm-0">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="info">
                                                                <h6>Nguyễn Bảo Trân</h6>
                                                                <span>5 Tháng 4, 2021 10.00 Sáng</span>
                                                            </div>
                                                            <ul class="rating d-flex ">
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p>Hơn cả mong đợi. Cả công ty mình rất vui, ai nấy đều hài lòng về dịch vụ của TRAVELLAB vừa đến Đà Nẵng đã được tài xế của công ty đón tiếp rất nhiệt tình</p>
                                                        <div class="reply-btn">
                                                            <a href="#"><i class="bi bi-reply-all-fill"></i> Trả Lời</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="single-comment " >
                                                <div>
                                                    <div class="commmentor">
                                                        <img src="./assets/images/reviewer/commertor2.png" alt="">
                                                    </div>
                                                    <div class="comment mt-4 mt-sm-0">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="info">
                                                                <h6>Nguyễn Minh Thiện</h6>
                                                                <span>2 Tháng 3, 2021 20.00 Tối</span>
                                                            </div>
                                                            <ul class="rating d-flex ">
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p>Trong suốt chuyến đi, cả VP mình ai cũng đều hào hứng. Không một ai cảm thấy mệt mỏi hay chán nản. Tất cả đều hướng đến vì một tập thể làm hết sức, chơi hết mình.</p>
                                                        <div class="reply-btn">
                                                            <a href="#"><i class="bi bi-reply-all-fill"></i> Trả Lời</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-comment ">
                                                <div>
                                                    <div class="commmentor">
                                                        <img src="./assets/images/reviewer/commertor3.png" alt="">
                                                    </div>
                                                    <div class="comment mt-4 mt-sm-0">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="info">
                                                                <h6>Lê Ngọc Ánh</h6>
                                                                <span>23 Tháng 10, 2021 18.00 Tối</span>
                                                            </div>
                                                            <ul class="rating d-flex ">
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p>Ngoài những bãi biển tuyệt đẹp không thể chê vào đâu được, là đội ngũ HDV và tư vấn viên nhiệt tình, hiểu biết và trách nhiệm.</p>
                                                        <div class="reply-btn">
                                                            <a href="#"><i class="bi bi-reply-all-fill"></i> Trả Lời</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-comment ">
                                                <div>
                                                    <div class="commmentor">
                                                        <img src="./assets/images/reviewer/commertor1.png" alt="">
                                                    </div>
                                                    <div class="comment mt-4 mt-sm-0">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="info">
                                                                <h6>Nguyễn Bảo Trân</h6>
                                                                <span>5 Tháng 4, 2021 10.00 Sáng</span>
                                                            </div>
                                                            <ul class="rating d-flex ">
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                                <li><i class="bi bi-star-fill"></i></li>
                                                            </ul>
                                                        </div>
                                                        <p>Hơn cả mong đợi. Cả công ty mình rất vui, ai nấy đều hài lòng về dịch vụ của TRAVELLAB vừa đến Đà Nẵng đã được tài xế của công ty đón tiếp rất nhiệt tình</p>
                                                        <div class="reply-btn">
                                                            <a href="#"><i class="bi bi-reply-all-fill"></i> Trả Lời</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="comment-btn text-center" id="show-more-div">
                                            <!-- <span id="show-more-button" style="font-weight: 500;color: var(--c-primary);cursor: pointer;">Xem Thêm Bình Luận</span> -->
                                        </div>
                                    </div>
                                    <form action="#" id="comment_form" method="post">
                                        <div class="comment-form mt-110">
                                            <h4>Để Lại Bình Luận Của Bạn</h4>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="custom-input-group">
                                                        <input type="text" placeholder="Họ Tên" id="name1">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="custom-input-group">
                                                        <input type="text" placeholder="Email" id="email1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="custom-input-group">
                                                <input type="text" placeholder="Loại Hình Du Lịch" id="type">
                                            </div>
                                            <div class="custom-input-group">
                                                <textarea cols="20" rows="7" placeholder="Viết Bình Luận"></textarea>
                                            </div>
                                            <ul class="form-rating d-flex">
                                                <li><i class="bi bi-star"></i></li>
                                                <li><i class="bi bi-star"></i></li>
                                                <li><i class="bi bi-star"></i></li>
                                                <li><i class="bi bi-star"></i></li>
                                                <li><i class="bi bi-star"></i></li>
                                            </ul>
                                            <div class="custom-input-group">
                                                <div class="submite-btn">
                                                    <button type="submit">Bình Luận</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div class="tab-pane fade package-plan-tab tab-body mt-3" id="pill-body2" role="tabpanel" aria-labelledby="pills-package2">
                                    <h3 class="d-subtitle">Chi tiết </h3>
                                    <p>Nha Trang được công nhận là một trong những vịnh biển đẹp nhất thế giới với thành phố êm ả nằm bên bờ biển - miền đất được mệnh danh là “xứ trầm, biển yến”. Nha Trang đang ngày một đổi thay nhưng thật lạ là mảnh đất này vẫn giữ được vẻ đẹp vốn có, như một cô gái vẫn giữ được nét chân quê bản sắc mà vẫn tìm vơn tới nét hiện đại để tôn thêm nhan sắc của chính mình.
                                    </p>
                                    <div class="accordion plans-accordion" id="planAccordion">
                                        <div class="accordion-item plans-accordion-single">
                                            <div class="accordion-header" id="planHeadingOne">
                                                <div class="accordion-button" data-bs-toggle="collapse" data-bs-target="#planCollapse1" aria-expanded="true" role="navigation">
                                                    <div class="paln-index-circle">
                                                        <h4>01</h4>
                                                    </div>
                                                    <div class="plan-title">
                                                        <h5>Ngày 1 : Xuất Phát</h5>
                                                        <h6>08:00 - 18:00</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="planCollapse1" class="accordion-collapse collapse show" aria-labelledby="planHeadingOne" data-bs-parent="#planAccordion">
                                                <div class="accordion-body plan-info">
                                                    <p>08:00 - 18:00</p>
                                                    <ul>
                                                        <li><i class="bi bi-check-lg"></i> 08h00: Xe đến KDL Bãi Dài nổi tiếng là một bãi biển tuyệt đẹp của Cam Ranh, đẹp hoang sơ nhưng quyến rũ được rất nhiều du khách yêu thích. Đến đây chắc chắn bạn sẽ thích thú bởi vẽ đẹp nên thơ yên tĩnh của bãi biển này, vì nằm khá xa thành phố nên tránh được cái ồn ào của phố thị, quý khách tự do tắm biển (tắm nước ngọt tự túc).
<br>
                                                            Trưa: Xe đưa quý khách về TP.Nha Trang để quý khách dùng cơm trưa. Sau đó, nhận phòng nghĩ ngơi.</li>
                                                        <li><i class="bi bi-check-lg"></i> 14h30: Đoang khởi hành đi tham quan:
                                                            <br>
                                                            Tháp Bà Ponagar quần thể kiến trúc Chăm Pa lớn nhất Việt Nam hiện nay. Quý khách được xem chương trình văn nghệ truyền thống được tổ chức thường xuyên tại đây.
                                                            <br>
                                                            Trung tâm du lịch suối khoáng Tháp Bà, cùng với những liệu trình tắm suối, tắm bùn khoáng(chi phí tự túc).
                                                            </li>
                                                        <li><i class="bi bi-check-lg"></i> Tối: Đoàn dùng cơm tối. Qúy khách tự do khám phá Thành Phố biển Nha Trang về đêm.</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="accordion-item plans-accordion-single">
                                            <div class="accordion-header" id="planHeadingTwo">
                                                <div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#planCollapse2" aria-expanded="true" role="navigation">
                                                    <div class="paln-index-circle">
                                                        <h4>02</h4>
                                                    </div>
                                                    <div class="plan-title">
                                                        <h5>Ngày 2 : THAM QUAN VỊNH NHA TRANG  - NGẮM SAN HÔ</h5>
                                                        <h6>08:00 - 18:00</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="planCollapse2" class="accordion-collapse collapse" aria-labelledby="planHeadingTwo" data-bs-parent="#planAccordion">
                                                <div class="accordion-body plan-info">
                                                    <p>Sáng: Dùng điểm tâm sáng tại nhà hàng. Đến giờ hẹn đoàn khởi hành đi Tham quan chương trình 4 Đảo.</p>
                                                    <ul>
                                                        <li><i class="bi bi-check-lg"></i> 08h00:  Đến Hòn Mun hoặc Vịnh San Hô - Quý khách tự do tắm biển, ngắm nhìn những mảng san hô và các loài sinh vật biển quý hiếm bằng dụng cụ kính lặn ống thở. Quý khách sẽ biết được thế nào là cảm giác tận tay sờ vào san hô sống, may mắn thì sẽ được chạm tay vào những chú cá đang bơi lội, nhìn ngắm cận cảnh những chú cầu gai, hải sâm. Tham gia trò chơi trên biển: bay dù, mô tô nước, ngắm san hồ tàu đáy kính, lặn bình hơi khám phá đại dương (chi phí tự túc).</li>
                                                        <li><i class="bi bi-check-lg"></i> 11h00: Đến Làng Chài, Tham quan và Ăn trưa tại nhà bè, với thực đơn theo chương trình. Quý khách lên đảo tiếp tục tắm biển hoặc nằm tắm nắng thư giãn trên bãi biển với tiếng sóng vỗ rì rào… Bãi Tranh còn được biết đến với hệ thống trò chơi trên biển mạo hiểm và độc đáo, như: Jetski, Kajak, dù bay, lướt ván... Bãi Tranh là điểm đến lý tưởng trong du lịch Biển đảo Nha Trang.</li>
                                                        <li><i class="bi bi-check-lg"></i> 15h00:  Cano đưa về đất liền, xe đưa quý khách về khách sạn nghĩ ngơi.</li>
                                                        <li><i class="bi bi-check-lg"></i> Tối:  Dùng cơm tối với đặt sản Nem Ninh Hoà, quý khách tự do tham quan Nha Trang về đêm.</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="accordion-item plans-accordion-single">
                                            <div class="accordion-header" id="planHeadingThree">
                                                <div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#planCollapse3" aria-expanded="true" aria-controls="planCollapse1" role="navigation">
                                                    <div class="paln-index-circle">
                                                        <h4>03</h4>
                                                    </div>
                                                    <div class="plan-title">
                                                        <h5>Ngày 3: TP.NHA TRANG - TPHCM</h5>
                                                        <h6>8:00 - 18:00</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="planCollapse3" class="accordion-collapse collapse" aria-labelledby="planHeadingThree" data-bs-parent="#planAccordion">
                                                <div class="accordion-body plan-info">
                                                    <p>Sáng: Trả phòng khách sạn, Quý khách tham quan Chùa Long Sơn - Nơi đây sở hữu bức tượng Phật Tổ ngoài trời lớn nhất được ghi tên vào sách kỷ lục Guiness Việt Nam.</p>
                                                    <ul>
                                                        <li><i class="bi bi-check-lg"></i> 09h00: Quý khách rời Nha Trang về TP.HCM. Trên đường ghé Phan Rang tham quan Vườn Nho và thưởng thức rượu và mật nho tại đây quý khách có thể mua đặc sản tỏi và nho làm quà biếu</li>
                                                        <li><i class="bi bi-check-lg"></i> Trưa: Quý khách đến địa phận Cà Ná. Xe ghé nhà hàng để quý khách dùng cơm trưa.</li>
                                                        <li><i class="bi bi-check-lg"></i> Tối: Xe vế đến TP.HCM, HDV đưa khách về lại điểm đón ban đầu, HDV chia tay qúy khách và hẹn gặp lại quý khách !</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div class="accordion-item plans-accordion-single">
                                            <div class="accordion-header" id="planHeadingFour">
                                                <div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#planCollapse4" aria-expanded="true" role="navigation">
                                                    <div class="paln-index-circle">
                                                        <h4>04</h4>
                                                    </div>
                                                    <div class="plan-title">
                                                        <h5>DAY 1 : Departure And Small Tour</h5>
                                                        <h6>10.00 AM to 10.00 PM</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="planCollapse4" class="accordion-collapse collapse" aria-labelledby="planHeadingFour" data-bs-parent="#planAccordion">
                                                <div class="accordion-body plan-info">
                                                    <p>Pellentesque accumsan magna in augue sagittis, non fringilla eros molestie. Sed feugiat mi nec ex vehicula, nec vestibulum orci semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                                        per inceptos himenaeos. Donec tristique commodo fringilla.</p>
                                                    <ul>
                                                        <li><i class="bi bi-check-lg"></i> Specilaized Bilingual Guide</li>
                                                        <li><i class="bi bi-check-lg"></i> Private Transport</li>
                                                        <li><i class="bi bi-check-lg"></i> Entrance Fees</li>
                                                        <li><i class="bi bi-check-lg"></i> Box Lunch,Water,Dinner and Snacks</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="accordion-item plans-accordion-single">
                                            <div class="accordion-header" id="planHeadingFive">
                                                <div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#planCollapse5" aria-expanded="true" role="navigation">
                                                    <div class="paln-index-circle">
                                                        <h4>04</h4>
                                                    </div>
                                                    <div class="plan-title">
                                                        <h5>DAY 1 : Departure And Small Tour</h5>
                                                        <h6>10.00 AM to 10.00 PM</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="planCollapse5" class="accordion-collapse collapse" aria-labelledby="planHeadingFive" data-bs-parent="#planAccordion">
                                                <div class="accordion-body plan-info">
                                                    <p>Pellentesque accumsan magna in augue sagittis, non fringilla eros molestie. Sed feugiat mi nec ex vehicula, nec vestibulum orci semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                                        per inceptos himenaeos. Donec tristique commodo fringilla.</p>
                                                    <ul>
                                                        <li><i class="bi bi-check-lg"></i> Specilaized Bilingual Guide</li>
                                                        <li><i class="bi bi-check-lg"></i> Private Transport</li>
                                                        <li><i class="bi bi-check-lg"></i> Entrance Fees</li>
                                                        <li><i class="bi bi-check-lg"></i> Box Lunch,Water,Dinner and Snacks</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div> -->
                                    </div>
                                </div>

                                <div class="tab-pane fade package-gallary-tab mt-3" id="pill-body3" role="tabpanel" aria-labelledby="pills-package3">
                                    <div class="row g-4">
                                        <div class="col-6">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgl-1.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgl-1.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgl-2.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgl-2.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgx-1.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgx-1.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgl-3.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgl-3.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgl-4.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgl-4.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgx-2.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgx-2.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgl-5.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgl-5.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgl-6.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgl-6.png" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="package-gallary-item">
                                                <a href="./assets/images/gallary/pgx-3.png" data-fancybox="gallery" data-caption="Caption Here"><img src="./assets/images/gallary/pgx-3.png" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade package-location-tab mt-3" id="pill-body4" role="tabpanel" aria-labelledby="pills-package4">
                                    <div class="mapouter">
                                        <div class="gmap_canvas">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d124762.63190606327!2d109.17646148203542!3d12.259629020123805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3170677811cc886f%3A0x5c4bbc0aa81edcb9!2zTmhhIFRyYW5nLCBLaMOhbmggSMOyYSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1666744740378!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe><a href="https://123movies-to.org"></a><br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="package-sidebar">
                        <aside class="package-widget-style-2 widget-form mt-30">
                            <div class="widget-title text-center d-flex justify-content-between">
                                <h4>Giá Từ</h4>
                                <h3 class="widget-lavel">2.990.000 ₫ <span>1 Người</span></h3>
                            </div>
                            <div class="widget-body">
                                <form action="Booking-Tour.jsp" id="booking-form">
                                    <div class="booking-form-wrapper">
                                       
                                        <div class="custom-input-group">
                                            <div class="submite-btn">
                                                <button type="submit">Đặt Ngay</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                
                            </div>
                        </aside>
                        <aside class="package-widget-style-2 widget-recent-package-entries mt-30">
                            <div class="widget-title text-center">
                                <h4>Bạn có thể sẽ thích</h4>
                            </div>
                            <div class="widget-body">
                                <ul>
                                    <li class="package-sm">
                                        <div class="thumb">
                                            <a href="package-details.jsp">
                                                <img src="./assets/images/sidebar/sb-sapa.jpg" alt="">
</a>
                                        </div>
                                        <div class="info">
                                            <h6><a href="package-details.jsp">DU LỊCH TÂY BẮC: NGHĨA LỘ - TÚ LỆ - MÙ CANG CHẢI - SAPA</a></h6>
                                            <div class="price">
                                                <span>Chỉ Từ</span>
                                                <h6>5.990.000 ₫ <span>1 Người</span></h6>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="package-sm">
                                        <div class="thumb">
                                            <a href="package-details.jsp">
                                                <img src="./assets/images/sidebar/sb-hanoi.jpg" alt="">
</a>
                                        </div>
                                        <div class="info">
                                            <h6><a href="package-details.jsp">DU LỊCH ĐÔNG BẮC - TÂY BẮC: HÀ NỘI - TRÀNG AN - BÁI ĐÍNH - HẠ LONG - KDL YÊN TỬ - SAPA </a></h6>
                                            <div class="price">
                                                <span>Chỉ Từ</span>
                                                <h6>7.990.000 ₫ <span>1 Người</span></h6>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="package-sm">
                                        <div class="thumb">
                                            <a href="package-details.jsp">
                                                <img src="./assets/images/sidebar/sb-binhhung.jpg" alt="">
</a>
                                        </div>
                                        <div class="info">
                                            <h6><a href="package-details.jsp">DU LỊCH ĐẢO BÌNH HƯNG</a></h6>
                                            <div class="price">
                                                <span>Chỉ Từ</span>
                                                <h6>1.490.000 ₫ <span>1 Người</span></h6>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="package-sm">
                                        <div class="thumb">
                                            <a href="package-details.jsp">
                                                <img src="./assets/images/sidebar/sb-namdu.jpg" alt="">
</a>
                                        </div>
                                        <div class="info">
                                            <h6><a href="package-details.jsp">DU LỊCH: KHÁM PHÁ QUẦN ĐẢO NAM DU</a></h6>
                                            <div class="price">
                                                <span>Chỉ Từ</span>
                                                <h6>2.190.000 ₫ <span>1 Người</span></h6>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </aside>
                        
                       
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

    <script>
        jQuery(function () {
            const list = $('#group-comment');
            const listComment = list.children();
            const displayProduct =3;
            const showMoreDiv = $('#show-more-div');
            let page =1 ;
           if (listComment.length ===0) {
            showMoreDiv.append(`
                <span id="show-more-button" style="font-weight: 500;color: var(--c-primary);;">Chưa Có Đánh Giá</span>
            `);   
           }else if (listComment.length <= 3) {
            $('#show-more-button').remove();
                  

           }else {
            showMoreDiv.append(`
                <span id="show-more-button" style="font-weight: 500;color: var(--c-primary);cursor: pointer;">Xem Thêm Đánh Giá</span>
            `); 
           }
              
            
              
            console.log(listComment)
          
                 for (let j = 0; j < listComment.length; j++) {
                     listComment[j].classList.add('display-hide');
                     console.log(listComment[j])
                    
                };
                
            function displayItem(listComment,list,displayProduct,page) {
                page--;
                for (let j = 0; j < listComment.length; j++) {
                   listComment[j].classList.remove('display-hide');
                    
                }
                for (let j = 0; j < listComment.length; j++) {
                   listComment[j].classList.add('display-hide');
                    
                }
                let loop_end = displayProduct * page;
                let renderItem = listComment.slice(0,loop_end+displayProduct);
                for (let index = 0; index < renderItem.length; index++) {
                    renderItem[index].classList.toggle('display-hide');   
                }
                if (listComment.length === renderItem.length) {
                   $('#show-more-button').remove();
                    showMoreDiv.append(`
                        <span id="show-less-button" style="font-weight: 500;color: var(--c-primary);cursor: pointer;">Thu Gọn Đánh Giá</span>
                    `); 
                    jQuery(function () {
          
                        jQuery("#show-less-button").click(function () {
                           
                            page = 1;
                            $('#show-less-button').remove();
                            showMoreDiv.append(`
                                <span id="show-more-button" style="font-weight: 500;color: var(--c-primary);cursor: pointer;">Xem Thêm Đánh Giá</span>
                             `); 
                             jQuery(function () {
          
                                jQuery("#show-more-button").click(function () {
                                    page++;
                                    displayItem(listComment,list,displayProduct,page);
                                    });
                            });
                            displayItem(listComment,list,displayProduct,page);
                        });
                     });
                }
            };
            displayItem(listComment,list,displayProduct,page);
           
            jQuery(function () {
          
            jQuery("#show-more-button").click(function () {
                page++;
                displayItem(listComment,list,displayProduct,page);
                 });
            });
           

        });
    </script>
</body>

</html>