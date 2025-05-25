<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.List" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="com.google.gson.Gson" %>
<%@ page import="hcmuaf.edu.fit.webqlnhahang.entity.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đơn hàng của tôi</title>
  <link rel="stylesheet" href="./css/home-page.css"/>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/qldonhang.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
  <link rel="icon" href="../image/logo.png" type="image/x-icon">
  <!-- Leaflet CSS -->
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
  <!-- Leaflet JS -->
  <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
  <style>




    h2 {
      text-align: center;
      color: #0f172a;
    }

    .order-container {
      max-width: 800px;
      margin: 0 auto;
    }

    .order-card {
      background: #ffffff;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      padding: 20px;
      margin-bottom: 20px;
      transition: 0.3s ease;
      position: relative;
    }

    .order-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 10px;
    }

    .order-code {
      font-weight: bold;
      color: #1e293b;
    }

    .order-status {
      padding: 6px 12px;
      border-radius: 20px;
      font-size: 0.9rem;
      font-weight: bold;
    }

    .status-delivered { background: #dcfce7; color: #16a34a; }
    .status-shipping { background: #e0f2fe; color: #0284c7; }
    .status-pending { background: #fef9c3; color: #ca8a04; }

    .order-info {
      margin-bottom: 10px;
    }

    .order-info span {
      display: inline-block;
      margin-right: 15px;
    }

    .btn-toggle, .btn-like, .btn-cancel {
      border: none;
      border-radius: 8px;
      padding: 8px 14px;
      margin-right: 10px;
      cursor: pointer;
      font-weight: 500;
    }

    .btn-toggle {
      background: #2563eb;
      color: white;
    }

    .btn-toggle:hover {
      background: #1e40af;
    }

    .btn-like {
      background: #f472b6;
      color: white;
    }

    .btn-like.liked {
      background: #be185d;
    }

    .btn-cancel {
      background: #f87171;
      color: white;
    }

    .btn-cancel:hover {
      background: #b91c1c;
    }

    .order-details {
      display: none;
      background: #f8fafc;
      padding: 10px 15px;
      border-radius: 8px;
      margin-top: 10px;
      font-size: 0.95rem;
      line-height: 1.5;
    }

    .total-amount {
      font-weight: bold;
      color: #0f172a;
      margin-top: 5px;
    }

    .btn-group {
      margin-top: 10px;
    }


    .order-card {
      background: #fff;
      border-radius: 12px;
      padding: 16px 24px;
      margin-bottom: 20px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.08);
      font-family: 'Segoe UI', sans-serif;
      position: relative;
      transition: all 0.3s ease;
    }

    .order-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 12px;
      font-size: 16px;
    }

    .order-status {
      padding: 4px 12px;
      border-radius: 20px;
      font-size: 14px;
      font-weight: bold;
    }

    .status-shipping {
      background-color: #e0f0ff;
      color: #007bff;
    }

    .order-item {
      margin: 6px 0;
      font-size: 15px;
    }

    .order-item img {
      margin-right: 8px;
      border-radius: 6px;
    }

    .btn-group {
      margin-top: 12px;
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }

    .btn-group button {
      padding: 6px 12px;
      border-radius: 8px;
      border: none;
      cursor: pointer;
      font-weight: 600;
      font-size: 14px;
      transition: all 0.2s ease-in-out;
    }

    .btn-toggle {
      background-color: #007bff;
      color: #fff;
    }

    .btn-like {
      background-color: #ff69b4;
      color: white;
    }

    .btn-cancel {
      background-color: #f44336;
      color: white;
    }

    .btn-group button:hover {
      opacity: 0.9;
    }

    .order-details {
      display: none;
      margin-top: 10px;
      font-size: 14px;
      color: #555;
    }
    .order-item {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 10px 0;
    }

    .order-desc {
      margin: 8px 0;
      font-size: 15px;
      color: #334155;
    }

    .order-info p {
      margin: 4px 0;
      font-size: 15px;
    }

    .order-details p {
      margin: 4px 0;
      line-height: 1.5;
    }

    .order-header span {
      font-size: 16px;
    }

    .order-status {
      min-width: 100px;
      text-align: center;
    }

    .map-container {
      display: none;
      margin-top: 15px;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .map-container.active {
      display: block;
    }

    #map {
      width: 100%;
      height: 300px;
    }

    .track-delivery-btn {
      background-color: #4CAF50;
      color: white;
      padding: 8px 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-weight: 500;
      margin-top: 10px;
    }

    .track-delivery-btn:hover {
      background-color: #45a049;
    }

  </style>


</head>

<body>
<div id="web-service">
  <jsp:include page="header.jsp"/>
  <section class="banner-home">
    <div class="banner-home__image image-cover">
      <img src="./images/banner-home.png" alt="banner trang chủ" />
    </div>
  </section>
  <div class="container">
    <div class="breadcrumb">
      <a href="main.html">Trang chủ ></a>
      <a href="#">Đơn hàng của tôi</a>
    </div>
    <h2>Đơn hàng của tôi</h2>
    <div class="cart">
      <div class="cart-items" id="productContainer">
        <!-- Orders will be dynamically inserted here -->
      </div>

      <div class="cart-summary">
        <h3>Thông tin đơn hàng</h3>
        <div id="orderSummary">
          <!-- Order summary will be dynamically inserted here -->
        </div>
      </div>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</div>


<script src="${pageContext.request.contextPath}/js/loadQldh.js"></script>
<script src="${pageContext.request.contextPath}/js/displayUser.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script src="${pageContext.request.contextPath}/js/searchProduct.js"></script>
<%
  // Lấy thông tin từ session

  String username = (String) session.getAttribute("fullname");

  Cart cartData = (Cart) session.getAttribute("cartQL");
  List<CartItem> productCarts = (cartData != null) ? cartData.getList() : new ArrayList<>();
  Product payProduct = (Product) session.getAttribute("productQL");
  String action = (session.getAttribute("action") != null) ? (String) session.getAttribute("action") : "";

  Order orderDetail = ((Order)session.getAttribute("orderDetail")==null)?null:(Order)session.getAttribute("orderDetail");

  String orderDetailJson =(orderDetail != null) ? new Gson().toJson(orderDetail) : "null";
  System.out.println(productCarts.toString());
  String cartJson = (cartData != null) ? new Gson().toJson(productCarts) : "null";
  String payProductJson = (payProduct != null) ? new Gson().toJson(payProduct) : "null";
%>
<script>
  // Gán username từ server vào biến JavaScript
  const username = "<%= username %>";
  console.log(username);

  // Kiểm tra trạng thái đăng nhập và gọi hàm loginUser nếu đã đăng nhập
  if (username && username.trim() !== "") {
    loginUser(username);
  }

  // Đảm bảo xử lý nút đăng xuất
  document.addEventListener("DOMContentLoaded", () => {
    const logoutButtons = document.querySelectorAll(".logout-account");
    logoutButtons.forEach(button => {
      button.addEventListener("click", () => {
        logoutUser();
      });
    });
  });

  // Hàm xử lý đăng xuất
  function logoutUser() {
    console.log("Đăng xuất...");

    // Gửi yêu cầu đến server để xóa session
    fetch("LogoutServlet", {
      method: "POST"
    })
            .then(response => {
              if (response.ok) {
                console.log("Đăng xuất thành công");
                // Chuyển hướng người dùng về trang đăng nhập hoặc trang chủ
                window.location.href = "index.jsp";
              } else {
                console.error("Lỗi khi đăng xuất");
              }
            })
            .catch(error => console.error("Lỗi kết nối:", error));
  }
</script>
<script>

  document.addEventListener("DOMContentLoaded", function () {
    const productContainer = document.getElementById("productContainer");

    const cartData = <%= cartJson %>;
    const payProductData = <%= payProductJson %>;
    const action = "<%= action %>";
    const orderDetail = <%= orderDetailJson %>;

    if (cartData && cartData.length > 0 ) {
      cartData.forEach(product => {
        productContainer.innerHTML += createOrderHTML(product,orderDetail);

      });
    } else if (payProductData !== null) {
      productContainer.innerHTML += createOrderHTML(payProductData, orderDetail,true);
    } else {
      productContainer.innerHTML = "<p>Không có đơn hàng nào được tìm thấy.</p>";
    }
  });


</script>







<script>


  function toggleChat() {
    var chatBox = document.getElementById("chatBox");
    if (chatBox.style.display === "none" || chatBox.style.display === "") {
      chatBox.style.display = "flex";
    } else {
      chatBox.style.display = "none";
    }
  }
</script>

  <%--function createOrderHTML(product, orderDetail, isSingleProduct = false) {--%>
  <%--    // ... existing code ...--%>

  <%--    // Thêm container bản đồ và nút theo dõi vào chi tiết đơn hàng--%>
  <%--    const mapHtml = `--%>
  <%--        <div class="map-container" id="map-${product.id}">--%>
  <%--            <div id="map-${product.id}-container" style="height: 300px;"></div>--%>
  <%--        </div>--%>
  <%--        <button class="track-delivery-btn" onclick="toggleMap('${product.id}')">--%>
  <%--            Xem vị trí giao hàng--%>
  <%--        </button>--%>
  <%--    `;--%>

  <%--    // Thêm HTML bản đồ vào chi tiết đơn hàng--%>
  <%--    orderDetailsHtml += mapHtml;--%>

  <%--    return `--%>
  <%--        <div class="order-card">--%>
  <%--            ${orderHeaderHtml}--%>
  <%--            ${orderInfoHtml}--%>
  <%--            ${orderDetailsHtml}--%>
  <%--        </div>--%>
  <%--    `;--%>
  <%--}--%>





</body>

</html>