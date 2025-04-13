package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private int id;
    private String email;
    private String password;
    private String name;
    private String facebookId;
    private String googleId;
    private Timestamp createdAt;
    private Timestamp updatedAt;
}

    // Constructor cho tạo user mới (thường bỏ id, createdAt, updatedAt)

