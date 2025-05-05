package hcmuaf.edu.fit.webqlnhahang.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
// Tùy bạn muốn đặt tên bảng là gì
public class Product {


    private int id;

    private String name;
    private String detail;
    private double price;
    private int quantity;
    private String image;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Integer categoryId;
    private String styleProducts;

    public Product(int id, String name, String detail, double price, int quantity, String image) {
        this.id = id;
        this.name = name;
        this.detail = detail;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
    }
}
