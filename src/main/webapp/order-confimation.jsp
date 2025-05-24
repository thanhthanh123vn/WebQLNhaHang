<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Xác Nhận Đơn Hàng - WebQLNhaHang</title>
  <link rel="stylesheet" href="./css/home-page.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
    .confirmation-container {
      max-width: 800px;
      margin: 2rem auto;
      padding: 0 1rem;
    }
    .success-icon {
      color: #28a745;
      font-size: 4rem;
      margin-bottom: 1rem;
    }
    .order-details {
      background-color: #f8f9fa;
      padding: 1.5rem;
      border-radius: 8px;
      margin-top: 2rem;
    }
    .detail-row {
      margin-bottom: 1rem;
      padding-bottom: 1rem;
      border-bottom: 1px solid #dee2e6;
    }
    .detail-row:last-child {
      border-bottom: none;
      margin-bottom: 0;
      padding-bottom: 0;
    }
  </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<section class="banner-home">
  <div class="banner-home__image image-cover">
    <img src="./images/banner-home.png" alt="banner trang chủ" />
  </div>
</section>
<div class="confirmation-container">
  <div class="text-center">
    <i class="fas fa-check-circle success-icon"></i>
    <h2 class="mb-4">Đặt Hàng Thành Công!</h2>
    <p class="lead">Cảm ơn bạn đã đặt hàng. Chúng tôi sẽ xử lý đơn hàng của bạn trong thời gian sớm nhất.</p>
  </div>

  <div class="order-details">
    <h4 class="mb-4">Thông Tin Đơn Hàng</h4>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Mã đơn hàng:</div>
        <div class="col-md-8">#${order.id}</div>
      </div>
    </div>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Ngày đặt:</div>
        <div class="col-md-8">
          <fmt:formatDate value="${order.createdAt}" pattern="dd/MM/yyyy HH:mm"/>
        </div>
      </div>
    </div>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Trạng thái:</div>
        <div class="col-md-8">
          <span class="badge bg-warning">${order.status}</span>
        </div>
      </div>
    </div>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Phương thức thanh toán:</div>
        <div class="col-md-8">
          <c:choose>
            <c:when test="${order.paymentMethod == 'cod'}">
              Thanh toán khi nhận hàng (COD)
            </c:when>
            <c:when test="${order.paymentMethod == 'banking'}">
              Chuyển khoản ngân hàng
            </c:when>
          </c:choose>
        </div>
      </div>
    </div>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Thông tin giao hàng:</div>
        <div class="col-md-8">
          <p class="mb-1">${order.fullName}</p>
          <p class="mb-1">${order.phone}</p>
          <p class="mb-1">${order.email}</p>
          <p class="mb-0">${order.shippingAddress}</p>
        </div>
      </div>
    </div>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Ghi chú:</div>
        <div class="col-md-8">${order.note}</div>
      </div>
    </div>

    <div class="detail-row">
      <div class="row">
        <div class="col-md-4 fw-bold">Tổng tiền:</div>
        <div class="col-md-8">
          <h5 class="text-danger mb-0">
            <fmt:formatNumber value="${order.totalAmount}" type="currency" currencySymbol="đ"/>
          </h5>
        </div>
      </div>
    </div>
  </div>

  <div class="text-center mt-4">
    <a href="home" class="btn btn-primary me-2">Tiếp tục mua sắm</a>
    <a href="orders" class="btn btn-outline-primary">Xem đơn hàng của tôi</a>
  </div>
</div>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>