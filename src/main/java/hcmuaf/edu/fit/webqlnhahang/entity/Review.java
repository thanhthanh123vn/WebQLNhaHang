package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
    private int id;  // thêm id để làm khóa chính
    private String fullname;
    private String phone;
    private String food;
    private String restaurantBranch;
    private String notes;



}
