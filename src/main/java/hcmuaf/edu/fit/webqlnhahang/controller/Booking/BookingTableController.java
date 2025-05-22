package hcmuaf.edu.fit.webqlnhahang.controller.Booking;

import hcmuaf.edu.fit.webqlnhahang.dao.BookingTableDao;
import hcmuaf.edu.fit.webqlnhahang.entity.BookingTable;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/booking")
public class BookingTableController extends HttpServlet {
    BookingTableDao dao = new BookingTableDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
        List<BookingTable> bookings = dao.getAllBookings();
        request.setAttribute("bookingRequests", bookings);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin-booking-page.jsp");
        dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi lấy danh sách đặt bàn");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String numberCustomerStr = request.getParameter("number_Customer");
        String timeStr = request.getParameter("time"); // chuỗi dạng yyyy-MM-dd HH:mm
        String restaurantBranch = request.getParameter("restaurant_branch");
        String note = request.getParameter("note");

        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            java.util.Date parsedDate = sdf.parse(timeStr);
            Timestamp time = new Timestamp(parsedDate.getTime());

            // Tạo đối tượng BookingTable
            BookingTable booking = new BookingTable();
            booking.setName(name);
            booking.setEmail(email);
            booking.setPhone(phone);
            booking.setNumberCustomer(numberCustomerStr);
            booking.setTime(time);
            booking.setRestaurantBranch(restaurantBranch);
            booking.setNote(note);

            BookingTableDao dao = new BookingTableDao();
            boolean success = dao.insert(booking);

            if (success) {
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                request.setAttribute("message", "Đặt bàn thất bại. Vui lòng thử lại.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/booking-page.jsp");
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Lỗi hệ thống: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("/booking-page.jsp");
            dispatcher.forward(request, response);
        }
    }
}