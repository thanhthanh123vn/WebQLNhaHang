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
    DBConnection dbConnection;
    public ReviewDao( ) {
        dbConnection = new DBConnection();
        conn = dbConnection.getConnection();//7. kết nối database thông qua phương thức getConnection()
    }
// 1. Thêm một đánh giá mới vào cơ sở dữ liệu.
    public boolean insert(Review review) throws SQLException {
        String sql = "INSERT INTO review ( fullname, phone, food, restaurant_branch, notes)" + " VALUES ( ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, review.getFullname());
            stmt.setString(2, review.getPhone());
            stmt.setString(3, review.getFood());
            stmt.setString(4, review.getRestaurantBranch());
            stmt.setString(5, review.getNotes());
            return stmt.executeUpdate() > 0;
        }
    }

// 2. Lấy danh sách tất cả các đánh giá từ cơ sở dữ liệu, sắp xếp theo tên đầy đủ (fullname) tăng dần.
    public ArrayList<Review> getAllReviews() throws SQLException {
        ArrayList<Review> reviews = new ArrayList<>();
        String sql = "SELECT * FROM review ORDER BY fullname ASC";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {

                Review review = new Review();
                review.setId(rs.getInt("id"));
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
    // 3. Xóa một đánh giá dựa theo ID đánh giá.
    public boolean deleteReview(int reviewId) throws SQLException {
        String sql = "DELETE FROM review WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, reviewId);
            return stmt.executeUpdate() > 0;
        }
    }

    public static void main(String[] args) throws SQLException {
        // Bạn có thể test các method ở đây nếu muốn
    }
}
