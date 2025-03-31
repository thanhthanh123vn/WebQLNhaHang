<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/29/2025
  Time: 1:08 AM
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
  <link rel="stylesheet" href="./css/photo-library.css" />
</head>

<body>
<div class="wrapper photo-library">
<jsp:include page="header.jsp"/>
  <main class="main">
    <div class="page-banner">
      <div class="page-banner-image image-cover">
        <img src="./images/bg-news.png" />
      </div>
      <div class="container">
        <h3 class="page-title">THƯ VIỆN ẢNH</h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="home-page.html">Trang chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">
              Thư viện ảnh
            </li>
          </ol>
        </nav>
      </div>
    </div>
    <div class="gallery-wrapper">
      <div class="container">
        <div class="row">
          <div class="gallery-list col-sm-12 col-md-12 col-lg-12">
            <div class="gallery-item">
              <div class="gallery-item__image image-cover">
                <img src="./images/photo1.jpg" alt="">
              </div>
              <div class="gallery-item__name" data-toggle="modal" data-target="#modalgallery">
                KHÔNG GIAN
              </div>
            </div>
            <div class="gallery-item">
              <div class="gallery-item__image image-cover">
                <img src="./images/photo2.jpg" alt="">
              </div>
              <div class="gallery-item__name" data-toggle="modal" data-target="#modalgallery">
                KHÔNG GIAN
              </div>
            </div>
            <div class="gallery-item">
              <div class="gallery-item__image image-cover">
                <img src="./images/photo3.jpg" alt="">
              </div>
              <div class="gallery-item__name"  data-toggle="modal" data-target="#modalgallery">
                KHÔNG GIAN
              </div>
            </div>
            <div class="gallery-item">
              <div class="gallery-item__image image-cover">
                <img src="./images/photo4.jpg" alt="">
              </div>
              <div class="gallery-item__name"  data-toggle="modal" data-target="#modalgallery">
                KHÔNG GIAN
              </div>
            </div>
            <div class="gallery-item">
              <div class="gallery-item__image image-cover">
                <img src="./images/photo5.jpg" alt="">
              </div>
              <div class="gallery-item__name"  data-toggle="modal" data-target="#modalgallery">
                KHÔNG GIAN
              </div>
            </div>
            <div class="gallery-item">
              <div class="gallery-item__image image-cover">
                <img src="./images/photo6.jpg" alt="">
              </div>
              <div class="gallery-item__name"  data-toggle="modal" data-target="#modalgallery">
                KHÔNG GIAN
              </div>
            </div>
          </div>
          <div class="col-sm-12 col-md-12 col-lg-12">
            <nav class="gallery-pagination">
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
          <div class="modal fade modal-popup modal-gallery" tabindex="-1" role="dialog" id="modalgallery" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="gallery-slider owl-carousel owl-theme">
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
                    <div class="gallery-image">
                      <img src="./images/pexels-samfotograffo.jpg" alt="">
                    </div>
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
<script type="text/javascript" src="./js/photo-library.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>
