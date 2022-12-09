<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html >

<head>
    <title>TravelLab - Khám phá đất nước của chúng ta</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../assets//images/favicon.png" type="image/gif" sizes="20x20">

    <link rel="stylesheet" href="../assets//css/select2.min.css">

    <link rel="stylesheet" href="../assets//css/jquery.fancybox.min.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link rel="stylesheet" href="../assets//css/swiper-bundle.min.css">

    <link rel="stylesheet" href="../assets//css/bootstrap.min.css">

    <link rel="stylesheet" href=".../assets//css/animate.min.css">

    <link rel="stylesheet" href="../assets//css/style.css">
    <link rel="stylesheet" href="../assets//css/responsive.css">
    <link rel="stylesheet" href="../assets//css/profile.css">
</head>

<body>





<% User userBox = (User)session.getAttribute("auth")==null?null:(User) session.getAttribute("auth"); %>

    
                            <div class="box-items-left">
                                <div class="wrapper p-4 box-items">
                                  <div class="info d-flex align-items-center mb-md-3">
                                    <div class="image me-3">
                                      <a href="">
                                        <img style="width: 43px; height: 43px"
                                          src="<%=userBox==null?"":userBox.getImageURL()==null?"./assets/images/userDefaultImage.png":userBox.getImageURL()%>"
                                          class="rounded-circle"
                                        />
                                      </a>
                                    </div>
                                    <div class="info-wrapper">
                                      <div>
                                        <h5 class="fw-bold"><%=userBox==null?"User":userBox.getFullName()==null?"":userBox.getFullName()%></h5>
                                        <small
                                          ><a
                                            href="/"
                                            class="__cf_email__"
                                            data-cfemail="83ede4f6fae6edebf4e7e2f7b2bab2b1c3e4eee2eaefade0ecee"
                                            ><%=userBox==null?"[Email chưa&#160;tồn tại]":userBox.getEmail()%></a
                                          ></small
                                        >
                                      </div>
                                      <span id="toggle-profile-menu" class="d-lg-none">
                                        <i class="icon icon--chevron-down"></i>
                                      </span>
                                    </div>
                                  </div>
                                  <nav class="profile-links py-3">
                                    <ul class="list-unstyled mb-0 py-3 pt-md-1">
                                      <li class="mb-1">
                                        <a
                                          class="d-inline-flex align-items-center rounded collapsed"
                                          data-bs-toggle="collapse"
                                          data-bs-target="#getting-started-collapse"
                                          aria-expanded="false"
                                        >
                                          <h6 class="fw-bold">Tài khoản</h6>
                                        </a>
                                        <div
                                          class="collapse "
                                          id="getting-started-collapse"
                                        >
                                          <ul class="list-unstyled fw-normal pb-1 small">
                                            <li>
                                              <a
                                                href="profile.jsp"
                                                class="d-inline-flex align-items-center rounded active"
                                              >
                                                Thông tin cá nhân
                                              </a>
                                            </li>
                                            <li>
                                              <a
                                                href="ChangePassword.jsp"
                                                class="d-inline-flex align-items-center rounded"
                                              >
                                                Đổi mật khẩu
                                              </a>
                                            </li>
                                            <li>
                                              <a
                                                href="PaymentInfo.jsp"
                                                class="d-inline-flex align-items-center rounded"
                                              >
                                                Thông tin thanh toán
                                              </a>
                                            </li>
                                            <li>
                                              <a
                                                href="#"
                                                onclick="LogoutAccount();"
                                                class="d-inline-flex align-items-center rounded"
                                              >
                                                Đăng xuất
                                              </a>
                                            </li>
                                            <li>
                                              <a
                                                href="#"
                                                id="deleteAccount"
                                                data-bs-toggle="modal"
                                                data-bs-target="#deleteAccountModal"
                                                class="d-inline-flex align-items-center rounded"
                                              >
                                                Yêu cầu xóa tài khoản
                                              </a>
                                            </li>
                                          </ul>
                                        </div>
                                      </li>
                                      <li class="mb-1">
                                        <a
                                          class="d-inline-flex align-items-center rounded"
                                          href="Order.jsp"
                                        >
                                          <h6 class="fw-bold">Đơn đặt chỗ</h6>
                                        </a>
                                      </li>
                                      
                                      <li class="mb-1">
                                        <a
                                          class="d-inline-flex align-items-center rounded"
                                          href="Saved.jsp"
                                        >
                                          <h6 class="fw-bold">Yêu thích đã lưu</h6>
                                        </a>
                                      </li>
                                      <li class="mb-1 d-none">
                                        <a
                                          class="d-inline-flex align-items-center rounded"
                                          href="Compared.html"
                                        >
                                          <h6 class="fw-bold">Sản phẩm đã so sánh</h6>
                                        </a>
                                      </li>
                                      <li class="mb-1 d-none">
                                        <a
                                          class="d-inline-flex align-items-center rounded"
                                          href="Voucher.html"
                                        >
                                          <h6 class="fw-bold">
                                            Voucher khuyến mãi của Quý khách
                                          </h6>
                                        </a>
                                      </li>
                                      <li class="mb-1 d-none">
                                        <a
                                          class="d-inline-flex align-items-center rounded"
                                          href="Promotion.html"
                                        >
                                          <h6 class="fw-bold">Chương trình ưu đãi cho user</h6>
                                        </a>
                                      </li>
                                    </ul>
                                  </nav>
                                </div>
                              </div>
                            <div class="modal fade" id="deleteAccountModal" tabindex="-1" aria-labelledby="supportModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">GỬI YÊU CẦU XÓA TÀI KHOẢN</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <label for="ReasonName" class="form-label">Lý do<span class="required-star">*</span></label>
                                                    <input type="text" class="form-control" id="ReasonName" placeholder="Lý do" value="" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" id="btnSendRequest" class="btn btn-primary">Gửi đi</button>
                                        </div>
                                    </div>
                                    }
                                </div>
                            </div>
                            <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                            <script>
                                function LogoutAccount() {
                                    if (!confirm("Xác nhận đăng xuất?")) {
                                        return false;
                                    }
                                    //Logout action
                                    $.ajax({
                                        url: '/AccountMember/LogoutAccount',
                                        type: 'POST',
                                        contentType: 'json',
                                        data: {},
                                        success: function(result) {
                                            if (result.length > 0) {
                                                alert(result);
                                                location.href = '/AccountMember/Login';
                                            }
                                        },
                                        error: function() {
                                            alert("Không thực hiện được");
                                        }
    
                                    })
                                };
    
                                var myModal = new bootstrap.Modal(document.getElementById('deleteAccountModal'), {
                                    keyboard: false
                                })
    
                                $("#deleteAccount").click(function() {
                                    event.preventDefault();
                                    myModal.show();
                                });
    
                                $("#btnSendRequest").click(function() {
                                    event.preventDefault();
                                    var ReasonName = $("#ReasonName").val();
                                    if (ReasonName === "") {
                                        alert("Vui lòng nhập lý do");
                                    } else {
                                        $.ajax({
                                            url: '/Profile/DeleteAccount',
                                            type: 'GET',
                                            /*contentType: 'json',*/
                                            data: {
                                                Reason: ReasonName
                                            },
                                            success: function(result) {
                                                if (result.length > 0) {
                                                    alert(result);
                                                    location.href = '/AccountMember/Login';
                                                } else {
                                                    alert("Xóa tài khoản không thành công");
                                                }
                                            },
                                            error: function() {
                                                alert("Không thực hiện được");
                                            }
    
                                        })
                                    }
                                });
                            </script>
    
    




    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="../assets//js/jquery-3.6.0.min.js"></script>
    <script src="../assets//js/bootstrap.bundle.min.js"></script>
    <script src="../assets//js/chain_fade.js"></script>
    <script src="../assets//js/owl.carousel.min.js"></script>
    <script src="../assets//js/swiper-bundle.min.js"></script>
    <script src="../assets//js/jquery.fancybox.min.js"></script>
    <script src="../assets//js/select2.min.js"></script>
    <script src="../assets//js/jquery-ui.js"></script>

    <script src="../assets//js/main.js"></script>
    <script src="../assets//js/profile.js"></script>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</body>

</html>