<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/31/2025
  Time: 8:52 PM
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
  <link rel="stylesheet" href="./css/news-detail.css" />
</head>

<body>
<div class="wrapper news-detail">
  <jsp:include page="header.jsp"/>
  <main class="main">
    <div class="page-banner">
      <div class="page-banner-image image-cover">
        <img src="./images/bg-news.png" />
      </div>
      <div class="container">
        <h3 class="page-title">TIN TỨC - SỰ KIỆN</h3>
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
          <div class="col-content col-lg-9 col-md-12 col-sm-12">
            <h1 class="news-title">
              TẬN HƯỞNG ƯU ĐÃI GIỜ VÀNG CÙNG NGÀN MÓN NGON TẠI VMMS
            </h1>
            <div class="news-info">
              <div class="news-info__date">05/04/2022</div>
              <div class="news-info__share"><a href="http://facebook.com/">Chia sẻ</a></div>
            </div>
            <div class="news-detail">
              <p>
                Dù cho Tết đã hết, nhưng ưu đãi giờ vàng tại nhà Dì vẫn đang
                ở đây chờ bạn.
              </p>
              <p>
                Còn đợi chờ chi mà không đến với VMMS, thưởng thức các món
                ngon đặc sản theo cách riêng của bạn cùng ƯU ĐÃI GIỜ VÀNG –
                GIẢM NGAY CHO MỌI HÓA ĐƠN khi dùng bữa tại VMMSì từ Thứ 2
                đến Thứ 6 hàng tuần.
              </p>
              <p>
                Cùng hội ngộ sum vầy những ngày đầu năm trong không gian
                hiện đại, mang dấu ấn những nét kiến trúc Hà Nội xưa độc
                đáo, mà thân thuộc tại Nhà hàng VMMS, để những buổi tiệc
                càng thêm gắn bó, càng đậm yêu thương nghen.
              </p>
              <p>
                Cùng hội ngộ sum vầy những ngày đầu năm trong không gian
                hiện đại, mang dấu ấn những nét kiến trúc Hà Nội xưa độc
                đáo, mà thân thuộc tại Nhà hàng VMMS, để những buổi tiệc
                càng thêm gắn bó, càng đậm yêu thương nghen.
              </p>
              <img src="./images/news-detail.jpg" alt="" />
            </div>
          </div>
          <div class="col-lg-3 col-md-12 col-sm-12">
            <div class="col-sidebar">
              <div class="new-post">
                <div class="new-post-title">Tin mới nhất</div>
                <div class="new-post-list">
                  <div class="post-item">
                    <a href="#" class="">
                      <div class="post-item-image image-cover">
                        <img src="./images/post1.png" alt="" />
                      </div>
                      <div class="post-item-content">
                        <h4 class="post-item-title">
                          Check in liền tay - Hái lộc mê say
                        </h4>
                      </div>
                    </a>
                  </div>
                  <div class="post-item">
                    <a href="#" class="">
                      <div class="post-item-image image-cover">
                        <img src="./images/post2.png" alt="" />
                      </div>
                      <div class="post-item-content">
                        <h4 class="post-item-title">
                          Siêu phẩm món mới sắp ra mắt trên hệ thống nhà
                          hàng VMMS
                        </h4>
                      </div>
                    </a>
                  </div>
                  <div class="post-item">
                    <a href="#" class="">
                      <div class="post-item-image image-cover">
                        <img src="./images/post3.png" alt="" />
                      </div>
                      <div class="post-item-content">
                        <h4 class="post-item-title">
                          Hội ngộ hàn huyên - mến mời ưu đãi
                        </h4>
                      </div>
                    </a>
                  </div>
                  <div class="post-item">
                    <a href="#" class="">
                      <div class="post-item-image image-cover">
                        <img src="./images/post4.png" alt="" />
                      </div>
                      <div class="post-item-content">
                        <h4 class="post-item-title">
                          VMMS đón chào quý khách với công suất tối đa
                        </h4>
                      </div>
                    </a>
                  </div>
                  <div class="post-item">
                    <a href="#" class="">
                      <div class="post-item-image image-cover">
                        <img src="./images/post5.png" alt="" />
                      </div>
                      <div class="post-item-content">
                        <h4 class="post-item-title">
                          Các món ăn siêu ngon với view hồ Tây cực xịn tại
                          VMMS Trích Sài
                        </h4>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="tags">
                <div class="tags-title">Tags</div>
                <div class="tags-list">
                  <a href="" class="tags-item">Nội thất phòng khách</a>
                  <a href="" class="tags-item">Nội thất phòng bếp</a>
                  <a href="" class="tags-item">Nội thất phòng ngủ</a>
                  <a href="" class="tags-item">Xu hướng nội thất 2022</a>
                  <a href="" class="tags-item"
                  >Cẩm nang thiết kế nội thất</a
                  >
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
