package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private Connection conn;
    DBConnection dbConnection;
    public ProductDao(Connection conn) {
        dbConnection = new DBConnection();
        this.conn = conn;
    }

    // Thêm sản phẩm
    public boolean insertProduct(Product product) throws SQLException {
        String sql = "INSERT INTO products (name, detail, price, quantity, image, categoryid, style_products) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDetail());
            stmt.setBigDecimal(3, product.getPrice());
            stmt.setInt(4, product.getQuantity());
            stmt.setString(5, product.getImage());
            if (product.getCategoryId() != null) {
                stmt.setInt(6, product.getCategoryId());
            } else {
                stmt.setNull(6, Types.INTEGER);
            }
            stmt.setString(7, product.getStyleProducts());

            return stmt.executeUpdate() > 0;
        }
    }

    // Sửa sản phẩm
    public boolean updateProduct(Product product) throws SQLException {
        String sql = "UPDATE products SET name = ?, Detail = ?, price = ?, quantity = ?, image = ?, " +
                "categoryid = ?, style_products = ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDetail());
            stmt.setBigDecimal(3, product.getPrice());
            stmt.setInt(4, product.getQuantity());
            stmt.setString(5, product.getImage());
            if (product.getCategoryId() != null) {
                stmt.setInt(6, product.getCategoryId());
            } else {
                stmt.setNull(6, Types.INTEGER);
            }
            stmt.setString(7, product.getStyleProducts());
            stmt.setInt(8, product.getId());

            return stmt.executeUpdate() > 0;
        }
    }

    // Xóa sản phẩm
    public boolean deleteProduct(int id) throws SQLException {
        String sql = "DELETE FROM products WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        }
    }

    // Lấy tất cả sản phẩm
    public List<Product> getAllProducts() throws SQLException {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM products";
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setDetail(rs.getString("Detail"));
                product.setPrice(rs.getBigDecimal("price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setImage(rs.getString("image"));
                product.setCreatedAt(rs.getTimestamp("created_at"));
                product.setUpdatedAt(rs.getTimestamp("updated_at"));
                int categoryId = rs.getInt("categoryid");
                if (!rs.wasNull()) product.setCategoryId(categoryId);
                product.setStyleProducts(rs.getString("style_products"));

                list.add(product);
            }
        }
        return list;
    }
}
