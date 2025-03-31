package hcmuaf.edu.fit.webqlnhahang.util;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnection {
    private static Connection connection;

    static {
        try {
            // Đọc file cấu hình
            InputStream input = DBConnection.class.getClassLoader().getResourceAsStream("dbconfig.properties");
            Properties properties = new Properties();
            properties.load(input);

            // Lấy thông tin từ file cấu hình
            String url = properties.getProperty("db.url");
            String username = properties.getProperty("db.username");
            String password = properties.getProperty("db.password");
            String driver = properties.getProperty("db.driver");

            // Nạp driver
            Class.forName(driver);

            // Tạo kết nối
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Kết nối cơ sở dữ liệu thành công!");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Lỗi kết nối cơ sở dữ liệu!");
        }
    }

    public static Connection getConnection() {
        return connection;
    }

    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
    }
}
