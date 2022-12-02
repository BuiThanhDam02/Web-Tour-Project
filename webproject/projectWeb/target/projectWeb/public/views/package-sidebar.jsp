<%@ page import="vn.edu.hcmuaf.fit.bean.Tour" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.Date" %>

<%@ page import="java.text.NumberFormat" %>
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
                <h2 class="breadcrumb-title">Du Lịch</h2>
                <ul class="d-flex justify-content-center breadcrumb-items">
                    <li class="breadcrumb-item"><a href="index.jsp">Trang Chủ</a></li>
                    <li class="breadcrumb-item active">Du Lịch</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="package-sidebar-wrapper pt-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-8" id="bound-parent">
                    <%String text = (String) request.getAttribute("text")!=null?(String) request.getAttribute("text"):null;%>
                    <%if (text != null){%>
                    <div class="row">
                        <div class="col-lg-10 right">
                            <span style="font-size: 1.5rem;font-weight: 600">Bạn đang tìm kiếm với từ khóa: <%=text%></span>
                        </div>
                    </div>
                    <%}%>
                    <div class="row" style="margin-bottom: 1rem;">
                        <div class="col-lg-4 right">
                            <select id="filter-sort-tour" style="border: 1px solid var(--c-primary);">

                                <option selected>Lựa chọn lọc</option>
                                <option value="price-asc">Sắp xếp theo giá tiền tăng dần</option>
                                <option value="price-desc">Sắp xếp theo giá tiền giảm dần</option>
                                <option value="new">Sắp xếp theo theo mới nhất</option>
                            </select>
                        </div>
                        
                    </div>
                    <div class="row" id="group-item">
                        <!-- 10 sp dau tien -->
                        <%
                        List<Tour> list =(List<Tour>)request.getAttribute("list");
                            for (Tour tour:list) {
                                Date curDate = new Date(System.currentTimeMillis());
                                float giaVe= tour.getGiaVe();
                                Locale locale = new Locale("vi");
                                NumberFormat format =  NumberFormat.getCurrencyInstance(locale);
                               String giaVeString = format.format(giaVe).split(",")[0];
                                boolean checkDate = curDate.getTime()-tour.getNgayTao().getTime() <=500000000?true:false;
                                long dateLong = curDate.getTime()-tour.getNgayTao().getTime();
                                String dateString = ""+dateLong;
                                int dem = Integer.parseInt(dateString.substring(0,1));
                                int ngay = dem+1;
                                %>
                        <div class="col-md-6 "  >
                            <div class="package-card-alpha">
                                <div class="package-thumb">
                                    <div class="is-new-tour <%=checkDate?"":"display-hide"%>" id="<%=tour.getNgayTao().toString()%>>"><span >Mới</span></div>
                                    <a href="package-details.jsp"><img src="<%=tour.getImageURL()%>" alt=""></a>
                                    <p class="card-lavel">
                                        <i class="bi bi-clock"></i> <span><%=ngay%> Ngày và <%=dem%>  Đêm</span>
                                    </p>
                                </div>
                                <div class="package-card-body">
                                    <h3 class="p-card-title"><a href="package-details.jsp"><%=tour.getTourName()%></a></h3>
                                    <div class="p-card-bottom">
                                        <div class="book-btn">
                                            <a href="package-details.jsp">Đặt Ngay <i class='bx bxs-right-arrow-alt'></i></a>
                                        </div>
                                        <div class="p-card-info">
                                            <span>Số còn nhận <span style="color: var(--c-primary);"><%=tour.getSoLuong()%></span></span>
                                            <h6><%=giaVeString%> ₫ <span>1 Người</span></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%}%>

                      
                     
                     
                       
                      
                       
                      
                        
                        
 
                        <!-- end -->
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <nav>
                                <ul id="pagination-demo" class="pagination pagination-style-one justify-content-center pt-80">
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="package-sidebar">
                        <aside class="package-widget widget-search">
                            <div class="widget-title">
                                <h4>Tìm kiếm</h4>
                            </div>
                            <div class="widget-body">
                                <form action="#" method="post" id="blog-sidebar-search">
                                    <div class="search-input-group">
                                        <input type="search" placeholder="Tìm Kiếm">
                                        
                                        <button type="submit">Tìm</button>
                                    </div>
                                </form>
                            </div>
                        </aside>
                        <aside class="package-widget widget-tour-categoris mt-30">
                            <div class="widget-title">
                                <h4>Điểm đến</h4>
                            </div>
                            <div class="widget-body">
                                <ul>
                                 <li>
                                    <select
                                    class="form-select"
                                    id="CountryId"
                                    name="CountryId"
                                  >
                                    <option value="">Chọn điểm đến</option>
                                    <option value="">Tp.Hồ Chí Minh</option>
                                    <option value="">Hà Nội</option>
                                    <option value="">Nha Trang</option>
                                    <option value="">Đà Nẵng</option>
                                    <option value="">Lâm Đồng</option>
                                    </select>
                                 </li>
                                </ul>
                            </div>
                        </aside>
                        <aside class="package-widget widget-tour-categoris mt-30">
                            <div class="widget-title">
                                <h4>Phân loại</h4>
                            </div>
                            <div class="widget-body">
                                <ul>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate">
