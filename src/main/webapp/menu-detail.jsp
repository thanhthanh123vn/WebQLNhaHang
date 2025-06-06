<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/29/2025
  Time: 1:34 AM
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
    <link rel="stylesheet" href="./css/menu-detail.css" />
</head>

<body>
<div class="wrapper menu-detail">
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="header-main col-lg-12">
              <span class="menu-bars">
                <i class="far fa-bars"></i>
              </span>
                    <a href="/" class="logo">
                        <img srcset="./images/logo-vmms.png" alt="logo" />
                    </a>
                    <h1 class="header-title">THỰC ĐƠN</h1>
                    <div class="header-contact">0352.169.819</div>
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
            </div>
        </div>
    </header>
    <main class="main">
        <div class="menu-detail-wrapper">
            <div class="menu-detail-wrapper--left">
                <div class="box-image">
                    <img src="./images/menu-detail2.png" />
                </div>
                <div class="box-image">
                    <img src="./images/menu-detail3.png" />
                </div>
                <div class="box-image">
                    <img src="./images/menu-detail1.png" />
                </div>
            </div>
            <div class="menu-detail-wrapper--right">
                <div class="food-list">
                    <div class="food-list-image">
                        <img src="./images/icon-food1.png" alt="" />
                    </div>
                    <h2 class="food-list-heading">
                        <span>KHAI VỊ</span>
                    </h2>
                    <div class="food-list-info">
                        <div class="box-food">
                            <a href="menu-detail.html">
                                <div class="box-food__name">Cánh gà sốt me</div>
                                <div class="box-food__price">98.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Fried chicken wings, tamarind sauce
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="menu-detail.html">
                                <div class="box-food__name">Cánh gà sóc tỏi ớt</div>
                                <div class="box-food__price">98.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Fried chiken wings, chili, garlic
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="menu-detail.html">
                                <div class="box-food__name">Bò lá lốt</div>
                                <div class="box-food__price">108.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Grilled marinated beef wrapped lalot leaves, herbs
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="menu-detail.html">
                                <div class="box-food__name">Chạo tôm bó mía</div>
                                <div class="box-food__price">118.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Homemade sugarcane shrimps skewers, herbs
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="food-list">
                    <div class="food-list-image">
                        <img src="./images/icon-food1.png" alt="" />
                    </div>
                    <h2 class="food-list-heading">
                        <span>MÓN CHÍNH</span>
                    </h2>
                    <ul
                            class="nav nav-pills food-list-nav"
                            id="pills-tab"
                            role="tablist"
                    >
                        <li class="nav-item">
                            <a
                                    class="nav-link active"
                                    data-toggle="pill"
                                    href="#food-1"
                                    role="tab"
                                    aria-selected="true"
                            >Gà</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-toggle="pill"
                                    href="#food-2"
                                    role="tab"
                                    aria-selected="false"
                            >Heo</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-toggle="pill"
                                    href="#food-3"
                                    role="tab"
                                    aria-selected="false"
                            >Bò</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-toggle="pill"
                                    href="#food-4"
                                    role="tab"
                                    aria-selected="false"
                            >Gỏi cuốn</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-toggle="pill"
                                    href="#food-5"
                                    role="tab"
                                    aria-selected="false"
                            >Mì/Bún</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-toggle="pill"
                                    href="#food-6"
                                    role="tab"
                                    aria-selected="false"
                            >Canh</a
                            >
                        </li>
                        <li class="nav-item">
                            <a
                                    class="nav-link"
                                    data-toggle="pill"
                                    href="#food-7"
                                    role="tab"
                                    aria-selected="false"
                            >Cơm</a
                            >
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div
                                class="tab-pane fade show active"
                                id="food-1"
                                role="tabpanel"
                        >
                            <div class="food-list-info">
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Gà hấp mắm nhĩ</div>
                                        <div class="box-food__price">549.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Steamed chicken with fish, sauce, mung bean sticky
                                            rice
                                        </div>
                                    </a>
                                </div>
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Gà lên mâm</div>
                                        <div class="box-food__price">549.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Shredded chicken with herbs, spicy grilled chicken
                                        </div>
                                    </a>
                                </div>
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Gà nướng ống tre</div>
                                        <div class="box-food__price">549.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Grilled chicken in bamboo tube, wild herbs
                                        </div>
                                    </a>
                                </div>
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Gà hầm thuốc bắc</div>
                                        <div class="box-food__price">549.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Wild herbs, ginger, lotus seeds
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="food-2" role="tabpanel">
                            <div class="food-list-info">
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Cánh gà sốt me</div>
                                        <div class="box-food__price">98.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Fried chicken wings, tamarind sauce
                                        </div>
                                    </a>
                                </div>
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Cánh gà sóc tỏi ớt</div>
                                        <div class="box-food__price">98.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Fried chiken wings, chili, garlic
                                        </div>
                                    </a>
                                </div>
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Bò lá lốt</div>
                                        <div class="box-food__price">108.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Grilled marinated beef wrapped lalot leaves, herbs
                                        </div>
                                    </a>
                                </div>
                                <div class="box-food">
                                    <a href="">
                                        <div class="box-food__name">Chạo tôm bó mía</div>
                                        <div class="box-food__price">118.000 VNĐ</div>
                                        <div class="box-food__desc">
                                            Homemade sugarcane shrimps skewers, herbs
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="food-3" role="tabpanel">
                            Thực đơn đang cập nhật
                        </div>
                    </div>
                </div>
                <div class="food-list">
                    <div class="food-list-image">
                        <img src="./images/icon-food2.png" alt="" />
                    </div>
                    <h2 class="food-list-heading">
                        <span>Đồ uống</span>
                    </h2>
                    <div class="food-list-info">
                        <div class="box-food">
                            <a href="">
                                <div class="box-food__name">Nước dừa tươi</div>
                                <div class="box-food__price">58.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Fresh coconut
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="">
                                <div class="box-food__name">Nước cam tươi</div>
                                <div class="box-food__price">68.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Fresh squeezed orange juice
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="">
                                <div class="box-food__name">Ginger minosa</div>
                                <div class="box-food__price">58.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Lime, cucumber, ginger, soda
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="">
                                <div class="box-food__name">Trà nhiệt đới</div>
                                <div class="box-food__price">75.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Mango, passion fruit, honey
                                </div>
                            </a>
                        </div>
                        <div class="box-food">
                            <a href="">
                                <div class="box-food__name">Concha y Toro</div>
                                <div class="box-food__price">780.000 VNĐ</div>
                                <div class="box-food__desc">
                                    Reservado Cabernet Sauvignon - Chile
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="footer">
        <div class="container footer--top">
            <div class="row">
                <div class="footer-col footer-col-1 col">
                    <div class="footer-col-content footer-info">
                        <a href="!#" class="footer-logo"
                        ><img src="./images/logo-vmms.png" alt="Logo"
                        /></a>
                        <p class="footer-info__address">
                            Tầng 3 số 14 Pháo Đài Láng, Đống Đa, Hà Nội
                        </p>
                        <p class="footer-info__phone">(+84-4) 3562.6296</p>
                        <p class="footer-info__email">info@vmms.vn</p>
                        <p class="footer-info__time">Mở cửa: 09:30 - 22:00</p>
                    </div>
                </div>
                <div class="footer-col footer-col-2 col">
                    <div class="footer-col-title">LIÊN KẾT NHANH</div>
                    <div class="footer-col-content">
                        <ul class="menu-footer">
                            <li class="menu-footer__link">
                                <a href="home-page.html">Trang chủ</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="delivery-page.html">Delivery</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="news-category.html">Tin tức</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="menu-page.html">Thực đơn</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="contact-page.html">Liên hệ</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="booking-page.html">Đặt bàn</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footer-col footer-col-3 col">
                    <div class="footer-col-title">HƯỚNG DẪN</div>
                    <div class="footer-col-content">
                        <ul class="menu-footer">
                            <li class="menu-footer__link">
                                <a href="guide-page.html">Hướng dẫn đặt món online</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="guide-page.html">Hướng dẫn đặt bàn</a>
                            </li>
                            <li class="menu-footer__link">
                                <a href="guide-page.html">Hướng dẫn thanh toán</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footer-col footer-col-4 col">
                    <div class="fanpage-facebook">
                        <div class="fanpage-facebook-avatar">
                            <img src="./images/facebook.jpg" alt="" />
                        </div>
                        <div class="fanpage-facebook-content">
                            <a href="home-page.html" class="fanpage-facebook-name">NHÀ HÀNG VMMS</a>
                            <div class="fanpage-facebook-like">
                                <a href="http://www.facebook.com"
                                ><img src="./images/icon-face2.png" /> Like Page</a
                                ><span>50K người đã thích</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container footer--bottom">
            <div class="row">
                <div class="col col-sm-12 col-md-7">
                    <div class="footer-copyright">COPYRIGHT © 2022 BY VMMS</div>
                    <ul class="menu-footer">
                        <li class="menu-footer__link">
                            <a href="privacy-policy-page.html">Chính sách bảo mật</a>
                        </li>
                        <li class="menu-footer__link">
                            <a href="payment-policy-page.html">Chính sách thanh toán</a>
                        </li>
                        <li class="menu-footer__link">
                            <a href="regulations-page.html">Quy định nhà hàng</a>
                        </li>
                        <li class="menu-footer__link">
                            <a href="complaint-process-page.html">Quy trình khiếu nại</a>
                        </li>
                    </ul>
                </div>
                <div class="col col-sm-12 col-md-5">
                    <a href="!#" target="_blank" class="footer-bct"
                    ><img
                            src="./images/thongbaobocongthuong.png"
                            alt="Thông báo bộ công thương"
                    /></a>
                    <div class="social-network">
                        <div class="social-network__title">KẾT NỐI VỚI CHÚNG TÔI</div>
                        <ul class="social-network__list">
                            <li>
                                <a
                                        href="https://www.facebook.com/"
                                        rel="nofollow"
                                        target="_blank"
                                ><img src="./images/icon-face.svg" alt="facebook"
                                /></a>
                            </li>
                            <li>
                                <a
                                        href="https://twitter.com/"
                                        rel="nofollow"
                                        target="_blank"
                                ><img src="./images/icon-instagram.svg" alt="instagram"
                                /></a>
                            </li>
                            <li>
                                <a
                                        href="https://www.youtube.com/"
                                        rel="nofollow"
                                        target="_blank"
                                ><img src="./images/icon-twitter.svg" alt="twitter"
                                /></a>
                            </li>
                            <li>
                                <a
                                        href="https://mail.google.com/"
                                        rel="nofollow"
                                        target="_blank"
                                ><img src="./images/icon-gg.svg" alt="Gmail"
                                /></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <a href="booking-page.html" class="btn-booking">Đặt bàn</a>
    </footer>
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
                <a href="tel:0352169819">0352169819</a>
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
