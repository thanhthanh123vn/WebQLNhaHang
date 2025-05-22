package hcmuaf.edu.fit.webqlnhahang.controller.Booking;

import hcmuaf.edu.fit.webqlnhahang.dao.BookingTableDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/approve")
public class ApproveBookingController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookingIdStr = request.getParameter("bookingId");
        try {
            int bookingId = Integer.parseInt(bookingIdStr);
            BookingTableDao dao = new BookingTableDao();
            dao.approveBooking(bookingId,1);
            response.sendRedirect(request.getContextPath() + "/booking");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi duyệt yêu cầu");
        }
    }
}