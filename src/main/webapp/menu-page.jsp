<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/27/2025
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VMMS2</title>
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.15.3/css/all.css"
    />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
    />
    <link
            rel="stylesheet"
            href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
    />
    <link rel="stylesheet" href="./css/owl.carousel.min.css" />
    <link rel="stylesheet" href="./css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="./css/menu-page.css" />
</head>

<body>
<div class="wrapper menu-page">
    <jsp:include page="header.jsp"/>
    <main class="main">
        <div class="page-banner">
            <div class="page-banner-image image-cover">
                <img src="./images/menu-page-bg.png" alt="banner trang chủ" />
            </div>
            <div class="container">
                <h1 class="page-title">THỰC ĐƠN</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="home-page.html">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Thực đơn
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="page-content">
            <div class="list-menu">
                <div class="menu-item">
                    <div class="menu-item--left">
                        <div class="menu-item-image">
                            <img src="./images/menu1.png" alt="" />
                        </div>
                        <a href="tel:0962180180" class="menu-item-phone"
                        >Hotline: <span>0962.180.180</span></a
                        >
                    </div>
                    <div class="menu-item--right">
                        <div class="menu-item-text">
                            <h2 class="menu-item-heading">THỰC ĐƠN CỦA CHÚNG TÔI</h2>
                            <div class="menu-item-desc">
                                Để tạo cho thực khách cảm giác thân quen gia đình, mang
                                hương vị ấm cúng của căn bếp nhỏ, thực đơn được thể hiện qua
                                các món ăn kèm theo hình ảnh minh họa và cả công thức chế
                                biến của từng món như một lời tỉ tê của VMMS về truyền thống
                                ẩm thực của Việt Nam đến với khách hàng.
                            </div>
                            <a href="#!" class="btn btn-primary"
                            >Đăng ký tư vấn thực đơn</a
                            >
                        </div>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="menu-item--left">
                        <div class="menu-item-image">
                            <img src="./images/menu2.png" alt="" />
                        </div>
                        <a href="tel:0962180180" class="menu-item-phone"
                        >Hotline: <span>0962.180.180</span></a
                        >
                    </div>
                    <div class="menu-item--right">
                        <div class="menu-item-text">
                            <h2 class="menu-item-heading">MÓN ĂN</h2>
                            <div class="menu-item-desc">
                                Lấy cảm hứng từ Món Việt truyền thống và chế biến theo phong
                                cách hiện đại để cho ra đời những món ăn khiến khẩu vị thực
                                khách thăng hoa đến cung bậc cao nhất.
                            </div>
                            <a href="/menu-detail.html" class="btn btn-primary">Xem menu</a>
                        </div>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="menu-item--left">
                        <div class="menu-item-image">
                            <img src="./images/menu2.png" alt="" />
                        </div>
                        <a href="tel:0962180180" class="menu-item-phone"
                        >Hotline: <span>0962.180.180</span></a
                        >
                    </div>
                    <div class="menu-item--right">
                        <div class="menu-item-text">
                            <h2 class="menu-item-heading">ĐỒ UỐNG</h2>
                            <div class="menu-item-desc">
                                Đa dạng từ các thức uống đặc trưng không thể thiếu của người Việt như cafe, nước ép, cho tới các loại nước được đặc pha một cách hết sức tuyệt vời.
                            </div>
                            <a href="/menu-detail.html" class="btn btn-primary">Xem menu</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="form-consultation">
            <div class="container section-py position-relative">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="form-consultation__heading">
                            ĐĂNG KÝ TƯ VẤN THỰC ĐƠN
                        </div>
                        <form action="" class="form-home">
                            <div class="form-home__item required">
                                <label for="">Họ và tên</label>
                                <input type="text" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Số điện thoại</label>
                                <input type="tel" name="number-phone" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Email</label>
                                <input type="email" name="email" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Địa chỉ</label>
                                <input type="text" name="address" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Bạn cần chúng tôi tư vấn</label>
                                <input type="text" name="address" />
                            </div>
                            <div class="form-home__item required">
                                <input type="submit" class="submit" value="Đăng ký ngay" />
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="form-consultation__image">
                            <img src="./images/img-form.png" alt="chef-kitchen" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
   <jsp:include page="footer.jsp"/>
    <div class="mobile-sidebar d-lg-none">
        <div class="mobile-sidebar--top">
            <a href="home-page.html" class="mobile-sidebar-logo"
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
