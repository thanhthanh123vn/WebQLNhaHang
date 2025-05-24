package hcmuaf.edu.fit.webqlnhahang.controller.Pay;


import hcmuaf.edu.fit.webqlnhahang.dao.AddressDao;
import hcmuaf.edu.fit.webqlnhahang.dao.OrderDao;
import hcmuaf.edu.fit.webqlnhahang.entity.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    private AddressDao addressDao;

    @Override
    public void init() throws ServletException {
        addressDao = new AddressDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login");
            return;
        }

        // Get form data
        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String paymentMethod = request.getParameter("paymentMethod");

        // Get cart items from session
       Cart cartItems = (Cart) session.getAttribute("cart");
        if (cartItems == null || cartItems.getList().isEmpty()) {

            response.sendRedirect("cart");
            return;
        }

        try {
            // Create and save address
            addressDao = new AddressDao();
            Address shippingAddress = new Address();
            shippingAddress.setUserId(user.getId());
            shippingAddress.setStreet(address);
            shippingAddress.setCity(""); // You might want to add these fields to your form
            shippingAddress.setState("");
            shippingAddress.setCountry("Vietnam");
            shippingAddress.setPostalCode("");
            shippingAddress.setDefault(false);

            boolean addressSaved = addressDao.addAddress(shippingAddress);
            if (!addressSaved) {
                request.setAttribute("error", "Không thể lưu địa chỉ giao hàng");
                request.getRequestDispatcher("checkout.jsp").forward(request, response);
                return;
            }

            // Create order (you'll need to implement OrderDao)
            Order order = new Order();
            order.setUserId(user.getId());
            order.setFullName(fullName);
            order.setPhone(phone);
            order.setEmail(email);
            order.setShippingAddress(address);
            order.setNote(note);
            order.setPaymentMethod(paymentMethod);
            order.setStatus("PENDING");

            OrderDao orderDao = new OrderDao();
            orderDao.createOrder(order);

            // Save order and order items
            // TODO: Implement order saving logic

            // Clear cart after successful order
            session.removeAttribute("cart");

            // Redirect to order confirmation page
            response.sendRedirect("order-confirmation?id=" + order.getId());

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Có lỗi xảy ra khi xử lý đơn hàng");
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }
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

        // Get user's default address if exists
        Address defaultAddress = addressDao.getDefaultAddressByUserId(user.getId());
        if (defaultAddress != null) {
            request.setAttribute("defaultAddress", defaultAddress);
        }

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }
}