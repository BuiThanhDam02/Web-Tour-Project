<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html >

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
                        <h2>Nhập thông tin khách hàng</h2>
                        <form action="Booking-Tour-card.jsp" id="booking-form">
                            <div class="booking-form-wrapper">
                                <div class="custom-input-group">
                                    <input type="text" placeholder="Họ Tên" id="name">
                                </div>
                                <div class="custom-input-group">
                                    <input type="email" placeholder="Email" id="email">
                                </div>
                                <div class="custom-input-group">
                                    <input type="tel" placeholder="Số Điện Thoại" id="phone">
                                </div>
                                <div class="custom-input-group">
                                    <input type="text" placeholder="Địa chỉ" id="diachi">
                                </div>
                                <!-- <div class="custom-input-group">
                                    <i class="bi bi-chevron-down"></i>
                                    <select id="ticket_type">
<option selected>Loại Vé</option>
<option value="1">Tickets Type 1</option>
<option value="2">Tickets Type 2</option>
<option value="3">Tickets Type 3</option>
</select>
                                </div> -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="custom-input-group">
                                            <i class="bi bi-chevron-down"></i>
                                            <select id="truist-adult">
<option selected>Người Lớn</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
</select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="custom-input-group ">
                                            <i class="bi bi-chevron-down"></i>
                                            <select id="tourist-child">
