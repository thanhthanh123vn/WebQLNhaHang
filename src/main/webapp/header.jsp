<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/27/2025
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <div class="header-main">
        <div class="container">
            <div class="row">
                <div class="header-logo header-main--top col-lg-12">
                <span class="menu-bars">
                  <i class="far fa-bars"></i>
                </span>
                    <a href="/" class="logo">
                        <img srcset="./images/logo-web.png" alt="logo">
                    </a>
                    <span class="menu-search">
                  <i class="fas fa-search icon-search"></i>
                  <form action="" class="search-mobile">
                    <input type="search" name="" placeholder="Nhập tìm kiếm...">
                    <button type="submit" value="Tìm kiếm" class="search-form__button">
                      <i class="far fa-search"></i>
                    </button>
                  </form>
                </span>
                </div>
                <div class="header-main--bottom col-lg-12">
                    <div class="px-4 header-nav">
                        <ul class="menu">
                            <li class="menu-item active">
                                <a href="home-page.jsp" class="menu-link">Trang chủ</a>
                            </li>
                            <li class="menu-item">
                                <a href="menu-page.jsp" class="menu-link">Thực đơn</a>
                            </li>
                            <li class="menu-item.html">
                                <a href="delivery-page.jsp" class="menu-link">Delivery</a>
                            </li>
                            <li class="menu-item.html">
                                <a href="news-category.jsp" class="menu-link">Tin tức - Sự kiện</a>
                            </li>
                            <li class="menu-item">
                                <a href="photo-library.jsp" class="menu-link">Thư viện ảnh</a>
                            </li>
                            <li class="menu-item">
                                <a href="guide-page.jsp" class="menu-link">Câu hỏi thường gặp</a>
                            </li>
                            <li class="menu-item">
                                <a href="contact-page.jsp" class="menu-link">Liên hệ</a>
                            </li>
                            <li class="menu-item account">
                                <a href="register-page.jsp" class="menu-link">Tài khoản</a>
                            </li>
                            <li class="menu-item account">
                                <a href="cart-product.jsp" class="menu-link">Giỏ Hàng</a>
                            </li>
                            <li class="menu-item menu-search">
                                <i class="fas fa-search icon-search" style="position: relative;"></i>
                                <form action="" class="search-header" style="position: absolute;">
                                    <input type="search" name="" placeholder="Nhập tìm kiếm...">
                                    <button type="submit" value="Tìm kiếm" class="search-form__button">
                                        <i class="far fa-search"></i>
                                    </button>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>