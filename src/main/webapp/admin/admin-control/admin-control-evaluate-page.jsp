<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>Quản lí đánh giá - VMMS</title>
  <link
          rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  />
  <style>
    .container_body {
      padding: 20px;
    }
    table {
      width: 100%;
    }
    th, td {
      padding: 8px;
      text-align: left;
    }
  </style>
</head>
<body>
<div class="container_body">
  <h2>Danh sách đánh giá</h2>
  <table class="table table-bordered table-hover">
    <thead>
    <tr>
      <th>Họ tên</th>
      <th>Số điện thoại</th>
      <th>Món ăn</th>
      <th>Nhà hàng</th>
      <th>Ghi chú</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="review" items="${reviews}">
      <tr>
        <td>${review.fullname}</td>
        <td>${review.phone}</td>
        <td>${review.food}</td>
        <td>${review.restaurantBranch}</td>
        <td>${review.notes}</td>
      </tr>
    </c:forEach>
    <c:if test="${empty reviews}">
      <tr>
        <td colspan="7" style="text-align:center;">Không có đánh giá nào</td>
      </tr>
    </c:if>
    </tbody>
  </table>
</div>
</body>
</html>