<i class="bi bi-chevron-double-right"></i> Phiêu Lưu
</label>
                                        <input class="form-check-input" type="checkbox" id="cate">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate2">
<i class="bi bi-chevron-double-right"></i>Du Lịch
</label>
                                        <input class="form-check-input" type="checkbox" id="cate2">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate3">
 <i class="bi bi-chevron-double-right"></i> Du Lịch Đôi
</label>
                                        <input class="form-check-input" type="checkbox" id="cate3">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate4">
<i class="bi bi-chevron-double-right"></i> Du Lịch Đơn Thân
</label>
                                        <input class="form-check-input" type="checkbox" id="cate4">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
<i class="bi bi-chevron-double-right"></i>Tuần Trăng Mật
</label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
<i class="bi bi-chevron-double-right"></i>Bãi Biển
</label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
<i class="bi bi-chevron-double-right"></i>Thám Hiểm Núi
</label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                </ul>
                            </div>
                        </aside>
                        
                        <aside class="package-widget widget-duration mt-30">
                            <div class="widget-title">
                                <h4>Thời gian</h4>
                            </div>
                            <div class="widget-body">
                                <ul>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura1">
                                        <label class="form-check-label" for="dura1">
1 - 3 Days
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura2">
                                        <label class="form-check-label" for="dura2">
3 - 5 Days
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura3">
                                        <label class="form-check-label" for="dura3">
5 - 7 Days
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura4">
                                        <label class="form-check-label" for="dura4">
7 - 9 Days
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura5">
                                        <label class="form-check-label" for="dura5">
9 - 11 Days
</label>
                                    </li>
                                </ul>
                            </div>
                        </aside>
                        <aside class="package-widget widget-tour-categoris mt-30">
                            <div class="widget-title">
                                <h4>Mức giá</h4>
                            </div>
                            <div class="widget-body">
                                <ul>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
                                        <i class="bi bi-chevron-double-right"></i>Dưới 5 triệu
                                        </label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
                                        <i class="bi bi-chevron-double-right"></i>Từ 5 triệu tới 10 triệu
                                        </label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
                                        <i class="bi bi-chevron-double-right"></i>Từ 10 triệu tới 15 triệu
                                        </label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
                                        <i class="bi bi-chevron-double-right"></i>Từ 15 triệu tới 20 triệu
                                        </label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
                                        <i class="bi bi-chevron-double-right"></i>Từ 20 triệu tới 30 triệu
                                        </label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                    <li class="category-check">
                                        <label class="form-check-label" for="cate5">
                                        <i class="bi bi-chevron-double-right"></i>Trên 30 triệu
                                        </label>
                                        <input class="form-check-input" type="checkbox" id="cate5">
                                    </li>
                                </ul>
                                
                                   
                            </div>
                        </aside>
                        <aside class="package-widget widget-duration mt-30">
                            <div class="widget-title">
                                <h4>Số lượng</h4>
                            </div>
                            <div class="widget-body">
                                <ul>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura1">
                                        <label class="form-check-label" for="dura1">
