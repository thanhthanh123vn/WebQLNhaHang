<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm địa chỉ mới</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .error-message {
            color: red;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center">Thêm địa chỉ mới</h3>
                    </div>
                    <div class="card-body">
                        <c:if test="${not empty error}">
                            <div class="error-message">
                                <c:out value="${error}"/>
                            </div>
                        </c:if>
                        
                        <form action="add-address" method="post">
                            <div class="mb-3">
                                <label for="addressLine" class="form-label">Địa chỉ</label>
                                <input type="text" class="form-control" id="addressLine" name="addressLine" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="city" class="form-label">Thành phố</label>
                                <input type="text" class="form-control" id="city" name="city" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="state" class="form-label">Tỉnh/Thành phố</label>
                                <input type="text" class="form-control" id="state" name="state" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="postalCode" class="form-label">Mã bưu điện</label>
                                <input type="text" class="form-control" id="postalCode" name="postalCode" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="country" class="form-label">Quốc gia</label>
                                <input type="text" class="form-control" id="country" name="country" required>
                            </div>
                            
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="isDefault" name="isDefault">
                                <label class="form-check-label" for="isDefault">Đặt làm địa chỉ mặc định</label>
                            </div>
                            
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Thêm địa chỉ</button>
                                <a href="profile.jsp" class="btn btn-secondary">Quay lại</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> 