<%@ page import="java.util.List" %>
<%@ page import="hcmuaf.edu.fit.webqlnhahang.entity.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NH&SKSK</title>
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
</head>

<body>
<div class="wrapper home-page">
<jsp:include page="header.jsp"/>
    <main class="main">
        <section class="banner-home">
            <div class="banner-home__image image-cover">
                <img src="./images/banner-home.png" alt="banner trang chủ" />
            </div>
        </section>
        <section class="aboutus section-py">
            <div class="container">
                <div class="row">
                    <div class="aboutus-content col-lg-6">
                        <h2 class="aboutus-content__heading">
                            CHÀO MỪNG QUÝ KHÁCH ĐẾN VỚI NHÀ HÀNG NH&SK!
                        </h2>
                        <div class="aboutus-content__img-mobi image-cover">
                            <img src="./images/img-about.png" alt="" />
                        </div>
                        <div class="aboutus-content__text">
                            <p>
                                Nhắc đến ẩm thực Việt Nam, mọi người thường nghĩ đến không
                                gian đậm chất thôn quê, mộc mạc, giản dị. Nhưng đến với
                                NH&SK, bạn sẽ không khỏi bất ngờ trước lối thiết kế giao hòa
                                tinh tế và độc đáo giữa nét quê Việt Nam và kiến trúc văn
                                hoá Á Đông.
                            </p>
                            <p>
                                Đến với NH&SK, Quý khách có thể thưởng thức những món ăn độc
                                đáo, sáng tạo nhưng vẫn mang đậm dấu ấn đặc trưng của ẩm
                                thực Việt. Bên cạnh đó, với đội ngũ nhân viên và đội ngũ đầu
                                bếp tài năng, chuyên nghiệp, đầy tâm huyết, NH&SK sẽ mang đến
                                cho Quý khách những món ăn ngon nhất, an toàn nhất và chất
                                lượng dịch vụ tốt nhất khi Quý khách đến với NH&SK.
                            </p>
                        </div>
                        <a href="menu-detail.html" class="btn btn-primary">
                            Xem menu
                        </a>
                    </div>
                    <div class="aboutus-image col-lg-6">
                        <img src="./images/img-about.png" alt="" />
                    </div>
                </div>
            </div>
        </section>
        <section class="food-home">
            <div class="container">
                <div class="row">
                    <div class="food-home--left col-lg-6">
                        <div class="food-image">
                            <div class="food-image-item">
                                <img src="./images/food1.png" alt="" />
                            </div>
                            <div class="food-image-item">
                                <img src="./images/food2.png" alt="" />
                            </div>
                            <div class="food-image-item">
                                <img src="./images/food3.png" alt="" />
                            </div>
                            <div class="food-image-item">
                                <img src="./images/food4.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="food-home--right col-lg-6">
                        <div class="food-list">
                            <h2 class="food-list-heading">
                                MÓN ĂN ĐẶC TRƯNG CỦA CHÚNG TÔI
                            </h2>
                            <div class="food-list-info">

                                <c:forEach var="product" items="${listProduct}" varStatus="status">
                                    <c:if test="${status.index < 3}">
                                        <div class="box-food">
                                            <a href="">
                                                <div class="box-food__name">${product.name}</div>
                                                <div class="box-food__price">${product.price} VNĐ</div>
                                                <div class="box-food__desc">${product.detail}</div>
                                            </a>
                                        </div>
                                    </c:if>
                                </c:forEach>


                            </div>
                            <a href="menu-page.html" class="btn btn-primary">Xem thực đơn</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="introduce-home section-py">
            <div class="container">
                <div class="row">
                    <div class="introduce-image col-lg-6">
                        <img
                                src="./images/chef-kitchen-making-dough.png"
                                alt="chef-kitchen"
                        />
                    </div>
                    <div class="introduce-content col-lg-6">
                        <h2 class="introduce-content__heading">
                            BẾP TRƯỞNG CỦA CHÚNG TÔI
                        </h2>
                        <div class="introduce-content__text">
                            <p>
                                Mỗi một món ăn tại đây đều được
                                <span style="color: #be1522"
                                >Đầu bếp trưởng – Chef Dante</span
                                >
                                và đội ngũ nhân viên của anh tỉ mỉ, chú trọng tuyển chọn
                                nguyên liệu tươi ngon, đảm bảo hương vị món ăn. Ngoài ra,
                                việc bày trí món ăn đối với anh cũng quan trọng không kém
                                bởi thị giác tác động không nhỏ đến khẩu vị của người ăn.
                                Các món ăn được trình bày trong những vật dụng quen thuộc
                                như mẹt, thố đất, tạo cảm giác đầm ấm như ở nhà. Từng món ăn
                                như một “thước phim tư liệu” gợi mở nhiều cảm xúc về một
                                thời đã qua.
                            </p>
                            <p>
                                Bếp trưởng Dante mong muốn mang đến những món ăn hoàn hảo về
                                hương vị lẫn hình thức, đem đến những giây phút thưởng thức
                                ẩm thực khó quên cho thực khách tại NH&SK.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="why-choose section-py">
            <div class="container">
                <div class="row">
                    <div class="why-choose__heading col-sm-12 col-md-12 col-lg-12">
                        TẠI SAO NÊN CHỌN NHÀ HÀNG NH&SK?
                    </div>
                    <div class="why-choose-cards col-sm-12 col-md-12 col-lg-12">
                        <div class="why-choose-card">
                            <div class="why-choose-card__img">
                                <img src="./images/icon1.svg" alt="" />
                            </div>
                            <div class="why-choose-card__info">
                                Sản phẩm luôn tươi ngon, đảm bảo an toàn chất lượng
                            </div>
                        </div>
                        <div class="why-choose-card">
                            <div class="why-choose-card__img">
                                <img src="./images/icon2.svg" alt="" />
                            </div>
                            <div class="why-choose-card__info">
                                Hỗ trợ đặt bàn online nhanh chóng, dễ dàng
                            </div>
                        </div>
                        <div class="why-choose-card">
                            <div class="why-choose-card__img">
                                <img src="./images/icon3.svg" alt="" />
                            </div>
                            <div class="why-choose-card__info">
                                Có giao hàng tận nơi với các đơn online
                            </div>
                        </div>
                        <div class="why-choose-card">
                            <div class="why-choose-card__img">
                                <img src="./images/icon4.svg" alt="" />
                            </div>
                            <div class="why-choose-card__info">
                                Có các phòng lớn tổ chức hội nghị và sự kiện
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="customer-review section-py">
            <div class="container">
                <div class="row">
                    <div class="customer-review__heading col-sm-12">
                        KHÁCH HÀNG HỌ NÓI GÌ VỀ CHÚNG TÔI?
                    </div>
                    <div
                            class="customer-review-list owl-carousel owl-theme col-sm-12"
                    >
                        <div class="review-item">
                            <div class="review-item__avatar">
                                <img src="./images/avatar.png" alt="SIMONE PAROTTI" />
                            </div>
                            <div class="review-item__content">
                                "Gia đình tôi thường xuyên đi ăn bên ngoài, chúng tôi chọn
                                NH&SK bởi cảm nhận được một chất rất riêng và sâu tại đây. Từ
                                món ăn cho tới bài trí."
                            </div>
                            <div class="review-item__name">SIMONE PAROTTI</div>
                        </div>
                        <div class="review-item">
                            <div class="review-item__avatar">
                                <img src="./images/avatar.png" alt="SIMONE PAROTTI" />
                            </div>
                            <div class="review-item__content">
                                "Gia đình tôi thường xuyên đi ăn bên ngoài, chúng tôi chọn
                                NH&SK bởi cảm nhận được một chất rất riêng và sâu tại đây. Từ
                                món ăn cho tới bài trí."
                            </div>
                            <div class="review-item__name">SIMONE PAROTTI</div>
                        </div>
                        <div class="review-item">
                            <div class="review-item__avatar">
                                <img src="./images/avatar.png" alt="SIMONE PAROTTI" />
                            </div>
                            <div class="review-item__content">
                                "Gia đình tôi thường xuyên đi ăn bên ngoài, chúng tôi chọn
                                NH&SK bởi cảm nhận được một chất rất riêng và sâu tại đây. Từ
                                món ăn cho tới bài trí."
                            </div>
                            <div class="review-item__name">SIMONE PAROTTI</div>
                        </div>
                        <div class="review-item">
                            <div class="review-item__avatar">
                                <img src="./images/avatar.png" alt="SIMONE PAROTTI" />
                            </div>
                            <div class="review-item__content">
                                "Gia đình tôi thường xuyên đi ăn bên ngoài, chúng tôi chọn
                                NH&SK bởi cảm nhận được một chất rất riêng và sâu tại đây. Từ
                                món ăn cho tới bài trí."
                            </div>
                            <div class="review-item__name">SIMONE PAROTTI</div>
                        </div>
                        <div class="review-item">
                            <div class="review-item__avatar">
                                <img src="./images/avatar.png" alt="SIMONE PAROTTI" />
                            </div>
                            <div class="review-item__content">
                                "Gia đình tôi thường xuyên đi ăn bên ngoài, chúng tôi chọn
                                NH&SK bởi cảm nhận được một chất rất riêng và sâu tại đây. Từ
                                món ăn cho tới bài trí."
                            </div>
                            <div class="review-item__name">SIMONE PAROTTI</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="form-consultation">
            <div class="container section-py position-relative">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="form-consultation__heading">
                            ĐĂNG KÝ TƯ VẤN THỰC ĐƠN
                        </div>
                        <form action="" class="form-home">
                            <div class="form-home__item required">
                                <label for="">Họ và tên</label>
                                <input type="text" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Số điện thoại</label>
                                <input type="tel" name="number-phone" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Email</label>
                                <input type="email" name="email" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Địa chỉ</label>
                                <input type="text" name="address" />
                            </div>
                            <div class="form-home__item required">
                                <label for="">Bạn cần chúng tôi tư vấn</label>
                                <input type="text" name="address" />
                            </div>
                            <div class="form-home__item required">
                                <input type="submit" class="submit" value="Đăng ký ngay" />
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="form-consultation__image">
                            <img src="./images/img-form.png" alt="chef-kitchen" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="news-home section-py">
            <div class="container">
                <div class="row">
                    <div class="news-home__heading col-sm-12">TIN TỨC - SỰ KIỆN</div>
                    <div class="news-home-list owl-carousel owl-theme col-sm-12">
                        <div class="box-blog-post">
                            <div class="box-blog-post__image image-cover">
                                <img
                                        src="./images/img-blog1.png"
                                        alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                />
                            </div>
                            <div class="box-blog-post__date">05/04/2022</div>
                            <h5 class="box-blog-post__title">
                                Tận Hưởng Ưu Đãi Giờ Vàng Cùng Ngàn Món Ngon Tại NH&SK
                            </h5>
                            <div class="box-blog-post__desc">
                                Cùng hội ngộ sum vầy những ngày đầu năm trong không gian
                                hiện đại, mang dấu ấn...
                            </div>
                        </div>
                        <div class="box-blog-post">
                            <div class="box-blog-post__image image-cover">
                                <img
                                        src="./images/img-blog2.png"
                                        alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                />
                            </div>
                            <div class="box-blog-post__date">05/04/2022</div>
                            <h5 class="box-blog-post__title">
                                Hướng dẫn cách làm cua cà ri kiểu Ấn Độ mới lạ cực ngon
                            </h5>
                            <div class="box-blog-post__desc">
                                Cà ri một món ăn hấp dẫn có xuất xứ từ Ấn Độ đã được biến
                                tấu thành nhiều món độc...
                            </div>
                        </div>
                        <div class="box-blog-post">
                            <div class="box-blog-post__image image-cover">
                                <img
                                        src="./images/img-blog3.png"
                                        alt="Thiết kế đỉnh cao căn hộ 22m2 khiến ai cũng ngưỡng mộ"
                                />
                            </div>
                            <div class="box-blog-post__date">05/04/2022</div>
                            <h5 class="box-blog-post__title">
                                NH&SK đón chào quý khách với công suất tối đa
                            </h5>
                            <div class="box-blog-post__desc">
                                NH&SK đã quay trở lại đón tiếp các khách hàng ở tất cả các
                                chi nhánh trên địa bàn Hà...
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
<jsp:include page="footer.jsp"/>
    <div class="mobile-sidebar d-lg-none">
        <div class="mobile-sidebar--top">
            <a href="https://www.facebook.com/" class="mobile-sidebar-logo"
            ><img src="./images/logo-webweb.png" alt="Logo"
            /></a>
            <i class="mobile-sidebar-close"></i>
        </div>
        <div class="mobile-sidebar--bottom">
            <ul class="menu">
                <li class="menu-item active">
                    <a href="home-page.html" class="menu-link">Trang chủ</a>
                </li>
                <li class="menu-item">
                    <a href="menu-page.html" class="menu-link">Sản phẩm</a>
                </li>
                <li class="menu-item">
                    <a href="news-category.html" class="menu-link">Tin tức</a>
                </li>
                <li class="menu-item">
                    <a href="promotion.html" class="menu-link">Khuyến mại</a>
                </li>
                <li class="menu-item">
                    <a href="guide-page.html" class="menu-link">Hướng dẫn mua hàng</a>
                </li>
                <li class="menu-item">
                    <a href="contact-page.html" class="menu-link">Liên Hệ</a>
                </li>
                <li class="menu-item">
                    <a href="register-page.html" class="menu-link">Đăng ký</a>
                </li>
                <li class="menu-item">
                    <a href="login-page.html" class="menu-link">Đăng nhập</a>
                </li>
            </ul>
            <div class="phone-number d-block">
                <a href="tel:0962180180">0962.180.180</a>
            </div>
        </div>
    </div>
    <div class="menu-bars-close"></div>
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
<script type="text/javascript" src="./js/home-page.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
<script type="text/javascript" src="./js/displayUser.js"></script>
</body>
</html>
