package hcmuaf.edu.fit.webqlnhahang.managerUser;


import hcmuaf.edu.fit.webqlnhahang.entity.Address;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.service.AddressService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/add-address")
public class AddAdress extends HttpServlet {
    private AddressService addressService;

    @Override
    public void init() throws ServletException {
        addressService = new AddressService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login-page.jsp");
            return;
        }

        // Get address details from request
        String addressLine = request.getParameter("addressLine");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String postalCode = request.getParameter("postalCode");
        String country = request.getParameter("country");
        boolean isDefault = "on".equals(request.getParameter("isDefault"));

        // Validate input
        if (addressLine == null || addressLine.trim().isEmpty() ||
            city == null || city.trim().isEmpty() ||
            state == null || state.trim().isEmpty() ||
            postalCode == null || postalCode.trim().isEmpty() ||
            country == null || country.trim().isEmpty()) {
            
            request.setAttribute("error", "Vui lòng điền đầy đủ thông tin địa chỉ.");
            request.getRequestDispatcher("add-address.jsp").forward(request, response);
            return;
        }

        // Create new address
        Address address = new Address();
        address.setUserId(user.getId());

        address.setCity(city);
        address.setState(state);
        address.setPostalCode(postalCode);
        address.setCountry(country);
        address.setDefault(isDefault);

        // Add address to database
        boolean success = addressService.addAddress(address);

        if (success) {
            // If this is set as default, update other addresses
            if (isDefault) {
                addressService.setDefaultAddress(address.getId(), user.getId());
            }
            response.sendRedirect("profile.jsp?message=Địa chỉ đã được thêm thành công");
        } else {
            request.setAttribute("error", "Có lỗi xảy ra khi thêm địa chỉ. Vui lòng thử lại.");
            request.getRequestDispatcher("add-address.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login-page.jsp");
            return;
        }

        request.getRequestDispatcher("add-address.jsp").forward(request, response);
    }
} 