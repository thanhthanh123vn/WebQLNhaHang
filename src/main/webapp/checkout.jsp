<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thanh Toán - WebQLNhaHang</title>
  <link rel="stylesheet" href="./css/home-page.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
    .checkout-container {
      max-width: 1200px;
      margin: 2rem auto;
      padding: 0 1rem;
    }
    .order-summary {
      background-color: #f8f9fa;
      padding: 1.5rem;
      border-radius: 8px;
    }
    .form-label {
      font-weight: 500;
    }
    .cart-item {
      border-bottom: 1px solid #dee2e6;
      padding: 1rem 0;
    }
    .cart-item:last-child {
      border-bottom: none;
    }
    .total-section {
      border-top: 2px solid #dee2e6;
      margin-top: 1rem;
      padding-top: 1rem;
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
<div class="checkout-container">
  <h2 class="mb-4">Thanh Toán</h2>

  <div class="row">
    <!-- Thông tin giao hàng -->
    <div class="col-md-8">
      <div class="card mb-4">
        <div class="card-body">
          <h4 class="card-title mb-4">Thông Tin Giao Hàng</h4>
<%--          6.2Người dùng chỉnh địa chỉ--%>
<%--          6.2.1	gửi POST /checkout với body: address--%>
          <form action="checkout" method="POST">
            <div class="row mb-3">
              <div class="col-md-6">
                <label for="fullName" class="form-label">Họ và tên</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required>
              </div>
              <div class="col-md-6">
                <label for="phone" class="form-label">Số điện thoại</label>
                <input type="tel" class="form-control" id="phone" name="phone" required>
              </div>
            </div>

            <div class="mb-3">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
              <label for="address" class="form-label">Địa chỉ giao hàng</label>
              <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
            </div>

            <div class="mb-3">
              <label for="note" class="form-label">Ghi chú</label>
              <textarea class="form-control" id="note" name="note" rows="2"></textarea>
            </div>

            <h4 class="card-title mb-4">Phương Thức Thanh Toán</h4>
            <div class="mb-3">
              <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="cod" value="cod" checked>
                <label class="form-check-label" for="cod">
                  Thanh toán khi nhận hàng (COD)
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="banking" value="banking">
                <label class="form-check-label" for="banking">
                  Chuyển khoản ngân hàng
                </label>
              </div>
            </div>

            <button type="submit" class="btn btn-primary btn-lg w-100">Đặt Hàng</button>
          </form>
        </div>
      </div>
    </div>

    <!-- Tóm tắt đơn hàng -->
    <div class="col-md-4">
      <div class="card">
        <div class="card-body order-summary">
          <h4 class="card-title mb-4">Tóm Tắt Đơn Hàng</h4>

          <c:forEach var="cartItem" items="${sessionScope.cart.list}">
            <div class="cart-item">
              <div class="d-flex justify-content-between align-items-center">
                <div>
                  <h6 class="mb-1">${cartItem.name}</h6>
                  <small class="text-muted">Số lượng: ${cartItem.count}</small>
                </div>
                <div class="text-end">
                  <div class="fw-bold">${cartItem.price * cartItem.count}đ</div>
                </div>
              </div>
            </div>
          </c:forEach>

          <div class="total-section">
            <div class="d-flex justify-content-between mb-2">
              <span>Tạm tính:</span>
              <span>${cartItem.price * cartItem.count}đ</span>
            </div>
            <div class="d-flex justify-content-between mb-2">
              <span>Phí vận chuyển:</span>
              <span>Miễn phí</span>
            </div>
            <div class="d-flex justify-content-between fw-bold">
              <span>Tổng cộng:</span>
              <span>${cartItem.price * cartItem.count}đ</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="./js/displayUser.js"></script>
<%

  // Lấy username từ session
  String username = (String) session.getAttribute("fullname");





  // Nếu cưa đăng nhập, gán giá trị rỗng
  if (username == null) {
    username = "";
  }
  System.out.println(username);
%>
<script>
  // Gán username từ server vào biến JavaScript
  const username = "<%= username %>";
  console.log(username);

  // Kiểm tra trạng thái đăng nhập và gọi hàm loginUser nếu đã đăng nhập
  if (username && username.trim() !== "") {
    loginUser(username);
  }
  // Ví dụ gọi sau khi người dùng đăng nhập:
  document.addEventListener("DOMContentLoaded", function () {
    // Giả lập username (bạn thay bằng tên thực tế từ session hoặc từ backend)

    loginUser(username);
  });

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> 