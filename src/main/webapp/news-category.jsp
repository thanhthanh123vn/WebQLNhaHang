<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/29/2025
  Time: 1:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<jsp:include page="header.jsp"/>

<body>
<div class="wrapper news-category">
    <header class="header">
        <div class="header-main">
            <div class="container">
                <div class="row">
                    <div class="header-logo header-main--top col-lg-12">
                <span class="menu-bars">
                  <i class="far fa-bars"></i>
                </span>
                        <a href="/" class="logo">
                            <img srcset="./images/logo-vmms.png" alt="logo" />
                        </a>
                        <span class="menu-search">
                  <i class="fas fa-search icon-search"></i>
                  <form action="" class="search-mobile">
                    <input
                            type="search"
                            name=""
                            placeholder="Nhập tìm kiếm..."
                    />
                    <button
                            type="submit"
                            value="Tìm kiếm"
                            class="search-form__button"
                    >
                      <i class="far fa-search"></i>
                    </button>
                  </form>
                </span>
                    </div>
                    <div class="header-main--bottom col-lg-12">
                        <div class="header-nav px-4">
                            <ul class="menu">
                                <li class="menu-item active">
                                    <a href="home-page.html" class="menu-link">Trang chủ</a>
                                </li>
                                <li class="menu-item">
                                    <a href="menu-page.html" class="menu-link">Thực đơn</a>
                                </li>
                                <li class="menu-item">
                                    <a href="delivery-page.html" class="menu-link">Delivery</a>
                                </li>
                                <li class="menu-item">
                                    <a href="news-category.html" class="menu-link">Tin tức - Sự kiện</a>
                                </li>
                                <li class="menu-item">
                                    <a href="photo-library.html" class="menu-link">Thư viện ảnh</a>
                                </li>
                                <li class="menu-item">
                                    <a href="guide-page.html" class="menu-link">Câu hỏi thường gặp</a>
                                </li>
                                <li class="menu-item">
                                    <a href="contact-page.html" class="menu-link">Liên hệ</a>
                                </li>
                                <li class="menu-item">
                                    <a href="register-page.html" class="menu-link">Tài khoản</a>
                                </li>
                                <li class="menu-item menu-search">
                                    <i class="fas fa-search icon-search" style="position: relative;"></i>
                                    <form action="" class="search-header" style="position: absolute;">
                                        <input type="search" name="" placeholder="Nhập tìm kiếm...">
                                        <button type="submit" value="Tìm kiếm" class="search-form__button">
                                            <i class="far fa-search"></i>
                                        </button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="main">
        <div class="page-banner">
            <div class="page-banner-image image-cover">
                <img src="./images/bg-news.png" />
            </div>
            <div class="container">
                <h1 class="page-title">TIN TỨC - SỰ KIỆN</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="home-page.html">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Tin tức - Sự kiện
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="news-wrapper">
            <div class="container">
                <div class="row">
                    <div class="news-list col-sm-12">
                        <div class="box-blog-post">
                            <a href="news-detail.html">
                                <div class="box-blog-post__image image-cover">
                                    <img
                                            src="./images/img-blog1.png"
                                            alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                    />
                                </div>
                                <div class="box-blog-post__date">05/04/2022</div>
                                <h5 class="box-blog-post__title">
                                    Tận Hưởng Ưu Đãi Giờ Vàng Cùng Ngàn Món Ngon Tại VMMS
                                </h5>
                                <div class="box-blog-post__desc">
                                    Cùng hội ngộ sum vầy những ngày đầu năm trong không gian
                                    hiện đại, mang dấu ấn...
                                </div>
                            </a>
                        </div>
                        <div class="box-blog-post">
                            <a href="news-detail.html">
                                <div class="box-blog-post__image image-cover">
                                    <img
                                            src="./images/img-blog2.png"
                                            alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                    />
                                </div>
                                <div class="box-blog-post__date">05/04/2022</div>
                                <h5 class="box-blog-post__title">
                                    Hướng dẫn cách làm cua cà ri kiểu Ấn Độ mới lạ cực ngon
                                </h5>
                                <div class="box-blog-post__desc">
                                    Cà ri một món ăn hấp dẫn có xuất xứ từ Ấn Độ đã được biến
                                    tấu thành nhiều món độc...
                                </div>
                            </a>
                        </div>
                        <div class="box-blog-post">
                            <a href="news-detail.html">
                                <div class="box-blog-post__image image-cover">
                                    <img
                                            src="./images/img-blog3.png"
                                            alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                    />
                                </div>
                                <div class="box-blog-post__date">05/04/2022</div>
                                <h5 class="box-blog-post__title">
                                    VMMS đón chào quý khách với công suất tối đa
                                </h5>
                                <div class="box-blog-post__desc">
                                    VMMS đã quay trở lại đón tiếp các khách hàng ở tất cả các
                                    chi nhánh trên địa bàn Hà...
                                </div>
                            </a>
                        </div>
                        <div class="box-blog-post">
                            <a href="news-detail.html">
                                <div class="box-blog-post__image image-cover">
                                    <img
                                            src="./images/img-blog4.png"
                                            alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                    />
                                </div>
                                <div class="box-blog-post__date">05/04/2022</div>
                                <h5 class="box-blog-post__title">
                                    Tái hiện mâm cơm truyền thống trong set ẩm thực mới
                                </h5>
                                <div class="box-blog-post__desc">
                                    Bếp trưởng VMMS kết hợp với các đầu bếp khác đã cùng nhau cải biên lại các món ăn...
                                </div>
                            </a>
                        </div>
                        <div class="box-blog-post">
                            <a href="news-detail.html">
                                <div class="box-blog-post__image image-cover">
                                    <img
                                            src="./images/img-blog5.png"
                                            alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                    />
                                </div>
                                <div class="box-blog-post__date">05/04/2022</div>
                                <h5 class="box-blog-post__title">
                                    VMMS Trần Nhân Tông - Chúc mừng khai trương cơ sở mới
                                </h5>
                                <div class="box-blog-post__desc">
                                    Hệ thống nhà hàng VMMS vừa khai trương cơ sở mới tại số 99 Trần Nhân Tông, Hai Bà...
                                </div>
                            </a>
                        </div>
                        <div class="box-blog-post">
                            <a href="news-detail.html">
                                <div class="box-blog-post__image image-cover">
                                    <img
                                            src="./images/img-blog6.png"
                                            alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                    />
                                </div>
                                <div class="box-blog-post__date">05/04/2022</div>
                                <h5 class="box-blog-post__title">
                                    Những địa điểm ăn uống tấp nập ở Hà Nội bạn nên thử
                                </h5>
                                <div class="box-blog-post__desc">
                                    Sau giờ tan tầm các đoạn đường trung tâm Hà Nội như khoác lên mình bộ áo mới hào...
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <nav class="news-pagination">
                            <ul class="pagination">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1"
                                    ><i class="far fa-angle-left"></i
                                    ></a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">4</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">5</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#"
                                    ><i class="far fa-angle-right"></i
                                    ></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </main>
   <jsp:include page="footer.jsp"/>
    <div class="mobile-sidebar d-lg-none">
        <div class="mobile-sidebar--top">
            <a href="!#" class="mobile-sidebar-logo"
            ><img src="./images/logo-vmms.png" alt="Logo"
            /></a>
            <i class="mobile-sidebar-close"></i>
        </div>
        <div class="mobile-sidebar--bottom">
            <ul class="menu">
                <li class="menu-item active">
                    <a href="home-page.html" class="menu-link">Trang chủ</a>
                </li>
                <li class="menu-item">
                    <a href="menu-page.html" class="menu-link">Sản phẩm</a>
                </li>
                <li class="menu-item">
                    <a href="news-category.html" class="menu-link">Tin tức</a>
                </li>
                <li class="menu-item">
                    <a href="promotion.html" class="menu-link">Khuyến mãi</a>
                </li>
                <li class="menu-item">
                    <a href="guide-page.html" class="menu-link">Hướng dẫn mua hàng</a>
                </li>
                <li class="menu-item">
                    <a href="contact-page.html" class="menu-link">Liên Hệ</a>
                </li>
                <li class="menu-item">
                    <a href="register-page.html" class="menu-link">Đăng ký</a>
                </li>
                <li class="menu-item">
                    <a href="login-page.html" class="menu-link">Đăng nhập</a>
                </li>
            </ul>
            <div class="phone-number d-block">
                <a href="tel:0962180180">0962.180.180</a>
            </div>
        </div>
    </div>
    <div class="menu-bars-close"></div>
</div>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"
></script>
<script type="text/javascript" src="./js/owl.carousel.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>
