package hcmuaf.edu.fit.webqlnhahang.controller;

import hcmuaf.edu.fit.webqlnhahang.dao.RegisterDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Register;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@WebServlet({"/register", "/logout"})
public class RegisterPage extends HttpServlet {

    private UserService userService = new UserService();
    private User currentUser = new User();
    private RegisterDao dao = new RegisterDao();

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
            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            Register r = new Register();
            r.setUsername(null);
            r.setPassword(hashedPassword);
            r.setEmail(email);
            r.setFullName(userName);
            r.setCreated_at(Timestamp.valueOf(LocalDateTime.now()));


            try {
                boolean isRegisterSuccess = dao.insertUser(r);
                if (isRegisterSuccess) {
                    req.setAttribute("message", "Đăng ký thành công! Vui lòng đăng nhập.");
                    resp.sendRedirect("login-page.jsp");
                } else {
                    req.setAttribute("error", "Đăng ký thất bại! Vui lòng thử lại.");
                    req.getRequestDispatcher("/register-page.jsp").forward(req, resp);
                }
            } catch (Exception e) {
                e.printStackTrace();
                req.setAttribute("error", "Lỗi hệ thống: " + e.getMessage());
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
