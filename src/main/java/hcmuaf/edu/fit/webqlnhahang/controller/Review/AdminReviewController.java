package hcmuaf.edu.fit.webqlnhahang.controller.Review;

import hcmuaf.edu.fit.webqlnhahang.dao.ReviewDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Review;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/admin-control/admin-control-evaluate-page")
public class AdminReviewController extends HttpServlet {
    private ReviewDao reviewDao = new ReviewDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            List<Review> reviews = reviewDao.getAllReviews();
            request.setAttribute("reviews", reviews);
            request.getRequestDispatcher("/admin-control/admin-control-evaluate-page.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi lấy danh sách đánh giá");
        }
    }
}