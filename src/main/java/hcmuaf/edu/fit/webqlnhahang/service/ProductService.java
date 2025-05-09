package hcmuaf.edu.fit.webqlnhahang.service;

import hcmuaf.edu.fit.webqlnhahang.dao.ProductDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class ProductService {
    private ProductDao productDao;
    Connection connection;
    public ProductService() {
        Connection conn = DBConnection.getConnection();
        productDao = new ProductDao();
    }

    // 1. Thêm sản phẩm
    public boolean addProduct(Product product) {
        try {
            return productDao.insertProduct(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // 2. Cập nhật sản phẩm
    public boolean updateProduct(Product product) {
        try {
            return productDao.updateProduct(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // 3. Xóa sản phẩm
    public boolean deleteProduct(int id) {
        try {
            return productDao.deleteProduct(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // 4. Lấy tất cả sản phẩm
    public List<Product> getAllProducts() {
        try {
            return productDao.getAllProducts();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
