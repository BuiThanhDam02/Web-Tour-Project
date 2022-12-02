<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>TraveLab - Khám phá đất nước của chúng ta</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="./assets/images/favicon.png" type="image/gif" sizes="20x20">

    <link rel="stylesheet" href="./assets/css/select2.min.css">

    <link rel="stylesheet" href="./assets/css/jquery.fancybox.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- <link href='./assets/css/boxicons.min.css' rel='stylesheet'> -->

    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css">

    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="./assets/css/animate.min.css">

    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">
</head>

<body>
  <style>
      .go-tour{
          display: flex;
          justify-content: space-around;
          gap: 1rem;
      };
      .time{
       color: #2d4271;
      }
     .detail table {
    width: 100%;
};
table {
    caption-side: bottom;
    border-collapse: collapse;
    
};

  </style>

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
                <h2 class="breadcrumb-title">Đặt Tour</h2>
                <ul class="d-flex justify-content-center breadcrumb-items">
                    <li class="breadcrumb-item"><a href="index.jsp">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Đặt Tour</li>
                </ul>
            </div>
        </div>
    </div>


    <div class="error-wrapper pt-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="error-content text-center">
                        <h2>Thanh toán</h2>
                        <form action="#" method="post" id="booking-form">
                            <div class="booking-form-wrapper">
                               
                                
                                    <div class="custom-input-group ">
                                        <i class="bi bi-chevron-down"></i>
                                        <select id="card-list">
                                            <option selected>Chọn thẻ</option>
                                            <option value="1012353636">1012353636 - Ngân hàng VCBank</option>
                                            <option value="314430002842">314430002842 - Ngân hàng BIDV</option>

                                        </select>
                                    </div>
                                    
                                    <span style="color: black; font-weight: 500;">Hoặc thêm thẻ nếu quý khách chưa có</span>
                                   
                                    <div class="custom-input-group">
                                        <input type="text" placeholder="Tên trên thẻ" id="name">
                                        <input type="number" placeholder="Số thẻ" id="numberCard">
                                        <input type="date" id="cardExpiredDate" placeholder="MM/YY" class="form-control" aria-describedby="cardExpiredDateBlock" />
                                        <select id="card-list" style="border: 1px solid #ced4da;">
                                            <option selected>Chọn thẻ</option>
                                            <option value="Ngân hàng VCBank">Ngân hàng VCBank</option>
                                            <option value="Ngân hàng BIDV">Ngân hàng BIDV</option>
                                            
                                        </select>  
                                        
                                    </div>
                            </div>
                              
                              
                                <div class="custom-input-group">
                                    <div class="submite-btn">
                                        <button type="submit">Thanh toán</button>
                                    </div>
                                </div>
                            
                        </form>
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
    <script>
       
    </script>
</body>

</html>