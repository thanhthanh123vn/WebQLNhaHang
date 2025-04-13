package hcmuaf.edu.fit.webqlnhahang.controller;

import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet({"/register", "/logout"})
public class RegisterPage extends HttpServlet {

    private UserService userService = new UserService();
    private User currentUser = new User();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        HttpSession session = req.getSession();

        if (path.equals("/register")) {
            String userName = req.getParameter("fullname");
            String password = req.getParameter("password");
            String confirmPassword = req.getParameter("password_confirmation");
            String email = req.getParameter("email");


            // Kiểm tra dữ liệu đầu vào
            if (!password.equals(confirmPassword)) {
                req.setAttribute("error", "Mật khẩu xác nhận không khớp.");
                req.getRequestDispatcher("/register-page.jsp").forward(req, resp);
                return;
            }




            // Thêm user vào database
            currentUser.setName(userName);
            currentUser.setPassword(password); // Mật khẩu có thể cần mã hóa (hashing)
            currentUser.setEmail(email);

            boolean isRegisterSuccess = userService.addUser(currentUser);

            if (isRegisterSuccess) {
                req.setAttribute("message", "Đăng ký thành công! Vui lòng đăng nhập.");
                resp.sendRedirect("login-page.jsp");
            } else {
                req.setAttribute("error", "Đăng ký thất bại! Vui lòng thử lại.");
                req.getRequestDispatcher("/register-page.jsp").forward(req, resp);
            }

        } else if (path.equals("/logout")) {
            // Đăng xuất
            if (session != null) {
                session.invalidate();
            }
            resp.sendRedirect("login-page.jsp"); // Quay về trang đăng nhập
        }
    }
}
