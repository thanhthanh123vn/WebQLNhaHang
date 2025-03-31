<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/29/2025
  Time: 1:11 AM
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
    <link rel="stylesheet" href="./css/contact-page.css" />
</head>

<body>
<div class="wrapper contact-page">
 <jsp:include page="header.jsp"/>
    <main class="main">
        <div class="page-banner">
            <div class="page-banner-image image-cover">
                <img src="./images/bg-news.png" />
            </div>
            <div class="container">
                <h1 class="page-title">LIÊN HỆ</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="home-page.html">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Liên hệ
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="contact-wrapper">
            <div class="container">
                <div class="row row-map">
                    <div class="col-sm-12 col-md-12 col-lg-4">
                        <div class="list-shop">
                            <div class="list-shop-title">Hệ thống cửa hàng VMMS</div>
                            <div
                                    class="nav flex-column"
                                    role="tablist"
                                    aria-orientation="vertical"
                            >
                                <div
                                        class="nav-link active shop-item"
                                        data-toggle="pill"
                                        href="#shop1"
                                >
                                    <div class="shop-item__name">VMMS Pháo Đài Láng</div>
                                    <div class="shop-item__addr">
                                        <span>Địa chỉ:</span> Tầng 3 số 14 Pháo Đài Láng, Láng
                                        Thượng, Đống Đa, Hà Nội
                                    </div>
                                    <div class="shop-item__open-times">
                                        <span>Thời gian mở cửa:</span> 8:00 - 21:00
                                    </div>
                                    <div class="shop-item__phone-number">
                                        <span>Điện thoại:</span> 0962.180.180
                                    </div>
                                    <div class="shop-item__link-map">
                                        <a href="#" target="_blank">Chỉ đường</a>
                                    </div>
                                </div>
                                <div
                                        class="nav-link shop-item"
                                        data-toggle="pill"
                                        href="#shop2"
                                >
                                    <div class="shop-item__name">VMMS Xã Đàn</div>
                                    <div class="shop-item__addr">
                                        <span>Địa chỉ:</span> Tầng 7 số 234 Xã Đàn, Phương Liên,
                                        Đống Đa, Hà Nội
                                    </div>
                                    <div class="shop-item__open-times">
                                        <span>Thời gian mở cửa:</span> 8:00 - 21:00
                                    </div>
                                    <div class="shop-item__phone-number">
                                        <span>Điện thoại:</span> 0962.180.180
                                    </div>
                                    <div class="shop-item__link-map">
                                        <a
                                                href="https://www.google.com/maps/@20.996543,105.9311716,17z?hl=vi-VN"
                                                target="_blank"
                                        >Chỉ đường</a
                                        >
                                    </div>
                                </div>
                                <div
                                        class="nav-link shop-item"
                                        data-toggle="pill"
                                        href="#shop3"
                                >
                                    <div class="shop-item__name">VMMS Cầu Giấy</div>
                                    <div class="shop-item__addr">
                                        <span>Địa chỉ:</span> Tầng 7 số 234 Xã Đàn, Phương Liên,
                                        Đống Đa, Hà Nội
                                    </div>
                                    <div class="shop-item__open-times">
                                        <span>Thời gian mở cửa:</span> 8:00 - 21:00
                                    </div>
                                    <div class="shop-item__phone-number">
                                        <span>Điện thoại:</span> 0962.180.180
                                    </div>
                                    <div class="shop-item__link-map">
                                        <a
                                                href="https://www.google.com/maps/@20.996543,105.9311716,17z?hl=vi-VN"
                                                target="_blank"
                                        >Chỉ đường</a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div
                            class="tab-content col-sm-12 col-md-12 col-lg-8"
                            id="v-pills-tabContent"
                    >
                        <div
                                class="tab-pane iframe-cover fade show active"
                                id="shop1"
                                role="tabpanel"
                        >
                            <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.320252263762!2d105.80386291534718!3d21.01986818600327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab677bafffff%3A0xa95fb8fb30b6c43e!2zVOG6p25nIDMgc-G7kSwgMTQgUC4gUGjDoW8gxJDDoGkgTMOhbmcsIEzDoW5nIFRoxrDhu6NuZywgxJDhu5FuZyDEkGEsIEjDoCBO4buZaSAxMTUxMiwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1659426656292!5m2!1svi!2s"
                                    width="100%"
                                    height="100%"
                                    style="border: 0"
                                    allowfullscreen=""
                                    loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"
                            ></iframe>
                        </div>
                        <div
                                class="tab-pane iframe-cover fade"
                                role="tabpanel"
                                id="shop2"
                        >
                            <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.5114255153944!2d105.83422571534707!3d21.012213086007353!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab86e779fd9b%3A0xd056428d1877cef!2zVOG6p25nIDcgc-G7kQ!5e0!3m2!1svi!2s!4v1659426859306!5m2!1svi!2s"
                                    style="border: 0"
                                    allowfullscreen=""
                                    loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"
                            ></iframe>
                        </div>
                        <div
                                class="tab-pane iframe-cover fade"
                                role="tabpanel"
                                id="shop3"
                        >
                            <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29793.720005753727!2d105.77364421767997!3d21.024081609912482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab492a2477f9%3A0xe07be6e78ec30328!2zTmjDoCBIw6BuZyBEw6ogTsO6aSBIw6AgR2lhbmc!5e0!3m2!1svi!2s!4v1683529367761!5m2!1svi!2s"
                                    style="border: 0"
                                    allowfullscreen=""
                                    loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                        </div>
                        <div
                                class="tab-pane fade"
                                id="v-pills-settings"
                                role="tabpanel"
                                aria-labelledby="v-pills-settings-tab"
                        >
                            ...
                        </div>
                    </div>
                </div>
                <div class="row row-form">
                    <div class="col-sm-12">
                        <div class="contact-form">
                            <div class="contact-form-title">GÓP Ý VỚI CHÚNG TÔI</div>
                            <form onsubmit="return false">
                                <div class="contact-form-item required">
                                    <label>Họ và tên</label>
                                    <input type="text" class="input" />
                                </div>
                                <div class="contact-form-item required">
                                    <label>Email</label>
                                    <input type="email" class="input" />
                                </div>
                                <div class="contact-form-item required">
                                    <label>Số điện thoại</label>
                                    <input type="tel" class="input" />
                                </div>
                                <div class="contact-form-item required">
                                    <label>Nội dung góp ý</label>
                                    <textarea name="" id=""></textarea>
                                </div>
                                <div class="contact-form-item">
                                    <button type="submit" class="btn btn-primary btn-submit" data-toggle="modal" data-target="#modalcontact">
                                        Gửi đi
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="modal fade modal-popup modal-contact" tabindex="-1" role="dialog" id="modalcontact" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <img src="./images/icon-check-green.svg" alt="">
                                        <p>Góp ý của bạn đã được gửi đi thành công. Chúng tôi sẽ phản hồi hoặc liên hệ lại với bạn trong thời gian sớm nhất.</p>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                    </div>

                                </div>
                            </div>
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
