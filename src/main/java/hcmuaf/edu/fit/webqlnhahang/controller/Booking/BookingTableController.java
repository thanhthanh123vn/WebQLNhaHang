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
    BookingTableDao dao = new BookingTableDao();//Tạo đối tượng DAO để thao tác với DB

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy danh sách tất cả yêu cầu đặt bàn từ DB
            List<BookingTable> bookings = dao.getAllBookings();
            // Đưa danh sách vào thuộc tính request để truyền sang JSP
            request.setAttribute("bookingRequests", bookings);
            // Chuyển tiếp sang trang JSP hiển thị danh sách
            RequestDispatcher dispatcher = request.getRequestDispatcher("/admin-booking-page.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi lấy danh sách đặt bàn");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //4.lấy dữ liệu từ form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String numberCustomerStr = request.getParameter("number_Customer");
        String timeStr = request.getParameter("time");
        String restaurantBranch = request.getParameter("restaurant_branch");
        String note = request.getParameter("note");

        try {
            // Chuyển đổi chuỗi thời gian từ form thành Timestamp
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            java.util.Date parsedDate = sdf.parse(timeStr);
            Timestamp time = new Timestamp(parsedDate.getTime());

            //5. Tạo đối tượng BookingTable
            BookingTable booking = new BookingTable();
            booking.setName(name);
            booking.setEmail(email);
            booking.setPhone(phone);
            booking.setNumberCustomer(numberCustomerStr);
            booking.setTime(time);
            booking.setRestaurantBranch(restaurantBranch);
            booking.setNote(note);
            //6. Tạo DAO để lưu dữ liệu vào database
            BookingTableDao dao = new BookingTableDao();
            //12. Tạo biến success để nhận kết quả trả về từ database
            boolean success = dao.insert(booking);

            if (success) {
                //13. Nếu thành công thì về trang index.jsp
                request.setAttribute("alertMessage", "Gửi yêu cầu đặt bàn thành công!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                dispatcher.forward(request, response);
            } else {
                //15. Nếu thất bại thì return lại trang booking-page và thông báo lỗi
                request.setAttribute("message", "Đặt bàn thất bại. Vui lòng thử lại.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/booking-page.jsp");
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Lỗi hệ thống: " + e.getMessage());
            // Đưa thông báo lỗi vào request và forward về trang booking-page.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/booking-page.jsp");
            dispatcher.forward(request, response);
        }
    }
}