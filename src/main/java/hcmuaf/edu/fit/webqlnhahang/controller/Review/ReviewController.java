package hcmuaf.edu.fit.webqlnhahang.controller.Review;

import hcmuaf.edu.fit.webqlnhahang.dao.ReviewDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Review;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/review")
public class ReviewController extends HttpServlet {
    private ReviewDao reviewDao = new ReviewDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String food = request.getParameter("food");
        String restaurantBranch = request.getParameter("restaurant_branch");
        String notes = request.getParameter("notes");

        if (fullname == null || phone == null || food == null || restaurantBranch == null || notes == null
                || fullname.isEmpty() || phone.isEmpty() || food.isEmpty() || restaurantBranch.isEmpty() || notes.isEmpty()) {
            request.setAttribute("message", "Vui lòng nhập đầy đủ thông tin!");
            request.getRequestDispatcher("/review.jsp").forward(request, response);
            return;
        }

        Review review = new Review();
        review.setFullname(fullname);
        review.setPhone(phone);
        review.setFood(food);
        review.setRestaurantBranch(restaurantBranch);
        review.setNotes(notes);

        try {
            boolean success = reviewDao.insert(review);
            if (success) {
                response.sendRedirect(request.getContextPath() + "/thankyou.jsp"); // trang cảm ơn hoặc về trang chủ
            } else {
                request.setAttribute("message", "Gửi đánh giá thất bại, vui lòng thử lại.");
                request.getRequestDispatcher("/review.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Lỗi hệ thống: " + e.getMessage());
            request.getRequestDispatcher("/review.jsp").forward(request, response);
        }
    }
}
