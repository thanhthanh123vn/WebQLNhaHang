<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8"/>
  <title>đánh giá</title>
  <link
          rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  />
</head>
<body>
<div class="container mt-5">
  <h2>Danh sách đánh giá</h2>

  <table class="table table-bordered table-hover mt-4">
    <thead class="thead-light">
    <tr>
      <th>stt</th>
      <th>Họ tên</th>
      <th>Số điện thoại</th>
      <th>Món ăn</th>
      <th>Nhà hàng</th>
      <th>đánh giá </th>
      <th>Chức năng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="review" items="${reviewRequests}">
      <tr>
        <td>${review.id}</td>
        <td>${review.fullname}</td>
        <td>${review.phone}</td>
        <td>${review.food}</td>
        <td>${review.restaurantBranch}</td>
        <td>${review.notes}</td>
        <td>
          <form action="${pageContext.request.contextPath}/adminReviewCon" method="post" onsubmit="return confirm('Bạn có chắc chắn muốn xóa?');">
            <input type="hidden" name="reviewId" value="${review.id}" />
            <button type="submit" class="btn btn-sm btn-danger">Xóa</button>
          </form>
        </td>
      </tr>
    </c:forEach>


    </tbody>

  </table>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        crossorigin="anonymous"
></script>
</body>
</html>

