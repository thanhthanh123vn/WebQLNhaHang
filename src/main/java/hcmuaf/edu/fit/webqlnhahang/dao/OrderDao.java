package hcmuaf.edu.fit.webqlnhahang.dao;


import hcmuaf.edu.fit.webqlnhahang.entity.Order;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private final Connection connection;
    private DBConnection dbConnection;
    public OrderDao() {
        dbConnection = new DBConnection();
        this.connection = DBConnection.getConnection();
    }

    // Create new order
    public int createOrder(Order order) {
        String sql = "INSERT INTO orders (user_id, full_name, phone, email, shipping_address, note, " +
                "payment_method, status, total_amount, created_at, updated_at) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW())";

        try (PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setInt(1, order.getUserId());
            statement.setString(2, order.getFullName());
            statement.setString(3, order.getPhone());
            statement.setString(4, order.getEmail());
            statement.setString(5, order.getShippingAddress());
            statement.setString(6, order.getNote());
            statement.setString(7, order.getPaymentMethod());
            statement.setString(8, order.getStatus());
            statement.setDouble(9, order.getTotalAmount());

            int rowsAffected = statement.executeUpdate();
            if (rowsAffected > 0) {
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        return generatedKeys.getInt(1);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    // Get order by ID
    public Order getOrderById(int id) {
        String sql = "SELECT * FROM orders WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return mapResultSetToOrder(resultSet);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get all orders for a user
    public List<Order> getOrdersByUserId(int userId) {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders WHERE user_id = ? ORDER BY created_at DESC";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    orders.add(mapResultSetToOrder(resultSet));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    // Update order status
    public boolean updateOrderStatus(int orderId, String status) {
        String sql = "UPDATE orders SET status = ?, updated_at = NOW() WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, status);
            statement.setInt(2, orderId);
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Helper method to map ResultSet to Order object
    private Order mapResultSetToOrder(ResultSet resultSet) throws SQLException {
        Order order = new Order();
        order.setId(resultSet.getInt("id"));
        order.setUserId(resultSet.getInt("user_id"));
        order.setFullName(resultSet.getString("full_name"));
        order.setPhone(resultSet.getString("phone"));
        order.setEmail(resultSet.getString("email"));
        order.setShippingAddress(resultSet.getString("shipping_address"));
        order.setNote(resultSet.getString("note"));
        order.setPaymentMethod(resultSet.getString("payment_method"));
        order.setStatus(resultSet.getString("status"));
        order.setTotalAmount(resultSet.getDouble("total_amount"));
        order.setCreatedAt(resultSet.getTimestamp("created_at"));
        order.setUpdatedAt(resultSet.getTimestamp("updated_at"));
        return order;
    }
}