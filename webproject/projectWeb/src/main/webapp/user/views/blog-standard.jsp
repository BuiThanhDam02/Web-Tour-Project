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

    <link rel="stylesheet" href="./assets/css/responsive.css">
    <link rel="stylesheet" href="./assets/css/style.css">
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
                <h2 class="breadcrumb-title">Tin tức</h2>
                <ul class="d-flex justify-content-center breadcrumb-items">
                    <li class="breadcrumb-item"><a href="index.jsp">Trang Chủ</a></li>
                    <li class="breadcrumb-item active">Tin tức</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="blog-sidebar-wrapper pt-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <select id="filter-sort-tour" style="border: 1px solid var(--c-primary);">
                        <option selected>Lựa chọn lọc</option>
                        <option value="new">Sắp xếp theo theo mới nhất</option>
                    </select>
                </div>
            </div>
            <div class="row">
                
                <div class="col-lg-8" >
                    <div class="row" id="group-item">

                        <div class="blog-card-gamma-full">
                            <div class="blog-thumb">
                                <a href="blog-details.jsp">
                                <img src="./assets/images/package/pac_003-compressed.jpg" alt="">
                                </a>
                                <!-- <div class="blog-lavel">
                                    <a href="#">Tourist</a>
                                </div> -->
                            </div>
                            <div class="blog-content">
                                <div class="blog-body-top">
                                    <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> Tác giả: Trần Quốc Bảo </a>
                                    <a href="#" class="blog-date"><i class="bi bi-calendar3"></i>2022-11-10</a>
                                    <a href="#" class="blog-comments"><i class="bi bi-chat-left-quote"></i> Bình Luận (3)</a>
                                </div>
                                <h4 class="blog-title"><a href="blog-details.jsp">Hà Giang mùa hoa Tam Giác Mạch không thể bỏ lỡ.</a></h4>
                            </div>
                        </div>
                        <div class="blog-card-gamma-full">
                            <div class="blog-thumb">
                                <a href="blog-details.jsp">
    <img src="./assets/images/package/pac_006-compressed.jpg" alt="">
    </a>
                               
                            </div>
                            <div class="blog-content">
                                <div class="blog-body-top">
                                    <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> Tác Giả: Nguyễn Bích Ngọc </a>
                                    <a href="#" class="blog-date"><i class="bi bi-calendar3"></i>2022-11-13</a>
                                    <a href="#" class="blog-comments"><i class="bi bi-chat-left-quote"></i> Bình Luận (2)</a>
                                </div>
                                <h4 class="blog-title"><a href="blog-details.jsp">5 bãi biển siêu đẹp ở Việt Nam không phải ai cũng biết.</a></h4>
                            </div>
                        </div>
                        <div class="blog-card-gamma-full">
                            <div class="blog-thumb">
                                <a href="blog-details.jsp">
    <img src="./assets/images/package/pac_008-compressed.jpg" alt="">
    </a>
                                
                            </div>
                            <div class="blog-content">
                                <div class="blog-body-top">
                                    <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> Tác Giả: Trần Khánh Vy </a>
                                    <a href="#" class="blog-date"><i class="bi bi-calendar3"></i>2022-11-27</a>
                                    <a href="#" class="blog-comments"><i class="bi bi-chat-left-quote"></i> Bình Luận (8)</a>
                                </div>
                                <h4 class="blog-title"><a href="blog-details.jsp">Kinh nghiệm du lịch đảo Bình Ba.</a></h4>
                            </div>
                        </div>
                        <div class="blog-card-gamma-full">
                            <div class="blog-thumb">
                                <a href="blog-details.jsp">
                                <img src="./assets/images/package/pac_011-compressed.jpg" alt="">
                                </a>
                               
                            </div>
                            <div class="blog-content">
                                <div class="blog-body-top">
                                    <a href="#" class="blog-writer"><i class="bi bi-person-circle"></i> Tác Giả: Nguyễn Bảo Đặng </a>
                                    <a href="#" class="blog-date"><i class="bi bi-calendar3"></i>2022-10-09</a>
                                    <a href="#" class="blog-comments"><i class="bi bi-chat-left-quote"></i> Bình Luận (8)</a>
                                </div>
                                <h4 class="blog-title"><a href="blog-details.jsp">
                                    6 bãi biển đẹp nhất Phú Quốc.</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <nav>
                                <ul class="pagination pagination-style-one justify-content-center pt-80">
                                    <!-- <li class="page-item page-arrow"><a class="page-link" href="#"><i class="bi bi-chevron-double-left"></i></a></li>
                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                    <li class="page-item"><a class="page-link" href="#">04</a></li>
                                    <li class="page-item page-arrow"><a class="page-link" href="#"><i class="bi bi-chevron-double-right"></i></a></li> -->
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-sidebar ">
                        <aside class="blog-widget widget-search">
                            <div class="widget-title">
                                <h4>Tìm Kiếm</h4>
                            </div>
                            <div class="widget-body">
                                <form action="#" method="post" id="blog-sidebar-search">
                                    <div class="search-input-group">
                                        <input type="search" placeholder="Điểm Đến">
                                        <button type="submit">Tìm</button>
                                    </div>
                                </form>
                            </div>
                        </aside>
                        <aside class="blog-widget widget-categories mt-30">
                            <div class="widget-title">
                                <h4>Thể loại</h4>
                            </div>
                            <ul class="widget-body">
                                <li>
                                    <a href="#">
                                        <h6><i class="bi bi-chevron-double-right"></i> Hà Nội</h6> <span>(20)</span></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h6><i class="bi bi-chevron-double-right"></i> TP. Hồ Chí Minh</h6> <span>(08)</span></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h6><i class="bi bi-chevron-double-right"></i> Đà Nẵng</h6> <span>(18)</span></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h6><i class="bi bi-chevron-double-right"></i> Phú Quốc</h6> <span>(21)</span></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <h6><i class="bi bi-chevron-double-right"></i> Nha Trang</h6> <span>(09)</span></a>
                                </li>
                            </ul>
                        </aside>

                        <aside class="blog-widget widget-recent-entries-custom mt-30">
                            <div class="widget-title">
                                <h4>Bài Viết Mới</h4>
                            </div>
                            <ul class="widget-body">
                                <li class="clearfix">
                                    <div class="wi"><a href="blog-details.jsp"><img src="./assets/images/package/pac-098.jpg" alt=""></a></div>
                                    <div class="wb">
                                        <h6><a href="blog-details.jsp">Nơi bạn đến luôn là nơi tuyệt đẹp.</a></h6>
                                        <div class="wb-info">
                                            <span class="post-date"> <i class="bi bi-person-circle"></i>Nguyễn văn trỗi </span>
                                            <span class="post-date"> <i class="bi bi-calendar3"></i> 8/5/2022</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div class="wi"><a href="blog-details.jsp"><img src="./assets/images/package/pac-099.jpg" alt=""></a></div>
                                    <div class="wb">
                                        <h6><a href="blog-details.jsp">Ếch,cá là nhưng thứ bạn nên thử.</a></h6>
                                        <div class="wb-info">
                                            <span class="post-date"> <i class="bi bi-person-circle"></i>Nguyễn văn trỗi </span>
                                            <span class="post-date"> <i class="bi bi-calendar3"></i> 8/5/2022</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div class="wi"><a href="blog-details.jsp"><img src="./assets/images/package/pac-097.jpg" alt=""></a></div>
                                    <div class="wb">
                                        <h6><a href="blog-details.jsp">Cùng khám phá nơi chốn thân thương
