package hcmuaf.edu.fit.webqlnhahang.controller.cartProduct;

import hcmuaf.edu.fit.webqlnhahang.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/loginCart")
public class LoginCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if(user != null) {
            resp.sendRedirect("cartProduct.jsp");
        }else{
            resp.sendRedirect("login.jsp");
        }
    }
}
