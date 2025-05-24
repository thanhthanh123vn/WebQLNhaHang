package hcmuaf.edu.fit.webqlnhahang.controller.Pay;



import hcmuaf.edu.fit.webqlnhahang.dao.OrderDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Order;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/order-confirmation")
public class OrderConfirmationServlet extends HttpServlet {
    private OrderDao orderDao;

    @Override
    public void init() throws ServletException {
        orderDao = new OrderDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login");
            return;
        }

        String orderIdStr = request.getParameter("id");
        if (orderIdStr == null || orderIdStr.trim().isEmpty()) {
            response.sendRedirect("home");
            return;
        }

        try {
            int orderId = Integer.parseInt(orderIdStr);
            Order order = orderDao.getOrderById(orderId);

            if (order == null || order.getUserId() != user.getId()) {
                response.sendRedirect("home-page");
                return;
            }

            request.setAttribute("order", order);
            request.getRequestDispatcher("order-confirmation.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            response.sendRedirect("home");
        }
    }
}