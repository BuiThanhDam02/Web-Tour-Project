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
    <link rel="stylesheet" href="./assets/css/profile.css">
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
                                <div class="wrapper p-md-4">
                                    <div class="heading">
                                        <h5 class="fw-bold">Đổi mật khẩu</h5>
                                        <p class="text-muted mb-4">
                                            Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác
                                        </p>
                                    </div>
                                    <form class="row change-password py-4">
                                        <div class="col-12">
                                            <div class="mb-3 row">
                                                <label for="inputOldPassword" class="col-sm-3 col-form-label">Mật khẩu cũ</label>
                                                <div class="col-sm-7">
                                                    <input class="form-control" id="Password" name="Password" placeholder="Mật khẩu cũ" type="password" value="" />
                                                </div>
                                                <div class="col d-inline-flex align-items-center">
                                                    <a class="miss-pass" style="color: var(--c-primary);" href="forgotPassword.jsp">Quên mật khẩu?</a>
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <label for="inputNewPassword" class="col-sm-3 col-form-label">Mật khẩu mới</label>
                                                <div class="col-sm-7">
                                                    <input class="form-control" id="PasswordNew" name="PasswordNew" placeholder="Mật  khẩu mới" type="password" value="" />
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <label for="inputConfirmPassword" class="col-sm-3 col-form-label">Nhập lại mật khẩu mới</label>
                                                <div class="col-sm-7">
                                                    <input class="form-control" id="RePasswordNew" name="RePasswordNew" placeholder="Nhập lại mật khẩu mới" type="password" value="" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3"></div>
                                                <div class="col-md-7">
                                                    <button class="btn btn-primary w-100" style="background-color: var(--c-primary);" onclick="ChangePasswordAccount();">Đổi mật khẩu&nbsp;&nbsp;<i class="fas fa-sign-in-alt" aria-hidden="true"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
    
                        </div>
                    </div>
                </div>
            </main>
            <script type="text/javascript">
                function ChangePasswordAccount() {
                    Password = $("#Password").val();
                    PasswordNew = $("#PasswordNew").val();
                    RePasswordNew = $("#RePasswordNew").val();
    
                    // Tương tác với server
                    $.ajax({
                        url: "/Profile/ChangePasswordAccount",
                        data: {
                            Password: Password,
                            PasswordNew: PasswordNew,
                            RePasswordNew: RePasswordNew
                        },
                        success: function(result) {
                            alert(result);
                            if (result == 'Đổi mật khẩu thành công') {
                                window.location.href = '/Profile/ChangePassword';
                            }
                        }
                    });
                }
            </script>
        </main>
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
    <script src="./assets/js/profile.js"></script>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</body>

</html>