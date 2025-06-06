<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/31/2025
  Time: 8:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>VMMS</title>

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
  <link rel="stylesheet" href="css/booking-page.css">
  <link rel="stylesheet" href="css/promotion-page.css">
</head>
<body>
<div class="wrapper booking-page promotion-page">
  <!-- header -->
 <jsp:include page="header.jsp"/>

  <div class="title">MÃ GIẢM GIÁ HOT</div>
  <span>Lưu ý : các mã giảm giá này áp dụng cho tất cả các nền tảng đặt món online của VMMS bạn nhé !</span>
  <main class="main">
    <div class="list-item row">
      <div class="item col-sm-12 col-md-6 col-lg-4">
        <div class="left">
          <img src="https://cf.shopee.vn/file/01ad529d780769c418b225c96cb8a3d7" alt="" class="item-img">
          <strong class="item-name">Noodle</strong>
        </div>
        <div class="right">
          <span class="promotion">GIẢM : <strong class="promotion-value">400k</strong></span>
          <br><span class="promotion">Đơn hàng tối thiểu : <strong class="promotion-minimum">250.000đ</strong></span>
          <br><span class="promotion">Còn lại : <strong class="promotion-remaining">100%</strong></span>
          <br><span class="promotion">MÃ : <strong id="promotion_text" class="promotion-code">AZALKSDLDL</strong></span>
          <br><span class="promotion">Hạn SD : <strong class="promotion-expiry">12/09/2023</strong></span>
          <br><span class="promotion">Lưu ý :<strong class="item-note">Chỉ áp dụng cho sản phẩm của VMMS cung cấp</strong></span>
          <br><button class="promotion-btn" onclick="copyCouponCode(event, 'COSLUX05', 'https://shope.ee/an_redir?origin_link=https%3A%2F%2Fshopee.vn%2Fsearch%3FpromotionId%3D613398027468800%26signature%3D9da90109160ec2cee32ac6c0e9a1ae26f3cb73cc7049d622bf0418649854febb&amp;affiliate_id=17310730002&amp;sub_id=SL_1----', true)">copy</button>
        </div>
      </div>
      <div class="item col-sm-12 col-md-6 col-lg-4">
        <div class="left">
          <img src="https://cf.shopee.vn/file/01ad529d780769c418b225c96cb8a3d7" alt="" class="item-img">
          <strong class="item-name">Noodle</strong>
        </div>
        <div class="right">
          <span class="promotion">GIẢM : <strong class="promotion-value">400k</strong></span>
          <br><span class="promotion">Đơn hàng tối thiểu : <strong class="promotion-minimum">250.000đ</strong></span>
          <br><span class="promotion">Còn lại : <strong class="promotion-remaining">100%</strong></span>
          <br><span class="promotion">MÃ : <strong id="promotion_text" class="promotion-code">AZALKSDLDL</strong></span>
          <br><span class="promotion">Hạn SD : <strong class="promotion-expiry">12/09/2023</strong></span>
          <br><span class="promotion">Lưu ý :<strong class="item-note">Chỉ áp dụng cho sản phẩm của VMMS cung cấp</strong></span>
          <br><button class="promotion-btn">copy</button>
        </div>
      </div><div class="item col-sm-12 col-md-6 col-lg-4">
      <div class="left">
        <img src="https://cf.shopee.vn/file/01ad529d780769c418b225c96cb8a3d7" alt="" class="item-img">
        <strong class="item-name">Noodle</strong>
      </div>
      <div class="right">
        <span class="promotion">GIẢM : <strong class="promotion-value">400k</strong></span>
        <br><span class="promotion">Đơn hàng tối thiểu : <strong class="promotion-minimum">250.000đ</strong></span>
        <br><span class="promotion">Còn lại : <strong class="promotion-remaining">100%</strong></span>
        <br><span class="promotion">MÃ : <strong id="promotion_text" class="promotion-code">AZALKSDLDL</strong></span>
        <br><span class="promotion">Hạn SD : <strong class="promotion-expiry">12/09/2023</strong></span>
        <br><span class="promotion">Lưu ý :<strong class="item-note">Chỉ áp dụng cho sản phẩm của VMMS cung cấp</strong></span>
        <br><button class="promotion-btn">copy</button>
      </div>
    </div><div class="item col-sm-12 col-md-6 col-lg-4">
      <div class="left">
        <img src="https://cf.shopee.vn/file/01ad529d780769c418b225c96cb8a3d7" alt="" class="item-img">
        <strong class="item-name">Noodle</strong>
      </div>
      <div class="right">
        <span class="promotion">GIẢM : <strong class="promotion-value">400k</strong></span>
        <br><span class="promotion">Đơn hàng tối thiểu : <strong class="promotion-minimum">250.000đ</strong></span>
        <br><span class="promotion">Còn lại : <strong class="promotion-remaining">100%</strong></span>
        <br><span class="promotion">MÃ : <strong class="promotion-code" id="promotion_text">AZALKSDLDL</strong></span>
        <br><span class="promotion">Hạn SD : <strong class="promotion-expiry">12/09/2023</strong></span>
        <br><span class="promotion">Lưu ý :<strong class="item-note">Chỉ áp dụng cho sản phẩm của VMMS cung cấp</strong></span>
        <br><button class="promotion-btn">copy</button>
      </div>
    </div><div class="item col-sm-12 col-md-6 col-lg-4">
      <div class="left">
        <img src="https://cf.shopee.vn/file/01ad529d780769c418b225c96cb8a3d7" alt="" class="item-img">
        <strong class="item-name">Noodle</strong>
      </div>
      <div class="right">
        <span class="promotion">GIẢM : <strong class="promotion-value">400k</strong></span>
        <br><span class="promotion">Đơn hàng tối thiểu : <strong class="promotion-minimum">250.000đ</strong></span>
        <br><span class="promotion">Còn lại : <strong class="promotion-remaining">100%</strong></span>
        <br><span class="promotion">MÃ : <strong class="promotion-code" id="promotion_text">tesst</strong></span>
        <br><span class="promotion">Hạn SD : <strong class="promotion-expiry">12/09/2023</strong></span>
        <br><span class="promotion">Lưu ý :<strong class="item-note">Chỉ áp dụng cho sản phẩm của VMMS cung cấp</strong></span>
        <br><button id="btn_cop" class="promotion-btn">copy</button>
      </div>
    </div>
    </div>
  </main>
</div>
<script>
  function copyVourcher(){
    let input = document.getElementById('promotion_text')
    try {
      let value = input.textContent;
      if(navigator.clipboard) {
        navigator.clipboard.writeText(value);
        console.log(`The text '${value}' is in the Clipboard Now!`);
      } else {
        console.log(`Clipboard API is Not Supported`);
      }
    } catch (err) {
      console.error(`Failed to copy: ${err}`);
    }
  }

  function pasteVourcher(){
    try {
      if (navigator.clipboard) {
        const fromClipboard = navigator.clipboard.readText();
        input.value = fromClipboard;
        console.log(`The text '${fromClipboard}' is pasted successfully!`);
      } else {
        console.log(`Clipboard API is Not Supported`);
      }
    } catch (err) {
      console.error(`Failed to paste: ${err}`);
    }
  }
  pasteVourcher()
  const copybtn = document.getElementById('btn_cop');
  copybtn.onclick = copyVourcher();
</script>
</body>
</html>