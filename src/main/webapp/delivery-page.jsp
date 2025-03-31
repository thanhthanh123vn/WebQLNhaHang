<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/27/2025
  Time: 10:42 PM
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
    <link rel="stylesheet" href="./css/delivery-page.css" />
</head>

<body>
<div class="wrapper delivery-page">
<jsp:include page="header.jsp"/>
    <main class="main">
        <div class="delivery">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="delivery-heading">ĐẶT MÓN GIAO HÀNG TẬN NƠI</div>
                        <div class="delivery-caption">
                            Dịch vụ "Đặt món giao hàng tận nơi" đã có mặt ở tất cả các cơ
                            sở nhà hàng VMMS. Chỉ cần vài thao tác đơn giản và ngồi chờ
                            trong ít thời gian, món ăn của VMMS sẽ nhanh chóng được giao
                            tới địa chỉ Quý khách yêu cầu.
                        </div>
                        <div class="delivery-list">
                            <a href="https://shopeefood.vn/" class="delivery-item">
                                <div class="delivery-item__image">
                                    <img src="./images/logo-now.jpg" alt="" />
                                </div>
                                <div class="delivery-item__name">Đặt món ăn qua Now</div>
                            </a>

                            <a href="https://baemin.vn/" class="delivery-item">
                                <div class="delivery-item__image">
                                    <img src="./images/logo-beamin.jpg" alt="" />
                                </div>
                                <div class="delivery-item__name">Đặt món ăn qua Baemin</div>
                            </a>
                            <a href="https://www.foody.vn/ha-noi" class="delivery-item">
                                <div class="delivery-item__image">
                                    <img src="./images/logo-foody.vn.jpg" alt="" />
                                </div>
                                <div class="delivery-item__name">Đặt món ăn qua Foody</div>
                            </a>
                            <a href="https://shopeefood.vn/" class="delivery-item">
                                <div class="delivery-item__image">
                                    <img src="./images/logo-shoppefood.jpg" alt="" />
                                </div>
                                <div class="delivery-item__name">
                                    Đặt món ăn qua Shopee Food
                                </div>
                            </a>
                        </div>
                        <div class="delivery-note">
                            <span>Lưu ý:</span> Các cơ sở sẽ không nhận đơn đặt hàng sau 20:00 hàng
                            ngày. Mọi chi tiết xin liên hệ hotline <span>0962.180.180</span>
                        </div>
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
