<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Danh sách đơn hàng | Quản trị Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.2.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>

<body onload="time()" class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li><a class="app-nav__item" style="background-color: var(--primary);color: white;" href="/index.jsp"><i class="fa-solid fa-right-from-bracket"></i></a>

        </li>
        <li><a class="app-nav__item" style="background-color: var(--primary);color: white;" ><i class="fa-regular fa-comment"></i> </a></li>
        <li><a class="app-nav__item" style="background-color: var(--primary);color: white;" ><i class="fa-regular fa-bell"></i> </a></li>
        <div class="col-divide" style="background-color: rgb(185, 185, 185); width: 0.05rem;height: 100%; margin-right: 1rem;"></div>
        <li>
            <div class="app-header_user">
                <span class="app-header_user-name"><b>Admin</b></span>
                <img class="app-header_user-avatar" src="../assets/images/guide/guide-md10.png"
                     alt="User Image">


            </div>
        </li>

        <!-- User Menu-->
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user">
        <p class="app-sidebar__user-designation">Chào mừng Admin trở lại</p>

    </div>
    <hr>
    <ul class="app-menu">
        <!-- <li><a class="app-menu__item haha" href="phan-mem-ban-hang.html"><i class='app-menu__icon bx bx-cart-alt'></i>
            <span class="app-menu__label">POS Bán Hàng</span></a></li> -->
        <li><a class="app-menu__item " href="index.html"><i class='app-menu__icon bx bx-tachometer'></i><span
                class="app-menu__label">Bảng điều khiển</span></a></li>
        <li><a class="app-menu__item " href="table-data-table.html"><i class='app-menu__icon bx bx-id-card'></i> <span
                class="app-menu__label">Quản lý hướng dẫn viên</span></a></li>
        <li><a class="app-menu__item" href="table-data-customer.html"><i class='app-menu__icon bx bx-user-voice'></i><span
                class="app-menu__label">Quản lý khách du lịch</span></a></li>
        <li><a class="app-menu__item" href="table-data-product.html"><i
                class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý Tour</span></a>
        </li>
        <li><a class="app-menu__item " href="table-data-oder.html"><i class='app-menu__icon bx bx-task'></i><span
                class="app-menu__label ">Quản lý đơn đặt Tour</span></a></li>
        <li><a class="app-menu__item" href="table-data-voucher.html"><i class='app-menu__icon bx bx-run'></i><span
                class="app-menu__label">Quản lý Voucher
          </span></a></li>

        <!-- <li><a class="app-menu__item" href="table-data-money.html"><i class='app-menu__icon bx bx-dollar'></i><span
              class="app-menu__label">Bảng kê lương</span></a></li> -->
        <li><a class="app-menu__item active" href="table-data-blog.html"><i
                class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý Blog</span></a>
        </li>

        <li><a class="app-menu__item" href="quan-ly-bao-cao.html"><i
                class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Báo cáo doanh thu</span></a>
        </li>
        <li><a class="app-menu__item" href="page-calendar.html"><i class='app-menu__icon bx bx-calendar-check'></i><span
                class="app-menu__label">Lịch công tác </span></a></li>
        <!-- <li><a class="app-menu__item" href="#"><i class='app-menu__icon bx bx-cog'></i><span class="app-menu__label">Cài
              đặt hệ thống</span></a></li> -->
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item">Danh sách Blog</li>
            <li class="breadcrumb-item"><a href="#">Thêm Blog</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">Tạo mới Blog</h3>
                <div class="tile-body">
                    <form class="row">
                        <div class="form-group  col-md-4">
                            <label class="control-label">ID Blog</label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="form-group  col-md-4">
                            <label class="control-label">ID Hướng dẫn viên</label>
                            <input class="form-control" type="text" >
                        </div>

                        <div class="form-group  col-md-4">
                            <label class="control-label">Tiêu đề</label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="form-group  col-md-4">
                            <label class="control-label">Ngày viết bài</label>
                            <input class="form-control" type="date" >
                        </div>

                        <div class="form-group  col-md-4">
                            <label class="control-label">Nội dung</label>
                            <textarea class="form-control" ></textarea>
                        </div>

                </div>
                <button class="btn btn-save" type="button">Lưu lại</button>
                <a class="btn btn-cancel" href="table-data-blog.html">Hủy bỏ</a>
            </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
</body>
</html>
