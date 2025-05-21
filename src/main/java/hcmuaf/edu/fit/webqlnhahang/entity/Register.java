package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Register {
    private int id;
    private String username;
    private String fullName;
    private String email;
    private String password;
    private int role;
    private Timestamp created_at;
    private int active;

}

