<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/31/2025
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>VMMS</title>

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
  <link rel="stylesheet" href="css/booking-page.css">
  <link rel="stylesheet" href="css/profile-user-page.css">
</head>

<body>
<div class="wrapper profile-page booking-page">
  <!-- header -->
<jsp:include page="header.jsp"/>
  <!-- main -->
  <main class="main">
    <!-- siderbar bên trái -->
    <div class="siderbar">
      <div class="siderbar-group">
        <div class=" siderbar-group-1">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2xlvtxHZMPsNg7oso_FgimAtFKGcp8dU0601pGuU&s" alt="avatar" class="avatar">
          <div class="name">
            <strong class="name-user--name">Ngô Như Thảo</strong>
            <div class="name-change--profile">
              <i class="far fa-pencil-alt"></i>
              <a href="change-password-page.html" class="change-profile--link">Đổi mật khẩu</a>
            </div>
          </div>
        </div>
      </div>

      <!-- đặt bàn -->
      <div class="siderbar-item siderbar-group3">
        <i class="far fa-table"></i>
        <span class="order">
            <a href="booking-detail-page.html" class="booking-link">Thông tin đặt bàn</a>
          </span>
      </div>
      <!-- đăt đồ ăn -->
      <div class="siderbar-item siderbar-group4">
        <i class="fas fa-hamburger"></i>
        <span class="food">
            <a href="delivery-page.html" class="booking-link">Đặt đồ ăn online</a>
          </span>
      </div>
      <!-- sang trang đặt bàn -->
      <div class="siderbar-item siderbar-group5">
        <i class="fas fa-tags"></i>
        <span class="booking-link">
            <a href="promotion.html" class="booking-link">Nhận voucher</a>
          </span>
      </div>
      <!-- sang trang tin tức -->
      <div class="siderbar-item siderbar-group5">
        <i class="fas fa-bell"></i>
        <span class="booking-link">
            <a href="news-category.html" class="booking-link">Xem tin tức hôm nay</a>
          </span>
      </div>
      <!-- sang thư viện ảnh -->
      <div class="siderbar-item siderbar-group5">
        <i class="far fa-image-polaroid"></i>
        <span class="booking-link">
            <a href="news-category.html" class="booking-link">Xem ảnh mới nhất</a>
          </span>
      </div>
      <!-- đánh giá -->
      <div class="siderbar-item siderbar-group5">
        <i class="fas fa-comment-smile"></i>
        <span class="booking-link">
            <a href="review-page.html" class="booking-link">Gửi đánh giá, góp ý</a>
          </span>
      </div>
      <!-- kết nối -->
      <div class="siderbar-item siderbar-group5">

        <a href="http://facebook.com/" class="connect-link">
          <i class="fab icon-connect fa-facebook"></i>
        </a>
        <a href="http://twitter.com/" class="connect-link">
          <i class="fab icon-connect fa-twitter"></i>
        </a>
        <a href="http://instagram.com/" class="connect-link">
          <i class="fab icon-connect fa-instagram-square"></i>
        </a>
        <a href="http://tiktok.com/" class="connect-link">
          <i class="fab icon-connect fa-tiktok"></i>
        </a>
      </div>

      <div class="noti">
        <i class="fas fa-exclamation"></i>
        <span>Trở thành khách hàng thân thiết của nhà hàng và cập nhật mọi thông tin mới nhất từ chúng về các sự kiện, mã giảm giá, chương trình ưu đãi và tri ân khách hàng tại :<a href="http://facebook.com/">fanpage của nhà hàng</a>. Và nhận hàng ngàn voucher tích lũy để mua hàng trên các nền tảng liên kết của nhà hàng nhé !</span>
      </div>
    </div>

    <!-- vong quay may man -->
    <div class="right">
      <div class="bg">
        <p class="thanks-title">Lời cảm ơn từ nhà hàng, kính gửi bạn {username}</p>
        <img class="thanks-img" src="images/thucamon.png" alt="thư cảm ơn">
        <p class="text-muted">Sự hỗ trợ của quý khách hàng, quý đối tác có ý nghĩa là cả thế giới với chúng tôi.
          Một lần nữa, chúng tôi xin gửi lời cảm ơn chân thành và sự tri ân sâu sắc tới quý khách hàng. Kính chúc quý khách hàng, quý đối tác sức khỏe, hạnh phúc và thành công.
        </p>
      </div>
    </div>
  </main>
  <!-- footer -->
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
          <a href="#!" class="menu-link">Khuyến mãi</a>
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