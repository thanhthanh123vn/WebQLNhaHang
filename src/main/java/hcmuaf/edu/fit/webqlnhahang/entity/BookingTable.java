package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

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
//    public BookingTable(String name, String email, String phone, String numberCustomer, Timestamp time, String restaurantBranch, String note) {
//        this.name = name;
//        this.email = email;
//        this.phone = phone;
//        this.numberCustomer = numberCustomer;
//        this.time = time;
//        this.restaurantBranch = restaurantBranch;
//        this.note = note;
//    }
}
