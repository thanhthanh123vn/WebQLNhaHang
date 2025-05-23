package hcmuaf.edu.fit.webqlnhahang.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "order_detail")
@Data
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private int orderId;

    @Column(name = "recipient_name")
    private String recipientName;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "address")
    private String address;

    // Nếu 1 OrderDetail chỉ chứa 1 sản phẩm:
    // @ManyToOne
    // @JoinColumn(name = "product_id")
    // private Product product;

    // Nếu 1 OrderDetail chứa nhiều sản phẩm:
    @ManyToMany
    @JoinTable(
            name = "order_product",
            joinColumns = @JoinColumn(name = "order_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id")
    )
    private List<Product> productList;

    @Column(name = "date")
    private Date date;

    @Column(name = "total_quantity")
    private int totalQuantity;

    @Column(name = "total_price")
    private double totalPrice;

    @Column(name = "method_pay")
    private String methodPay;

    // Constructors, getters, setters giữ nguyên như cũ (bạn có thể bỏ constructor có tham số nếu không cần)

    public OrderDetail() {}

    // ... các getter, setter như cũ ...
}