package hcmuaf.edu.fit.webqlnhahang.controller.Review;

import hcmuaf.edu.fit.webqlnhahang.dao.BookingTableDao;
import hcmuaf.edu.fit.webqlnhahang.dao.ReviewDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Review;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/adminReviewCon")
public class AdminReviewController extends HttpServlet {
    // 1. Khởi tạo đối tượng ReviewDao để thao tác DB với bảng đánh giá
    private ReviewDao reviewDao = new ReviewDao();

    @Override
    // 2.1 Xử lý yêu cầu GET từ client.
    // 2.2 Mục đích: Lấy danh sách tất cả các đánh giá từ cơ sở dữ liệu
    //  sau đó chuyển danh sách này sang trang JSP adminReview.jsp để hiển thị.
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Review> reviews = reviewDao.getAllReviews();
            request.setAttribute("reviewRequests", reviews); // thống nhất tên biến
            request.getRequestDispatcher("/adminReview.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi lấy danh sách đánh giá");
        }
    }

    @Override
    //  Xử lý yêu cầu POST từ client.
    // Mục đích: Nhận ID đánh giá được gửi lên, thực hiện xóa đánh giá tương ứng trong cơ sở dữ liệu.
    //  Nếu xóa thất bại hoặc có lỗi hệ thống xảy ra, đặt thông báo lỗi vào request.
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reviewIdStr = request.getParameter("reviewId");
        try {
            int id = Integer.parseInt(reviewIdStr);
            boolean deleted = reviewDao.deleteReview(id);
            if (!deleted) {
                // xử lý nếu xóa thất bại
                request.setAttribute("message", "Xóa đánh giá thất bại.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Lỗi hệ thống khi xóa đánh giá.");
        }
        doGet(request, response); // load lại danh sách sau khi xóa
    }
}