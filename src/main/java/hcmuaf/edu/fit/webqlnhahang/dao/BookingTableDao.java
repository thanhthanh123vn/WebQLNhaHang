package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.BookingTable;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;


public class BookingTableDao {
    private Connection conn;
    DBConnection dbConnection;
    public BookingTableDao( ) {
        dbConnection = new DBConnection();
        conn = dbConnection.getConnection();
    }
    //Phương thức thêm thông tin đặt bàn vào database
    public boolean insert(BookingTable table) throws SQLException {
        //Câu lệnh SQL chèn dữ liệu vào bảng booking_table
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
            // Thực thi câu lệnh và trả về true nếu có ít nhất 1 dòng bị ảnh hưởng
            return stmt.executeUpdate() > 0;
        }
    }
    //Phương thức lấy ra toàn bộ danh sách đặt bàn theo thời gian mới nhất
    public ArrayList<BookingTable> getAllBookings() throws SQLException {
        ArrayList<BookingTable> bookings = new ArrayList<>();
        String sql = "SELECT * FROM booking_table ORDER BY time DESC";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                BookingTable booking = new BookingTable();
                booking.setId(rs.getInt("id"));
                booking.setName(rs.getString("name"));
                booking.setEmail(rs.getString("email"));
                booking.setPhone(rs.getString("phone"));
                booking.setNumberCustomer(rs.getString("number_Customer"));
                booking.setTime(rs.getTimestamp("time"));
                booking.setRestaurantBranch(rs.getString("restaurant_branch"));
                booking.setNote(rs.getString("note"));
                booking.setStatus(rs.getInt("status"));
                bookings.add(booking);
            }
        }
        return bookings;
    }
    //Phương thức duyệt đặt bàn, thay đổi trạng thái dựa theo id
    public boolean approveBooking(int bookingId,int status) throws SQLException {
        String sql = "UPDATE booking_table SET status = ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, status);
            stmt.setInt(2, bookingId);
            return stmt.executeUpdate() > 0;//trả về true nếu thành công
        }
    }

    public static void main(String[] args) throws SQLException {
//        BookingTable booking = new BookingTable();
//        booking.setName("Ho Hai test");
//        booking.setEmail("nguyenvana@example.com");
//        booking.setPhone("0123456789");
//        booking.setNumberCustomer("4-8");
//
//        // Giờ hiện tại làm thời gian đặt
//        booking.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
//
//        booking.setRestaurantBranch("Chọn cơ sở nhà hàng 1");
//        booking.setNote("mệt vcl");
//
        BookingTableDao dao = new BookingTableDao();
//
//        try {
//            boolean success = dao.insert(booking);
//            System.out.println("Insert success? " + success);
//        } catch (Exception e) {
//            e.printStackTrace(); // In lỗi chi tiết ra console
//        }
        System.out.println(dao.approveBooking(1,1));
    }
}
