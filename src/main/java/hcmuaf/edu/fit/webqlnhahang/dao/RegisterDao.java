package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.Register;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.*;
import java.time.LocalDateTime;

public class RegisterDao {
    private Connection conn;
    DBConnection dbConnection;

    public RegisterDao() {
        dbConnection = new DBConnection();
        conn = dbConnection.getConnection();
    }

    public boolean insertUser(Register r) throws SQLException {
        String sql = "INSERT INTO users (username, fullName, email,password,role,created_at, active) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, r.getUsername());
            stmt.setString(2, r.getFullName());
            stmt.setString(3, r.getEmail());
            stmt.setString(4, r.getPassword());
            stmt.setInt(5, 0);
            stmt.setTimestamp(6, r.getCreated_at());
            stmt.setInt(7, 0);
            return stmt.executeUpdate() > 0;
        }
    }

    public static void main(String[] args) {
        RegisterDao dao = new RegisterDao();
        Register r = new Register();
        try {
            r.setUsername("hohai");
            r.setFullName("ho minh hai");
            r.setEmail("hohai@gmail.com");
            String hashedPassword = BCrypt.hashpw("123456", BCrypt.gensalt());
            r.setPassword(hashedPassword);
            r.setCreated_at(Timestamp.valueOf(LocalDateTime.now()));
            boolean result = dao.insertUser(r);
            if (result) {
                System.out.println("Thêm user thành công.");
            } else {
                System.out.println("Thêm user thất bại.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

