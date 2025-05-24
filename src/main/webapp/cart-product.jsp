<%@ page import="hcmuaf.edu.fit.webqlnhahang.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="./css/home-page.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cartProduct.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="icon" href="/image/logo.png" type="image/x-icon">
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
            <a href="#">Giỏ hàng</a>
        </div>
<%--        4.3Server đọc dữ liệu từ session → trả danh sách sản phẩm giỏ hàng.--%>
        <h2>Giỏ hàng <span id="total_Product">${sessionScope.cart.totalProductCart}(Sản phẩm)</span></h2>
        <div class="cart">
            <div class="cart-items">
                <c:forEach var="cartItem" items="${sessionScope.cart.list}">
                    <div class="cart-item" id="item-${cartItem.id}">
                        <div class="product-info">
                            <img src="${cartItem.image}" alt="${cartItem.name}">
                            <div class="product-details">
                                <h3>${cartItem.name}</h3>
                                <p>${cartItem.detail}</p>
                                <span>${cartItem.price} <del>229.000 ₫</del></span>
                                <div class="actions">
                                    <a href="wishlist?id=${cartItem.id}">Yêu thích</a> |
<%--                                    5.1.2Xóa sản phẩm:--%>
                                    <a href="javascript:void(0)" onclick="removeProduct(${cartItem.id})">Xóa</a>
                                </div>
                                <div class="promotion">Tặng ngay phần quà khi mua tại cửa hàng còn quà</div>
                            </div>
                        </div>
                        <div class="quantity">
<%--                            5.1.1Tăng số lượng:--%>
                            <input type="number" value="${cartItem.count}" name="quantity" min="1"
                                   onchange="updateProductQuantity(${cartItem.id}, this.value)">
                        </div>
                        <div class="total-price">${cartItem.price * cartItem.count}</div>
                    </div>
                </c:forEach>

                <div class="cart-summary cart-vat">
                    <p>Tạm tính: <span id="subtotal">${sessionScope.cart.totalCart}</span></p>
                    <p>(Đã bao gồm VAT)</p>
                    <button id="hang-1" class="checkout-btn order-product">Tiến hành đặt hàng</button>
                </div>
            </div>

            <div class="cart-summary">
                <h3>Hóa đơn của bạn</h3>
                <p>Tạm tính: <span id="subtotal-2">${sessionScope.cart.totalCart}</span></p>
                <p>Giảm giá: <span>-0 ₫</span></p>
                <p><strong>Tổng cộng: <span class="totalPrice">${sessionScope.cart.totalCart}đ</span></strong></p>
<%--                6.1Người dùng nhấn "Thanh toán"--%>
                <button id="hang-2" class="checkout-btn order-product">Tiến hành đặt hàng</button>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"/>
</div>
<%

    // Lấy username từ session
    User user = (User) session.getAttribute("user");


    String username = user.getName();


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
<script>

    function updateProductQuantity(productId, quantity) {
        //5.1.1.1 gửi request POST cart?update?id=productId
        fetch('${pageContext.request.contextPath}/cart/update?id=' + productId + '&quantity=' + quantity)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Update total items count
                    document.getElementById('total_Product').textContent = data.totalItems + '(Sản phẩm)';

                    // Update subtotals
                    document.getElementById('subtotal').textContent = data.totalPrice;
                    document.getElementById('subtotal-2').textContent = data.totalPrice;
                    document.querySelector('.totalPrice').textContent = data.totalPrice + 'đ';

                    // Update item total
                    const itemElement = document.getElementById('item-' + productId);
                    const priceElement = itemElement.querySelector('.total-price');
                    const price = parseFloat(priceElement.textContent) / parseInt(itemElement.querySelector('input[name="quantity"]').value);
                    priceElement.textContent = (price * quantity).toFixed(0);
                }
            })
            .catch(error => console.error('Error:', error));
    }

    function removeProduct(productId) {
        if (confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?')) {
            //	5.1.2.1 gửi request POST cart?remove=id=productId
            fetch('${pageContext.request.contextPath}/cart/remove?id=' + productId)
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        // Remove item from DOM
                        const itemElement = document.getElementById('item-' + productId);
                        itemElement.remove();

                        // Update total items count
                        document.getElementById('total_Product').textContent = data.totalItems + '(Sản phẩm)';

                        // Update subtotals
                        document.getElementById('subtotal').textContent = data.totalPrice;
                        document.getElementById('subtotal-2').textContent = data.totalPrice;
                        document.querySelector('.totalPrice').textContent = data.totalPrice + 'đ';
                    }
                })
                .catch(error => console.error('Error:', error));
        }
    }

    // Check if user is logged in before proceeding with order
    function checkProductInvaild() {
        <%
        User user = (User) session.getAttribute("user");
        if (user == null) {
        %>
        alert('Vui lòng đăng nhập để tiếp tục đặt hàng!');
        window.location.href = '${pageContext.request.contextPath}/login-page.jsp';
        <%
        } else {
        %>
        // 6.1.1chuyển đến checkout.jsp.
        window.location.href = '${pageContext.request.contextPath}/checkout.jsp';
        <%
        }
        %>
    }

    // Add event listeners for order buttons
    document.getElementById('hang-1').onclick = checkProductInvaild;
    document.getElementById('hang-2').onclick = checkProductInvaild;
</script>

</body>
</html>
