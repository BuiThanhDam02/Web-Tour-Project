<%@ page import="vn.edu.hcmuaf.fit.bean.TourPackage" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >

<head>
  <title>Thêm sản phẩm | Quản trị Admin</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.2.0/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
  <!-- <script>

    function readURL(input, thumbimage) {
      if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
        var reader = new FileReader();
        reader.onload = function (e) {
          $("#thumbimage").attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
      else { // Sử dụng cho IE
        $("#thumbimage").attr('src', input.value);

      }
      $("#thumbimage").show();
      $('.filename').text($("#uploadfile").val());
      $('.Choicefile').css('background', '#14142B');
      $('.Choicefile').css('cursor', 'default');
      $(".removeimg").show();
      $(".Choicefile").unbind('click');

    }
    $(document).ready(function () {
      $(".Choicefile").bind('click', function () {
        $("#uploadfile").click();

      });
      $(".removeimg").click(function () {
        $("#thumbimage").attr('src', '').hide();
        $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
        $(".removeimg").hide();
        $(".Choicefile").bind('click', function () {
          $("#uploadfile").click();
        });
        $('.Choicefile').css('background', '#14142B');
        $('.Choicefile').css('cursor', 'pointer');
        $(".filename").text("");
      });
    })
  </script> -->
</head>

<body class="app sidebar-mini rtl">
  <style>
    .Choicefile {
      display: block;
      background: #14142B;
      border: 1px solid #fff;
      color: #fff;
      width: 150px;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      padding: 5px 0px;
      border-radius: 5px;
      font-weight: 500;
      align-items: center;
      justify-content: center;
    }

    .Choicefile:hover {
      text-decoration: none;
      color: white;
    }

    #uploadfile,
    .removeimg {
      display: none;
    }

    #thumbbox {
      position: relative;
      width: 100%;
      margin-bottom: 20px;
    }

    .removeimg {
      height: 25px;
      position: absolute;
      background-repeat: no-repeat;
      top: 5px;
      left: 5px;
      background-size: 25px;
      width: 25px;
      /* border: 3px solid red; */
      border-radius: 50%;

    }

    .removeimg::before {
      -webkit-box-sizing: border-box;
      box-sizing: border-box;
      content: '';
      border: 1px solid red;
      background: red;
      text-align: center;
      display: block;
      margin-top: 11px;
      transform: rotate(45deg);
    }

    .removeimg::after {
      /* color: #FFF; */
      /* background-color: #DC403B; */
      content: '';
      background: red;
      border: 1px solid red;
      text-align: center;
      display: block;
      transform: rotate(-45deg);
      margin-top: -2px;
    }
  </style>
  <!-- Navbar-->
  <%@include file="header.jsp"%>
  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <jsp:include page="leftSideBar.jsp">
    <jsp:param name="isCurrent" value="tourTable"/>
  </jsp:include>


  <%
    TourPackage tour = request.getAttribute("tour")==null?null:(TourPackage) request.getAttribute("tour");
    String error = request.getAttribute("error")==null?null:(String) request.getAttribute("error");
  %>
  <main class="app-content">
    <div class="app-title">
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item">Danh sách Tour</li>
        <li class="breadcrumb-item"><a href="#"><%=tour==null?"Thêm Tour du lịch":"Sửa Tour du lịch"%></a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-12">
        <span style="font-size: 1rem;color: red"><%=error==null?"":error%></span>
        <div class="tile">
          <form class="row">
          <h3 class="tile-title"><%=tour==null?"Tạo mới Tour du lịch":"Sửa Tour du lịch"%></h3>
          <div class="tile-body">

            <div class="row element-button">
              <div class="col-sm-2">
                <a class="btn btn-add btn-sm" data-toggle="modal" data-target="#exampleModalCenter"><i
                    class="fas fa-folder-plus"></i> Thêm hình ảnh</a>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-add btn-sm" data-toggle="modal" data-target="#adddanhmuc"><i
                    class="fas fa-folder-plus"></i> Thêm hướng dẫn viên</a>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-add btn-sm" data-toggle="modal" data-target="#addtinhtrang"><i
                    class="fas fa-folder-plus"></i> Thêm mã giảm giá</a>
              </div>
            </div>

              <div class="form-group col-md-3">
                <label class="control-label">Mã Tour </label>
                <input class="form-control" type="number" placeholder="">
              </div>
              <div class="form-group col-md-3">
                <label class="control-label">Tên Tour</label>
                <input class="form-control" type="text">
              </div>
              <div class="form-group col-md-3">
                <label for="exampleSelect1" class="control-label">Địa điểm</label>
                <select class="form-control" id="exampleSelect1">
                  <option>-- Chọn địa điểm --</option>
                  <option>Bàn ăn</option>
                  <option>Bàn thông minh</option>
                  <option>Tủ</option>
                  <option>Ghế gỗ</option>
                  <option>Ghế sắt</option>
                  <option>Giường người lớn</option>
                  <option>Giường trẻ em</option>
                  <option>Bàn trang điểm</option>
                  <option>Giá đỡ</option>
                </select>
              </div>


              <div class="form-group  col-md-3">
                <label class="control-label">Số lượng</label>
                <input class="form-control" type="number">
              </div>
              <div class="form-group col-md-3 ">
                <label for="exampleSelect1" class="control-label">Trạng thái</label>
                <select class="form-control" id="exampleSelect1">
                  <option>-- Chọn trạng thái --</option>
                  <option>Sắp tới</option>                 
                  <option>Đang bán</option>
                  <option>Hết bán</option>
                  <option>Tạm ngưng</option>
                </select>
              </div>
             
              <div class="form-group col-md-12">
                <label class="control-label">Ảnh sản phẩm</label>
                <div id="myfileupload">
                  <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);" />
                </div>
                <div id="thumbbox">
                  <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                  <a class="removeimg" href="javascript:"></a>
                </div>
                <div id="boxchoice">
                  <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i> Chọn ảnh</a>
                  <p style="clear:both"></p>
                </div>

              </div>
              <div class="form-group col-md-12">
                <label class="control-label">Mô tả sản phẩm</label>
                <textarea class="form-control" name="mota" id="mota"></textarea>
                <!-- <script>CKEDITOR.replace('mota');</script> -->
              </div>
              <div class="form-group col-md-12" style="font-weight: bold;font-size: 1rem;">
                Loại vé
                <div style="width: 99%;background-color: var(--primary);padding: 0.05rem 0.1rem;"></div>
              </div>
              <div class="form-group col-md-3">
                <span>Vé người lớn (trên 18 tuổi)</span>
              </div>
              <div class="form-group col-md-3">
                <label class="control-label">Giá vé </label>
                <input class="form-control" type="number" placeholder="">
              </div>
              <br>
              <br>
              <div class="form-group col-md-3">
                <span>Vé trẻ em (dưới 18 tuổi)</span>
              </div>
              <div class="form-group col-md-3">
                <label class="control-label">Giá vé </label>
                <input class="form-control" type="number" placeholder="">
              </div>
              <br>
              <br>

              <div class="form-group col-md-12" style="font-weight: bold;font-size: 1rem;">
                Chi tiết Tour
                <div style="width: 99%;background-color: var(--primary);padding: 0.05rem 0.1rem;"></div>
              </div>
              <div class="form-group col-md-4">
                <label class="control-label">Ngày khởi hành</label>
                <input class="form-control" type="date">
              </div>
              <div class="form-group col-md-4">
                <label class="control-label">Ngày kết thúc</label>
                <input class="form-control" type="date">
              </div>
              <div class="form-group col-md-3">
                <label for="exampleSelect1" class="control-label">Nơi khởi hành</label>
                <select class="form-control" id="exampleSelect1">
                  <option>-- Chọn địa điểm --</option>
                  <option>Bàn ăn</option>
                  <option>Bàn thông minh</option>
                  <option>Tủ</option>
                  <option>Ghế gỗ</option>
                  <option>Ghế sắt</option>
                  <option>Giường người lớn</option>
                  <option>Giường trẻ em</option>
                  <option>Bàn trang điểm</option>
                  <option>Giá đỡ</option>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="exampleSelect1" class="control-label">Phương tiện di chuyển</label>
                <select class="form-control" id="exampleSelect1">
                  <option>-- Phương tiện --</option>
                  <option>Máy bay</option>
                  <option>Xé khách</option>
                  <option>Du thuyền</option>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="exampleSelect1" class="control-label">Hạng mục Tour</label>
                <select class="form-control" id="exampleSelect1">
                  <option>-- Hạng mục --</option>
                  <option>Phiêu lưu</option>
                  <option>Du lịch</option>
                  <option>Du lịch đôi</option>
                  <option>Du lịch đơn thân</option>
                  <option>Tuần trăng mật</option>
                  <option>Bãi biển</option>
                  <option>Thám hiểm núi</option>
                </select>
              </div>
              <br>
              <br>

              <div class="form-group col-md-12" style="font-weight: bold;font-size: 1rem;">
                Kế hoạch chi tiết từng ngày
                <div class="col-sm-2" style="float: right;">
                  <button class="btn btn-primary btn-sm success add_day" type="button" title="Thêm ngày" >
                    <i class="fas fa-plus"></i>
                  </button>
                </div>
                <div style="margin-top: 0.7rem;width: 99%;background-color: var(--primary);padding: 0.05rem 0.1rem;"></div>
              </div>
              <ul style="list-style: none;width: 100%;" id="group_tour_per_day" >
               
              </ul>
             
              <br>
              <!-- <div class="form-group col-md-12" id="row_tour_per_day" style="display: flex;">
                <div class="form-group col-md-2">
                  <label class="control-label">Ngày </label>
                  <input class="form-control" type="number">
                </div>
                <div class="form-group col-md-4">
                  <label class="control-label">Tiêu đề của ngày</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group col-md-6">
                  <label class="control-label">Mô tả ngày</label>
                  <textarea class="form-control" name="mota" id="mota"></textarea>
                  <script>CKEDITOR.replace('mota');</script>
                </div>
              </div> -->
            
            
              
              
              



          </div>
          <button class="btn btn-save" type="button">Lưu lại</button>
          <a class="btn btn-cancel" href="table-data-product.jsp">Hủy bỏ</a>
          </form>
        </div>
      </div>
    </div>
  </main>


  <!--
  MODAL CHỨC VỤ 
