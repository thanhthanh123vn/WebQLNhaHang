package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.AllArgsConstructor;// Tự động tạo constructor với tất cả các tham số
import lombok.Data;// Tự động tạo getter, setter, equals, hashCode, toString
import lombok.NoArgsConstructor;// Tự động tạo constructor không có tham số

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingTable {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String numberCustomer;
    private Timestamp time;
    private String restaurantBranch;
    private String note;
    private int status;
}