<option selected>Trẻ Em</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
</select>
                                        </div>
                                    </div>
                                </div>
                                <div class="custom-input-group">
                                    <i class="bi bi-calendar3"></i>
                                    <input placeholder="Chọn Ngày" type="text" name="checkIn" id="datepicker2" value="" class="calendar">
                                </div>
                                <div class="custom-input-group">
                                    <textarea cols="20" rows="7" placeholder="Tin Nhắn"></textarea>
                                </div>
                                <div class="custom-input-group">
                                    <div class="submite-btn">
                                        <button type="submit">Tiếp tục</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 tour-detail-booking" style="margin-left: 4rem;border: 1px solid #e0e0e0;">
                    <div class="error-content text-center ">
                        <h2>Thông tin chuyến đi</h2>
                        <div class="group-checkout">
                            
                            <p class="package-title">Tour trọn gói <span> (6 khách)</span></p>
                            <div class="product" style="margin-top: 1rem;">
                            <div class="product-image">
                                <img src="././assets/images/package/pac-033.jpg" class="img-fluid" alt="image">
                            </div>
                            <div class="product-content">
                            <p class="title" style="color: #2d4271; font-weight: 600;">Miền Tây - Bến Tre - Trà Vinh- Cồn Chim - Nụ Cười Mê Kông </p>
                            </div>
                            </div>
                            <div class="go-tour" >
                                <div class="start">
                                    <i class="fal fa-calendar-minus"></i>
                                    <div class="start-content">
                                        <span>Bắt đầu chuyến đi</span>
                                        <p class="time" style="color: #2d4271; font-weight: 600;">T7, 19 Tháng 11, 2022</p>
                                        <p class="from"></p>
                                    </div>
                                </div>
                                <div class="end">
                                    <i class="fal fa-calendar-minus"></i>
                                    <div class="start-content">
                                        <span >Kết thúc chuyến đi</span>
                                        <p class="time" style="color: #2d4271; font-weight: 600;">CN, 20 Tháng 11, 2022</p>
                                        <p class="from"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="detail" style="display: flex;justify-content: center;align-items: center;">
                                <table style="width: 90%;">
                                    <tbody><tr>
                                    <th class="l1"></th>
                                    <th class="l2 text-right">
                                  
                                    </th>
                                    </tr>
                                    <tr>
                                    <td>Người lớn</td>
                                    <td class="t-price text-right" id="AdultPrice">0 x 1990000₫</td>
                                    </tr>
                                    <tr>
                                    <td>Trẻ em</td>
                                    <td class="t-price text-right" id="ChildrenPrice">0 x 990000₫</td>
                                    </tr>
                                    <tr>
                                        <td>Số lượng</td>
                                        <td><span class="fal fa-users" id="AmoutPerson" style="color: #2d4271; font-weight: 600;font-size: 17px;">0 người</span> 
                                        <p class="add-more"style="font-size: 12px;" ><span id="AmoutAdult">0 người lớn</span> <span id="AmoutChild">0 trẻ em</span></p></td>
                                    </tr>
                                    
                                    
                                        <tr>
                                            <td>Tổng cộng</td>
                                            <td class="t-price text-right" id="tongcong"><span>0</span><span>₫</span></td>
                                            </tr>
                                    
                                    <tr class="pt hardCode" id="promotiontitle">
                                    <td>Khuyến mãi</td>
                                    <td class="t-price text-right" id="GiaTriKhuyenMai"><span>0</span><span>%</span></td>
                                    </tr>
                                    <td>Tiền khuyến mãi</td>
                                    <td class="t-price text-right" id="TienKhuyenMai"><span>-</span><span>0</span><span>₫</span></td>
                                    </tr>
                                    
                                    <tr id="promotiontitletotal" style="display:none">
                                    <td>Thành tiền</td>
                                    <td class="t-price text-right" id="PromotionTotalPrice"></td>
                                    </tr>
                                    <tr style="display:none">
                                    <td id="discountTitle">noidia</td>
                                    <td id="discountPrice"></td>
                                    </tr>
                                    
                                   
                                    
                                
                                    <tr class="total">
                                    <td style="color: #2d4271; font-weight: 600;font-size: 20px;">Thành Tiền</td>
                                    <td class="t-price text-right" id="TotalPrice" style="color: red; font-weight: 600;font-size: 18px;"><span>0</span><span>₫</span></td>
                                    <td class="t-price text-right" style="display: none;" id="TotalPricetemp">2490000</td>
                                    <td class="t-price text-right" style="display: none;" id="TotalOptionPrice"> 0</td>
                                    </tr>
                                    </tbody>
                                </table>
                            <div>
                            
                            </div>
                            </div>
                          
                            
                            
                        
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
    <script>
        jQuery(function () {
            const adultPrice = $("#AdultPrice");
            let numAdult = 0;
            let numChild = 0 ;
            const touristAdult = $("#truist-adult");
            const touristChild = $("#tourist-child");
            const childPrice = $("#ChildrenPrice");
            const sumPerson = $("#AmoutPerson");
            const sumAdult = $('#AmoutAdult');
            const sumChild = $('#AmoutChild');
            const tongcong = $('#tongcong');
            const giaTrivoucher = $('#GiaTriKhuyenMai');
            let voucherValue = parseInt(giaTrivoucher.children()[0].innerText);
            const tienVoucher = $('#TienKhuyenMai');
            const totalPrice = $('#TotalPrice');
            let childPriceValue =0;
            let adultPriceValue =0;
           
            touristAdult.on('change' , function (e) {
                var valueSelected = this.value;
                if (valueSelected === 'Người Lớn') {
                    let textInner =  adultPrice[0].innerHTML;
                    let textList= textInner.split(" ");
                    numAdult = 0;
                    adultPriceValue =0;
                    adultPrice[0].innerHTML = `${numAdult} ${textList[1]} ${textList[2]}`;
                    updateAmount();
                }else{
                   let textInner =  adultPrice[0].innerText;
                    let textList= textInner.split(" ");
                    numAdult = parseInt(valueSelected);
                    adultPriceValue = parseInt(textList[2].split('₫')[0]);
                    
                    adultPrice[0].innerText = `${numAdult} ${textList[1]} ${textList[2]}`;
                    updateAmount();
                }

            });

            touristChild.on('change' , function (e) {
                var valueSelected = this.value;
                if (valueSelected === 'Trẻ Em') {
                    let textInner =  childPrice[0].innerText;
                    let textList= textInner.split(" ");
                    numChild = 0;
                    childPriceValue =0;
                    childPrice[0].innerText = `${numChild} ${textList[1]} ${textList[2]}`;
                    updateAmount();
                }else{
                   let textInner =  childPrice[0].innerText;
                    let textList= textInner.split(" ");
                    numChild = parseInt(valueSelected);
                    childPriceValue = parseInt(textList[2].split('₫')[0]);
                   
                    childPrice[0].innerText = `${numChild} ${textList[1]} ${textList[2]}`;
                    updateAmount();
                }

            });
            function updateAmount() {
                let ti =  sumPerson[0].innerText;
                let tl= ti.split(" ");
                sumPerson[0].innerText = `${numAdult+numChild} ${tl[1]}`;

                let cti =  sumChild[0].innerText;
                let ctl= cti.split(" ");
                sumChild[0].innerText = `${numChild} ${ctl[1]} ${ctl[2]}`;

                let ati =  sumAdult[0].innerText;
                let atl= ati.split(" ");
                sumAdult[0].innerText = `${numAdult} ${atl[1]} ${atl[2]}`;
               
                let tongcongtien =(numAdult * adultPriceValue)+(numChild* childPriceValue);
                tongcong.children()[0].innerText = tongcongtien;
                let tongtienkhuyenmai = tongcongtien * (voucherValue/100);
                let thanhtien = tongcongtien -tongtienkhuyenmai;
                tienVoucher.children()[1].innerText = tongtienkhuyenmai ;
                
                totalPrice.children()[0].innerText = thanhtien;
            }

        })
    </script>
</body>

</html>