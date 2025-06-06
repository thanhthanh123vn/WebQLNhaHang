<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/31/2025
  Time: 8:56 PM
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
    <link rel="stylesheet" href="./css/booking-page.css" />
</head>

<body>
<div class="wrapper booking-page">
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
                    <h1 class="header-title">ĐẶT BÀN</h1>
                    <div class="header-contact">0962.180.180</div>
                    <span class="menu-search">
                <i class="fas fa-search icon-search"></i>
                <form action="" class="search-mobile">
                  <input type="search" name="" placeholder="Nhập tìm kiếm..." />
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
        <div class="booking">
            <div class="booking-form" style="margin-bottom: 4rem;">
                <div class="booking-form-heading">BÀN ĐANG ĐẶT</div>
                <span>Họ tên khách hàng :</span> <strong>Ngô Như Thảo</strong>
                <span>Thời gian :</span> <strong>22/22/22</strong>
                <span>Số khách :</span> <strong>22</strong>
                <span>Cơ sở :</span> <strong>Cơ sở 3</strong>
                <p style="margin-top: 3rem;">Chú ý : quý khách vui lòng thông báo trước nếu muốn hủy đặt bàn ít nhất 24h trước lịch đặt bàn. Và thông tin đặt bàn sẽ khó có thể thay đổi vào những ngày lễ tết, giờ cao điểm. Để được tư vấn hỗ trợ vui liên hệ nhân viên chăm sóc khách hàng, đường dây nóng 099896354.</p>
                <div class="booking-form-item required">
                    <button type="submit" class="btn btn-primary btn-submit">
                        HỦY ĐẶT BÀN
                    </button>
                </div>
            </div>

            <div class="booking-form">
                <div class="booking-form-heading">SỬA THÔNG TIN ĐẶT BÀN</div>
                <form action="">
                    <div class="booking-form-item required">
                        <label>Họ và tên</label>
                        <input type="text" class="input" placeholder="Aa" />
                    </div>
                    <div class="booking-form-item required">
                        <label>Email</label>
                        <input type="email" class="input" placeholder="Aa" />
                    </div>
                    <div class="booking-form-item required">
                        <label>Số điện thoại</label>
                        <input type="tel" class="input" placeholder="+84" />
                    </div>
                    <div class="booking-form-item required">
                        <label>Số khách</label>
                        <select class="form-control">
                            <option>1</option>
                            <option>2-4</option>
                            <option>4-8</option>
                            <option>8-12</option>
                            <option>>12</option>
                        </select>
                    </div>
                    <div class="booking-form-item required">
                        <label>Thời gian</label>
                        <input
                                type="datetime-local"
                                class="input"
                                pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}"
                                placeholder="00:00 - dd/mm/yyyy"
                        />
                    </div>
                    <div class="booking-form-item required">
                        <label>Nhà hàng</label>
                        <select class="form-control">
                            <option>Chọn cơ sở nhà hàng</option>
                            <option>Chọn cơ sở nhà hàng 1</option>
                            <option>Chọn cơ sở nhà hàng 2</option>
                            <option>Chọn cơ sở nhà hàng 3</option>
                        </select>
                    </div>
                    <div class="booking-form-item required">
                        <label>Ghi chú</label>
                        <textarea name="" id="" placeholder="Aa"></textarea>
                    </div>
                    <div class="booking-form-item required">
                        <button type="submit" class="btn btn-primary btn-submit">
                            XÁC NHẬN
                        </button>
                    </div>
                </form>
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
                                <a href="#">Giới thiệu</a>
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
                            <a href="http://www.facebook.com/" class="fanpage-facebook-name">NHÀ HÀNG VMMS</a>
                            <div class="fanpage-facebook-like">
                                <a href="http://www.facebook.com/"
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
