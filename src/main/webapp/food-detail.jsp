<%@ page import="hcmuaf.edu.fit.webqlnhahang.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 4/25/2025
  Time: 12:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Product food = (Product) request.getAttribute("foodDetail");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= food.getName() %> - Chi tiết món ăn</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.3/css/all.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="./css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="./css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="./css/home-page.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .food-detail-container {
            padding: 40px 0;
            background-color: #f8f9fa;
        }
        .food-image {
            max-width: 100%;
            border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .food-image:hover {
            transform: scale(1.02);
        }
        .food-info {
            padding: 30px;
            background: white;
            border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.05);
        }
        .food-title {
            font-size: 2.5rem;
            color: #2c3e50;
            margin-bottom: 15px;
        }
        .food-id {
            color: #7f8c8d;
            font-size: 0.9rem;
            margin-bottom: 20px;
        }
        .food-description {
            color: #34495e;
            line-height: 1.8;
            margin-bottom: 25px;
        }
        .price {
            font-size: 2rem;
            color: #e74c3c;
            font-weight: bold;
            margin: 20px 0;
        }
        .quantity-selector {
            display: flex;
            align-items: center;
            margin: 20px 0;
        }
        .quantity-btn {
            width: 40px;
            height: 40px;
            border: 1px solid #ddd;
            background: #f8f9fa;
            font-size: 1.2rem;
            cursor: pointer;
        }
        .quantity-input {
            width: 60px;
            height: 40px;
            text-align: center;
            border: 1px solid #ddd;
            margin: 0 10px;
        }
        .btn-custom {
            padding: 12px 25px;
            font-size: 1.1rem;
            margin: 10px 0;
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            transform: translateY(-2px);
        }
        .btn-add-cart {
            background-color: #2ecc71;
            border-color: #2ecc71;
        }
        .btn-wishlist {
            background-color: #e74c3c;
            border-color: #e74c3c;
        }
        .food-meta {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .food-meta-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .food-meta-item i {
            margin-right: 10px;
            color: #7f8c8d;
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp"/>
    
    <div class="food-detail-container">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="${pageContext.request.contextPath}<%= food.getImage() %>" class="food-image" alt="<%= food.getName() %>">
                </div>
                <div class="col-md-6">
                    <div class="food-info">
                        <h1 class="food-title"><%= food.getName() %></h1>
                        <p class="food-id">Mã món: <%= food.getId() %></p>
                        <p class="food-description"><%= food.getDetail() %></p>
                        
                        <div class="price"><%= food.getPrice() %> VNĐ</div>
                        
                        <div class="quantity-selector">
                            <button class="quantity-btn" onclick="decreaseQuantity()">-</button>
                            <input type="number" id="quantity" class="quantity-input" value="1" min="1" max="<%= food.getQuantity() %>">
                            <button class="quantity-btn" onclick="increaseQuantity()">+</button>
                        </div>

                        <form action="" class="d-inline">
                            <input type="hidden" name="productId" value="<%= food.getId() %>">
                            <button type="submit" class="btn btn-success btn-custom addCart">
                                <i class="fas fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </button>
                        </form>

                        <form action="wishlist" method="post" class="d-inline">
                            <input type="hidden" name="id" value="<%= food.getId() %>">
                            <button type="submit" class="btn btn-danger btn-custom">
                                <i class="fas fa-heart"></i> Yêu thích
                            </button>
                        </form>

                        <div class="food-meta">
                            <div class="food-meta-item">
                                <i class="fas fa-box"></i>
                                <span>Còn lại: <%= food.getQuantity() %> phần</span>
                            </div>
                            <div class="food-meta-item">
                                <i class="fas fa-clock"></i>
                                <span>Thời gian chế biến: 15-20 phút</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"/>

    <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="./js/home-page.js"></script>
    <script type="text/javascript" src="./js/script.js"></script>
    <script type="text/javascript" src="./js/displayUser.js"></script>

    <script>
        function increaseQuantity() {
            const input = document.getElementById('quantity');
            const max = parseInt(input.getAttribute('max'));
            if (parseInt(input.value) < max) {
                input.value = parseInt(input.value) + 1;
            }
        }

        function decreaseQuantity() {
            const input = document.getElementById('quantity');
            if (parseInt(input.value) > 1) {
                input.value = parseInt(input.value) - 1;
            }
        }

        const btnsuccess = document.querySelector('.addCart');
        btnsuccess.addEventListener('click', function (e) {
            e.preventDefault();
            const id = "<%= food.getId() %>";
            const name = "<%= food.getName() %>";
            const quantity = document.getElementById('quantity').value;
            const price = "<%= food.getPrice() %>";

            const product = {
                id: id,
                name: name,
                quantity: quantity,
                price: price
            };

            fetch('AddCart', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(product)
            })
            .then(response => {
                if (!response.ok) throw new Error('Có lỗi xảy ra khi thêm vào giỏ hàng.');
                return response.json();
            })
            .then(data => {
                console.log('Kết quả:', data);
                alert('Đã thêm vào giỏ hàng!');
            })
            .catch(error => {
                console.error('Lỗi:', error);
                alert('Thêm vào giỏ hàng thất bại.');
            });
        });
    </script>
</body>
</html>
