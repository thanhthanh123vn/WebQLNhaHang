<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Đánh giá món ăn - VMMS</title>
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
  <link rel="stylesheet" href="./css/review.css" />
</head>

<body>

<div class="bg-image"></div>

<a href="index.jsp" style="
    position: fixed;
    top: 10px;
    left: 10px;
    z-index: 1000;
    display: inline-block;
">
  <img src="./images/logo-web.png" alt="Logo NH&SK" style="height: 40px; width: auto;" />
</a>

<div class="form-container">

  <h2 class="form-title">Đánh giá món ăn của VMMS</h2>

  <%-- Hiển thị thông báo lỗi nếu có --%>
  <c:if test="${not empty message}">
    <div class="alert alert-danger">${message}</div>
  </c:if>

  <form action="${pageContext.request.contextPath}/review" method="post" id="reviewForm">
    <div class="row">
      <div class="col-half form-group">
        <label for="fullname">Họ và tên <span class="required">*</span></label>
        <input type="text" id="fullname" name="fullname" placeholder="Họ tên" required />
      </div>
      <div class="col-half form-group">
        <label for="phone">Số điện thoại <span class="required">*</span></label>
        <input type="tel" id="phone" name="phone" placeholder="Số điện thoại" required />
      </div>
    </div>
    <div class="row">
      <div class="col-half form-group">
        <label for="food">Món ăn <span class="required">*</span></label>
        <select id="food" name="food" required>
          <option value="Gà sốt me" selected>Gà sốt me</option>
          <option value="Bò lá lốt">Bò lá lốt</option>
          <option value="Gà lên mâm">Gà lên mâm</option>
          <option value="Gà hầm ống tre">Gà hầm ống tre</option>
          <option value="Gà hầm thuốc bắc">Gà hầm thuốc bắc</option>
          <option value="Gà hấp lá chanh">Gà hấp lá chanh</option>
        </select>
      </div>
      <div class="col-half form-group">
        <label for="restaurant">Nhà hàng <span class="required">*</span></label>
        <select id="restaurant" name="restaurant_branch" required>
          <option value="" disabled selected>Chọn cơ sở nhà hàng</option>
          <option value="Cơ sở 1">Cơ sở 1</option>
          <option value="Cơ sở 2">Cơ sở 2</option>
          <option value="Cơ sở 3">Cơ sở 3</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="notes">Đánh giá  <span class="required">*</span></label>
      <textarea id="notes" name="notes" placeholder="Nhập ghi chú của bạn" required></textarea>
    </div>
    <button type="submit" class="btn-submit">Gửi đánh giá</button>
  </form>
</div>

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
<script type="text/javascript" src="./js/script.js"></script>

</body>
</html>
