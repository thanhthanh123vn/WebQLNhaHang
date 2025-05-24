package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private Connection con;

    public UserDao() {
        DBConnection dbConnection = new DBConnection();
        con = dbConnection.getConnection();
    }

    // 1. Thêm user
    public boolean addUser(User user) {
        String sql = "INSERT INTO users (email, password, name, facebook_id, google_id) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getName());
            stmt.setString(4, user.getFacebookId());
            stmt.setString(5, user.getGoogleId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // 2. Cập nhật user
    public boolean updateUser(User user) {
        String sql = "UPDATE users SET email=?, password=?, name=?, facebook_id=?, google_id=? WHERE id=?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getName());
            stmt.setString(4, user.getFacebookId());
            stmt.setString(5, user.getGoogleId());
            stmt.setInt(6, user.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // 3. Xoá user
    public boolean deleteUser(int id) {
        String sql = "DELETE FROM users WHERE id=?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // 4. Lấy tất cả user
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM users";
        try (PreparedStatement stmt = con.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                users.add(mapResultSetToUser(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    // 5. Lấy user theo ID
    public User getUserById(int id) {
        String sql = "SELECT * FROM users WHERE id=?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return mapResultSetToUser(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // 6. Lấy user theo email
    public User getUserByEmail(String email) {
        String sql = "SELECT * FROM users WHERE email = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return mapResultSetToUser(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // 7. Lấy user theo Facebook ID
    public User getUserByFacebookId(String facebookId) {
        String sql = "SELECT * FROM users WHERE facebook_id = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, facebookId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return mapResultSetToUser(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // 8. Lấy user theo Google ID
    public User getUserByGoogleId(String googleId) {
        String sql = "SELECT * FROM users WHERE google_id = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, googleId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return mapResultSetToUser(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Hàm dùng chung để mapping dữ liệu từ ResultSet -> User
    private User mapResultSetToUser(ResultSet rs) throws SQLException {
        return new User(
                rs.getInt("id"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("username"),
                rs.getString("facebook_id"),
                rs.getString("google_id"),
                rs.getTimestamp("created_at")

        );
    }
}
