package hcmuaf.edu.fit.webqlnhahang.controller;

import hcmuaf.edu.fit.webqlnhahang.dao.UserDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.service.ProductService;
import hcmuaf.edu.fit.webqlnhahang.service.UserService;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet({"/home-page", "/login-page"}) // Đúng cú pháp
public class HomeController extends HttpServlet {

    UserService userService = new UserService();

    ProductService productService = new ProductService();

    User user = new User();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String path = request.getServletPath(); // Lấy đường dẫn đang truy cập
        if ("/home-page".equals(path)) {
            List<Product> list_Product = productService.getAllProducts();
            request.setAttribute("listProduct", list_Product);
            System.out.println(list_Product.size());
            request.getRequestDispatcher("index.jsp").forward(request, response);


        } else if ("/login-page".equals(path)) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");


            User isUser = userService.checkLogin(email, password);
            if (isUser != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", isUser);
                session.setAttribute("fullname", isUser.getName());
                request.getRequestDispatcher("/home-page").forward(request, response);
            } else {
                request.setAttribute("error", "Sai email hoặc mật khẩu");
                request.getRequestDispatcher("login.jsp").forward(request, response);


            }


        } else {

        }
    }
}
