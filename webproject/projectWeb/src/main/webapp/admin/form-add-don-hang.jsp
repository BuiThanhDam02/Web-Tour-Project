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
  <%@include file="header.jsp"%>
  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <%@include file="leftSideBar.jsp"%>
    <main class="app-content">
      <div class="app-title">
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item">Danh sách đơn đặt tour</li>
          <li class="breadcrumb-item"><a href="#">Thêm đơn hàng</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">Tạo mới đơn hàng</h3>
            <div class="tile-body">
              <form class="row">
                <div class="form-group  col-md-4">
                  <label class="control-label">ID đơn hàng ( Nếu không nhập sẽ tự động phát sinh )</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">ID khách hàng</label>
                  <input class="form-control" type="text" >
                </div>
                
                <div class="form-group  col-md-4">
                  <label class="control-label">Ngày làm đơn hàng</label>
                  <input class="form-control" type="date" >
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">ID Tour</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Số lượng vé người lớn</label>
                  <input class="form-control" type="number">
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Số lượng vé trẻ em</label>
                  <input class="form-control" type="number">
                </div>

                <div class="form-group col-md-4">
                  <label for="exampleSelect1" class="control-label">Tình trạng</label>
                  <select class="form-control" id="exampleSelect1">
                    <option>-- Chọn tình trạng --</option>
                    <option>Hoàn thành</option>
                    <option>Đã xử lý</option>
                    <option>Đang chờ</option>
                    <option>Đã hủy</option>
                  </select>
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Ghi chú đơn hàng</label>
                  <textarea class="form-control" rows="4" ></textarea>
                </div>  
                
          </div>
          <button class="btn btn-save" type="button">Lưu lại</button>
          <a class="btn btn-cancel" href="table-data-oder.jsp">Hủy bỏ</a>
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