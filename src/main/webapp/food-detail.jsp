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
    <title>Chi tiết món ăn</title>
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
    <link rel="stylesheet" href="./css/home-page.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .food-image {
            max-width: 100%;
            border-radius: 16px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .food-info {
            padding: 20px;
        }
        .price {
            font-size: 24px;
            color: #e74c3c;
        }
        .btn-custom {
            margin-top: 20px;
            padding: 12px 20px;
        }
    </style>
</head>
<body>
  
<div class="container mt-5">
    <jsp:include page="header.jsp"/>
    <div class="row align-items-center">
        <div class="col-md-6">
            <img src=" ${pageContext.request.contextPath}<%= food.getImage() %>" class="food-image" alt="Hình ảnh món ăn">
        </div>
        <div class="col-md-6 food-info">
            <h2><%= food.getName() %></h2>
            <p class="text-muted">Mã món: <%= food.getId() %></p>
            <p><%= food.getDetail() %></p>
            <p class="price"><%= food.getPrice() %> VNĐ</p>

            <form action="" >
                <input type="text" name="productId" value="<%= food.getId() %>">
                <button type="submit" class="btn btn-success btn-custom addCart">Thêm vào giỏ hàng</button>
            </form>


            <form action="wishlist" method="post">
                <input type="hidden" name="id" value="<%= food.getId() %>">
                <button type="submit" class="btn btn-outline-danger btn-custom">Yêu thích</button>
            </form>
        </div>
    </div>
</div>
    <jsp:include page="footer.jsp"/>

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
<script type="text/javascript" src="./js/home-page.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
<script type="text/javascript" src="./js/displayUser.js"></script>

<script>
    const btnsuccess = document.querySelector('.addCart');

    btnsuccess.addEventListener('click', function () {
        const id = "<%= food.getId() %>";
        const name = "<%= food.getName() %>";
        const quantity = "<%= food.getQuantity() %>";
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
                'Content-Type': 'application/json' // gửi JSON
            },
            body: JSON.stringify(product) // chuyển object thành JSON
        })
            .then(response => {
                if (!response.ok) throw new Error('Có lỗi xảy ra khi thêm vào giỏ hàng.');
                return response.json(); // server trả JSON
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
