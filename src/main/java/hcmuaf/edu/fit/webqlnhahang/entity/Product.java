package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private int id;
    private String name;
    private String detail;
    private BigDecimal price;
    private int quantity;
    private String image;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Integer categoryId;
    private String styleProducts;
}
