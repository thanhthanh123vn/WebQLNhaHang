package hcmuaf.edu.fit.webqlnhahang.service;

import hcmuaf.edu.fit.webqlnhahang.dao.UserDao;
import hcmuaf.edu.fit.webqlnhahang.entity.User;
import hcmuaf.edu.fit.webqlnhahang.util.DBConnection;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.PreparedStatement;
import java.util.List;

public class UserService {
    private UserDao userDao;

    public UserService() {
        userDao = new UserDao();
    }

    public boolean addUser(User user) {
        // Mã hóa mật khẩu trước khi lưu
        String hashedPassword = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashedPassword);

        // Tiếp theo: kiểm tra email đã tồn tại và lưu vào database
        // Ví dụ:
        if (isEmailExists(user.getEmail())) {
            return false;
        }

        return insertUserToDB(user);
    }

    private boolean isEmailExists(String email) {
        // TODO: check email trong DB
        User user = userDao.getUserByEmail(email);
        if(user != null) {
            return true;
        }
        return false;
    }

    private boolean insertUserToDB(User user) {
        // TODO: thực hiện insert user vào database

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


    public User checkLogin(String email, String rawPassword) {
        User user = userDao.getUserByEmail(email);
        if (user == null) return null;

        // So sánh mật khẩu nhập với mật khẩu đã hash trong DB
        if (BCrypt.checkpw(rawPassword, user.getPassword())) {
            return user; // Đăng nhập thành công
        }

        return null; // Đăng nhập thất bại
    }


}
