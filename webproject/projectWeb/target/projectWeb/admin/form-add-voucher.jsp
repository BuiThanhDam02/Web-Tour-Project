<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >

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
  <jsp:include page="leftSideBar.jsp">
    <jsp:param name="isCurrent" value="voucherTable"/>
  </jsp:include>
    <main class="app-content">
      <div class="app-title">
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item">Quản lý Voucher</li>
          <li class="breadcrumb-item"><a href="#">Tạo mới</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">Tạo mới danh sách Voucher</h3>
            <div class="tile-body">
              <!-- <div class="row element-button">
                <div class="col-sm-2">
                  <a class="btn btn-add btn-sm" data-toggle="modal" data-target="#exampleModalCenter"><b><i
                        class="fas fa-folder-plus"></i> Tạo tình trạng mới</b></a>
                </div>
  
              </div> -->
              <form class="row">
                <div class="form-group col-md-4">
                  <label class="control-label">ID Voucher</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group col-md-4">
                  <label class="control-label">Ngày bắt đầu</label>
                  <input class="form-control" type="date">
                </div>
                <div class="form-group col-md-4">
                  <label class="control-label">Ngày kết thúc</label>
                  <input class="form-control" type="date">
                </div>
                <div class="form-group col-md-4">
                  <label class="control-label">Giá trị khuyến mãi</label>
                  <input class="form-control" type="number">
                </div>
                <div class="form-group col-md-4">
                        <label for="exampleSelect1" class="control-label">Trạng thái</label>
                        <select class="form-control" id="exampleSelect1">
                          <option>-- Chọn trạng thái --</option>
                          <option>Khả dụng</option>
                          <option>Hết khả dụng</option>
                          
                        </select>
                      </div>
                     
                  
                  
            <div class="tile-footer">
            </div>
          </div>
          <button class="btn btn-save" type="button">Lưu lại</button>
          <a class="btn btn-cancel" href="table-data-voucher.jsp">Hủy bỏ</a>
        </div>
    </main>

 <!--
  MODAL
-->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
data-backdrop="static" data-keyboard="false">
<div class="modal-dialog modal-dialog-centered" role="document">
  <div class="modal-content">

    <div class="modal-body">
      <div class="row">
        <div class="form-group  col-md-12">
          <span class="thong-tin-thanh-toan">
            <h5>Tạo trình trạng mới</h5>
          </span>
        </div>
        <div class="form-group col-md-12">
          <label class="control-label">Nhập tình trạng</label>
          <input class="form-control" type="text" required>
        </div>
      </div>
      <BR>
      <button class="btn btn-save" type="button">Lưu lại</button>
      <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
      <BR>
    </div>
    <div class="modal-footer">
    </div>
  </div>
</div>
</div>
<!--
MODAL
-->

 <!-- Essential javascripts for application to work-->
 <script src="js/jquery-3.2.1.min.js"></script>
 <script src="js/popper.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
 <script src="js/main.js"></script>
 <!-- The javascript plugin to display page loading on top-->
 <script src="js/plugins/pace.min.js"></script>

</body>

</html>