</a></h6>
                                        <div class="wb-info">
                                            <span class="post-date"> <i class="bi bi-person-circle"></i>Nguyễn văn trỗi </span>
                                            <span class="post-date"> <i class="bi bi-calendar3"></i> 8/5/2022</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div class="wi"><a href="blog-details.jsp"><img src="./assets/images/package/pac-096.jpg" alt=""></a></div>
                                    <div class="wb">
                                        <h6><a href="blog-details.jsp">Mùa thu trữ tình
</a></h6>
                                        <div class="wb-info">
                                            <span class="post-date"> <i class="bi bi-person-circle"></i>Nguyễn văn trỗi </span>
                                            <span class="post-date"> <i class="bi bi-calendar3"></i> 8/5/2022</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </aside>
                        <aside class="blog-widget widget-tag-cloud mt-30">
                            <div class="widget-title">
                                <h4>Thẻ</h4>
                            </div>
                            <div class="tag-cloud widget-body">
                                <a href="#">Phiêu Lưu</a>
                                <a href="#">Chuyến Đi</a>
 
                                <a href="#">Lịch Sử</a>
                                <a href="#">Chuyến Đi Dài</a>
                                <a href="#">Du Lịch</a>
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
            let list = $('#group-item');
            let listProducts = list.children();
            let productNum = listProducts.length;
            let displayProduct = 4;
            let paginationNum =  Math.ceil(productNum / displayProduct) ;
            
            let ulPagination = $('.pagination');
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
                if(valueSelected === 'new'){
                    function convertToDate(e) {
                    var dateString = e.getElementsByClassName('blog-date')[0].innerText;
                    
                    
                    return Date.parse(dateString);
                }
                // console.log(listProducts[0].getElementsByClassName('blog-date')[0].innerText)
                // console.log(Date.parse('2022-11-10'))
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
            })
        });
    </script>
</body>

</html>