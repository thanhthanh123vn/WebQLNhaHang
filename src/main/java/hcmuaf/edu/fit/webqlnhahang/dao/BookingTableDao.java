package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.BookingTable;
import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

public class BookingTableDao {
    private Connection conn;
    DBConnection dbConnection;
    public BookingTableDao( ) {
        dbConnection = new DBConnection();
        conn = dbConnection.getConnection();
    }

    public boolean insert(BookingTable table) throws SQLException {
        String sql = "INSERT INTO booking_table (name, email, phone, number_Customer, time, restaurant_branch, note,status) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?,?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, table.getName());
            stmt.setString(2, table.getEmail());
            stmt.setString(3, table.getPhone());
            stmt.setString(4, table.getNumberCustomer());
            stmt.setTimestamp(5, table.getTime());
            stmt.setString(6, table.getRestaurantBranch());
            stmt.setString(7, table.getNote());
            stmt.setInt(8, 0);
            return stmt.executeUpdate() > 0;
        }
    }

    public static void main(String[] args) throws SQLException {
        BookingTable booking = new BookingTable();
        booking.setName("Ho Hai test");
        booking.setEmail("nguyenvana@example.com");
        booking.setPhone("0123456789");
        booking.setNumberCustomer("4-8");

        // Giờ hiện tại làm thời gian đặt
        booking.setTime(new java.sql.Timestamp(System.currentTimeMillis()));

        booking.setRestaurantBranch("Chọn cơ sở nhà hàng 1");
        booking.setNote("mệt vcl");

        BookingTableDao dao = new BookingTableDao();

        try {
            boolean success = dao.insert(booking);
            System.out.println("Insert success? " + success);
        } catch (Exception e) {
            e.printStackTrace(); // In lỗi chi tiết ra console
        }
    }
}
