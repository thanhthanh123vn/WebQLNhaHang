package hcmuaf.edu.fit.webqlnhahang.controller.Review;

import hcmuaf.edu.fit.webqlnhahang.dao.BookingTableDao;
import hcmuaf.edu.fit.webqlnhahang.dao.ReviewDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Review;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/review")

public class ReviewController extends HttpServlet {
    // 1.Tạo đối tượng DAO để thao tác với DB
    ReviewDao dao = new ReviewDao();

    @Override
    // 2. Xử lý yêu cầu GET từ client.
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 2.1 Lấy danh sách tất cả yêu cầu đặt bàn từ DB
            List<Review> reviews = dao.getAllReviews();
            // 2.2 Đưa danh sách vào thuộc tính request để truyền sang JSP
            request.setAttribute("reviewRequests", reviews);
            // 2.3 Chuyển tiếp sang trang JSP hiển thị danh sách
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminReview.jsp");
            // 2.4 Trang hiển thị danh sách review
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi lấy danh sách đánh giá");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 3. Lấy dữ liệu từ form
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String food = request.getParameter("food");
        String restaurantBranch = request.getParameter("restaurant_branch");
        String notes = request.getParameter("notes");

        try {
            // 3.1 Tạo đối tượng Review
            Review review = new Review();
            review.setFullname(fullname);
            review.setPhone(phone);
            review.setFood(food);
            review.setRestaurantBranch(restaurantBranch);
            review.setNotes(notes);


            // 3.2 Lưu dữ liệu vào DB
            ReviewDao dao = new ReviewDao();
            boolean success = dao.insert(review);

            if (success) {
                // 3.3 Nếu thành công, chuyển về trang cảm ơn hoặc trang chủ
                request.setAttribute("alertMessage", "Gửi đánh giá thành công!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                dispatcher.forward(request, response);
            } else {
                // 3.4 Nếu thất bại, trả về trang review với thông báo lỗi
                request.setAttribute("message", "Gửi đánh giá thất bại. Vui lòng thử lại.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/review.jsp");
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Lỗi hệ thống: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("/review.jsp");
            dispatcher.forward(request, response);
        }
    }
}
