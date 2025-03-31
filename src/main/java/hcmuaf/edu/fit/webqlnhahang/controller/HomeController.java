package hcmuaf.edu.fit.webqlnhahang.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet({"/home-page", "/login-page"}) // Đúng cú pháp
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String path = request.getServletPath(); // Lấy đường dẫn đang truy cập
        if ("/home-page".equals(path)) {

        } else if ("/login-page".equals(path)) {

        } else {

        }
    }
}
