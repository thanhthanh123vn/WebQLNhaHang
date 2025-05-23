package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.Review;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;  // Bổ sung import này
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDao {
    private Connection conn;

    public ReviewDao() {
        conn = DBConnection.getConnection();
    }

    public boolean insert(Review review) throws SQLException {
        String sql = "INSERT INTO review (fullname, phone, food, restaurant_branch, notes) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, review.getFullname());
            stmt.setString(2, review.getPhone());
            stmt.setString(3, review.getFood());
            stmt.setString(4, review.getRestaurantBranch());
            stmt.setString(5, review.getNotes());

            return stmt.executeUpdate() > 0;
        }
    }


    public List<Review> getAllReviews() throws SQLException {
        List<Review> reviews = new ArrayList<>();
        String sql = "SELECT * FROM review ORDER BY review_time DESC";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Review review = new Review();
                review.setFullname(rs.getString("fullname"));
                review.setPhone(rs.getString("phone"));
                review.setFood(rs.getString("food"));
                review.setRestaurantBranch(rs.getString("restaurant_branch"));
                review.setNotes(rs.getString("notes"));
                reviews.add(review);
            }
        }
        return reviews;
    }

    public static void main(String[] args) throws SQLException {
        // Bạn có thể test các method ở đây nếu muốn
    }
}
