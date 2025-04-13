package hcmuaf.edu.fit.webqlnhahang.service;

import hcmuaf.edu.fit.webqlnhahang.dao.UserDao;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;

import java.util.List;

public class UserService {
    private UserDao userDao;

    public UserService() {
        userDao = new UserDao();
    }

    // 1. Thêm user
    public boolean addUser(User user) {
        return userDao.addUser(user);
    }

    // 2. Cập nhật user
    public boolean updateUser(User user) {
        return userDao.updateUser(user);
    }

    // 3. Xóa user theo ID
    public boolean deleteUser(int id) {
        return userDao.deleteUser(id);
    }

    // 4. Lấy tất cả user
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    // 5. Lấy user theo ID
    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    // 6. Lấy user theo username
    public User getUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }
}