1 Người
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura2">
                                        <label class="form-check-label" for="dura2">
2-3 Người
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura3">
                                        <label class="form-check-label" for="dura3">
4-5 Người
</label>
                                    </li>
                                    <li class="deration-check">
                                        <input class="form-check-input" type="checkbox" id="dura4">
                                        <label class="form-check-label" for="dura4">
Trên 5 Người
</label>
                                    </li>

                                </ul>
                            </div>
                        </aside>
                        <aside class="package-widget widget-recent-package-entries mt-30">
                            <div class="widget-title">
                                <h4>Ngày đi</h4>
                            </div>
                            <div class="widget-body">
                                <div class="search-input-group">
                                    <input type="date">
                                    
                                </div>
                            </div>
                        </aside>
                        <aside class="package-widget widget-recent-package-entries mt-30">
                            <div class="widget-title">
                                <h4>Gói Du Lịch Mới</h4>
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
    <script src="./assets/js/paginationJQUERY.js"></script>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
<%--    <script src="./100sp.js">--%>
        
    </script>
    <script>
        jQuery(function () {
            let list = $('#group-item');
            let listProducts = list.children();
            let boundParent = $('#bound-parent');
            let productNum = listProducts.length;
            let displayProduct = 8;
            let paginationNum =  Math.ceil(productNum / displayProduct) ;
            console.log(boundParent.children()[1])
            let ulPagination = $('#pagination-demo');
            let listIndex = ulPagination.children(".page-item-index");
            
            for (let index = 0; index < paginationNum; index++) {
                if (index ===0) {                   
                    ulPagination.append(`
                            <li class="page-item page-item-index active">
                                <a class="page-link" href="#" style="text-align: center;" >${index+1}</a>
                            </li>
                    `);
                }else{
                    ulPagination.append(`
                            <li class="page-item page-item-index">
                                <a class="page-link" href="#" style="text-align: center;" >${index+1}</a>
                            </li>
                    `);
                }
                
            };
          
                 for (let j = 0; j < listProducts.length; j++) {
                   listProducts[j].classList.add('display-hide');
                    
                };
            if (ulPagination.children().length > 6) {
                for (let index = 0; index < ulPagination.children().length; index++) {
                        ulPagination.children()[index].classList.add('display-hide')
                        
                    }
                    ulPagination.children()[0].classList.remove('display-hide');
                    ulPagination.children()[ulPagination.children().length-1].classList.remove('display-hide');
                    ulPagination.children()[1].classList.remove('display-hide');
            }
            function displayItem(listProducts,list,displayProduct,page) {
                page--;
                for (let j = 0; j < listProducts.length; j++) {
                   listProducts[j].classList.remove('display-hide');
                    
                }
                for (let j = 0; j < listProducts.length; j++) {
                   listProducts[j].classList.add('display-hide');
                    
                }
                let loop_start = displayProduct * page;
                let renderItem = listProducts.slice(loop_start,loop_start+displayProduct);
                for (let index = 0; index < renderItem.length; index++) {
                    renderItem[index].classList.toggle('display-hide');   
                }
            };
            displayItem(listProducts,list,displayProduct,1);
           
            jQuery(function () {
          
            jQuery(".page-item-index").click(function (e) {
                let len = ulPagination.children().length;
                let eIndex = 0;
                if (len > 6){
                    for (let index = 0; index < len; index++) {
                        ulPagination.children()[index].classList.add('display-hide')
                        if (ulPagination.children()[index].isEqualNode(e.currentTarget)) {
                            eIndex = index; 
                        }
                    }
                    if (eIndex > 0 && eIndex < len-1) {
                        
                        ulPagination.children()[0].classList.remove('display-hide');
                        ulPagination.children()[len-1].classList.remove('display-hide');
                        ulPagination.children()[eIndex].classList.remove('display-hide');
                        ulPagination.children()[eIndex -1].classList.remove('display-hide');
                        ulPagination.children()[eIndex+1].classList.remove('display-hide');
                    }else if(eIndex === 0 && eIndex < len-1) {
                        ulPagination.children()[eIndex+1].classList.remove('display-hide');
                        ulPagination.children()[len-1].classList.remove('display-hide');
                        ulPagination.children()[eIndex].classList.remove('display-hide');
                    }else if(eIndex > 0 && eIndex === len-1){
                        ulPagination.children()[0].classList.remove('display-hide');
                        ulPagination.children()[len-1].classList.remove('display-hide');
                        ulPagination.children()[eIndex].classList.remove('display-hide');
                        ulPagination.children()[eIndex -1].classList.remove('display-hide');
                        
                    }
                }
                for (let k = 0; k < ulPagination.children().length; k++) {
                ulPagination.children()[k].classList.remove('active')
                
                }
                e.currentTarget.classList.add('active')
                displayItem(listProducts,list,displayProduct,parseInt(e.currentTarget.innerText));
                 });
            });

            const filterSortTour = $('#filter-sort-tour');
            filterSortTour.on('change' , function (e) {
                var valueSelected = this.value;
                function convertToMoney(e) {
                var moneyNode = e.getElementsByClassName('p-card-info')[0];
                var moneyText = moneyNode.getElementsByTagName('h6')[0].innerText;
                var moneyTextList = moneyText.split(' ');
                var moneyTextString =parseInt(moneyTextList[0].split('.').join(''));
                return moneyTextString;
                }
                
               
                function convertToDate(e) {
                    var dateString = e.getElementsByClassName('is-new-tour')[0].id;
                    
                    
                    return Date.parse(dateString);
                }
              
                
               if (valueSelected ==='price-desc') {
                   
                   jQuery(function () {
                       const newListProducts = listProducts.sort((a,b) => convertToMoney(b) - convertToMoney(a));
                       
                       list.children().remove()
                       for (let index = 0; index < newListProducts.length; index++) {
                           //     list.append(`${listProducts[index].outerHTML}`)
                           list.children().remove()
                       }
                       for (let i = 0; i < newListProducts.length; i++) {
                           
                           list.append(newListProducts[i].outerHTML)
                           
                       }
                       listProducts = list.children();
                       displayItem(listProducts,list,displayProduct,1)
                   })
               }else if (valueSelected === 'price-asc') {
                jQuery(function () {
                       const newListProducts = listProducts.sort((a,b) => convertToMoney(a) - convertToMoney(b));
                       
                       list.children().remove()
                       for (let index = 0; index < newListProducts.length; index++) {
                           //     list.append(`${listProducts[index].outerHTML}`)
                           list.children().remove()
                       }
                       for (let i = 0; i < newListProducts.length; i++) {
                           
                           list.append(newListProducts[i].outerHTML)
                           
                       }
                       listProducts = list.children();
                       displayItem(listProducts,list,displayProduct,1)
                   })
               }else if(valueSelected === 'new'){
                 jQuery(function () {
                       const newListProducts = listProducts.sort((a,b) => convertToDate(b) - convertToDate(a));
                       
                       list.children().remove()
                       for (let index = 0; index < newListProducts.length; index++) {
                           //     list.append(`${listProducts[index].outerHTML}`)
                           list.children().remove()
                       }
                       for (let i = 0; i < newListProducts.length; i++) {
                           
                           list.append(newListProducts[i].outerHTML)
                           
                       }
                       listProducts = list.children();
                       displayItem(listProducts,list,displayProduct,1)
                   })
               }
                

            });
        });
    </script>
</body>

</html>