-->
  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">

        <div class="modal-body">
          <div class="row">
            <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Thêm mới nhà cung cấp</h5>
              </span>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Nhập tên chức vụ mới</label>
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



  <!--
  MODAL huong dan vien
-->
  <div class="modal fade" id="adddanhmuc" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">

        <div class="modal-body">
          <div class="row">
            <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Thêm mới hướng dẫn viên </h5>
              </span>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Nhập ID hướng dẫn viên</label>
              <input class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Hướng dẫn viên hiện đang có</label>
              <ul style="padding-left: 20px;">
                <li>hà</li>
              <li>Meo</li>
              
              </ul>
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




  <!--
  MODAL ma giam gia
-->
  <div class="modal fade" id="addtinhtrang" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">

        <div class="modal-body">
          <div class="row">
            <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Thêm mới Voucher</h5>
              </span>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Nhập ID Voucher mới</label>
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
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <!-- <script src="src/jquery.table2excel.js"></script> -->
   <script src="js/main.js"></script>
   <!-- The javascript plugin to display page loading on top-->
   <script src="js/plugins/pace.min.js"></script>
   <!-- Page specific javascripts-->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
   <!-- Data table plugin-->
   <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
   <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript">
    
    
    
    const listDay = $("#group_tour_per_day");
    jQuery(function () {         
      jQuery(".add_day").click(function (e) {  
        var listChildren = listDay.children("#item_tour_per_day");
    

            listDay.append(`
            <li id="item_tour_per_day">
                  <div class="form-group col-md-12"  style="display: flex;">
                    
                    <div class="form-group col-md-1">
                      <label class="control-label">Ngày </label>
                      <input class="form-control" id="item_tour_per_day_value" type="number" value=${listChildren.length+1} disabled>
                    </div>
                    <div class="form-group col-md-3">
                      <label class="control-label">Tiêu đề của ngày</label>
                      <input class="form-control" id="item_tour_per_day_title" value="" type="text">
                    </div>
                    <div class="form-group col-md-7">
                      <label class="control-label">Mô tả ngày</label>
                      <textarea class="form-control" name="mota" value="" id="mota"></textarea>
                      
                    </div>
                    <div class="form-group col-md-0.5">                     
                      <button class="btn btn-primary btn-sm trash" type="button" title="Xóa ngày"
                                            ><i class="fas fa-trash-alt"></i> 
                      </button>
                    </div>
                  </div>
                </li>
            `);
              
            jQuery(function () {
          
          jQuery(".trash").click(function (e) {
            
              swal({
                  title: "Cảnh báo",
                  text: "Bạn có chắc chắn là muốn xóa ngày này?",
                  buttons: ["Hủy bỏ", "Đồng ý"],
              })
                  .then((willDelete) => {
                    
                      if (willDelete) {
                        
                        var i = e.currentTarget.parentNode.parentNode.parentNode;
                      //  console.log(i) 
                       listDay.children("#item_tour_per_day").map((index,node) => {
                          if (node.querySelector("#item_tour_per_day_value").value === i.querySelector("#item_tour_per_day_value").value) {
                            node.remove();
                          }
                       })
                       listDay.children("#item_tour_per_day").map((index,node) => {
                          node.querySelector("#item_tour_per_day_value").value = index +1;
                       })
                          swal("Đã xóa thành công.!", {
                            
                          });
                      }
                  });
          });
      });
          });
      });
     
    //   const inpFile = document.getElementById("inpFile");
    // const loadFile = document.getElementById("loadFile");
    // const previewContainer = document.getElementById("imagePreview");
   
    // const previewImage = previewContainer.querySelector(".image-preview__image");
    // const previewDefaultText = previewContainer.querySelector(".image-preview__default-text");
    // inpFile.addEventListener("change", function () {
    //   const file = this.files[0];
    //   if (file) {
    //     const reader = new FileReader();
    //     previewDefaultText.style.display = "none";
    //     previewImage.style.display = "block";
    //     reader.addEventListener("load", function () {
    //       previewImage.setAttribute("src", this.result);
    //     });
    //     reader.readAsDataURL(file);
    //   }
    // });

  </script>
</body>

</html>