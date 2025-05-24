package hcmuaf.edu.fit.webqlnhahang.entity;

import jakarta.persistence.*;
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


    // Constructor tiện lợi cho tạo user mới
    public User(String email, String password, String name) {
        this.email = email;
        this.password = password;
        this.name = name;
    }

    public User(int id, String email, String password, String name, Timestamp updatedAt, Timestamp createdAt) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;

        this.createdAt = createdAt;
    }
}
