<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8"/>
    <title>Quản lý yêu cầu đặt bàn - Admin</title>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    />
</head>
<body>
<div class="container mt-5">
    <h2>Danh sách yêu cầu đặt bàn</h2>
    <table class="table table-bordered table-hover mt-4">
        <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>Họ và tên</th>
            <th>Email</th>
            <th>Số điện thoại</th>
            <th>Số khách</th>
            <th>Thời gian</th>
            <th>Nhà hàng</th>
            <th>Ghi chú</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="booking" items="${bookingRequests}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.name}</td>
                <td>${booking.email}</td>
                <td>${booking.phone}</td>
                <td>${booking.numberCustomer}</td>
                <td><fmt:formatDate value="${booking.time}" pattern="dd/MM/yyyy HH:mm"/></td>
                <td>${booking.restaurantBranch}</td>
                <td>${booking.note}</td>
                <td>
                    <c:choose>
                        <c:when test="${booking.status == 1}">
                            <span class="badge badge-success">Đã duyệt</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge badge-warning">Chờ duyệt</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <c:if test="${booking.status == 0}">
                        <form action="${pageContext.request.contextPath}/approve" method="post" style="margin:0;">
                            <input type="hidden" name="bookingId" value="${booking.id}"/>
                            <button type="submit" class="btn btn-sm btn-primary">Duyệt</button>
                        </form>
                    </c:if>
                    <c:if test="${booking.status == 1}">
                        <form action="${pageContext.request.contextPath}/deleteBooking" method="post" style="margin-top:5px;">
                            <input type="hidden" name="bookingId" value="${booking.id}"/>
                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</button>
                        </form>
                    </c:if>
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
