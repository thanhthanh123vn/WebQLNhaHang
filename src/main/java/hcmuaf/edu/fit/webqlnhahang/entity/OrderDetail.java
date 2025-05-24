package hcmuaf.edu.fit.webqlnhahang.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;
import java.util.List;


public class OrderDetail {

    private int orderId;

    private String recipientName;


    private String phoneNumber;

    private String address;

    // Nếu 1 OrderDetail chỉ chứa 1 sản phẩm:
    // @ManyToOne
    // @JoinColumn(name = "product_id")
    // private Product product;

    // Nếu 1 OrderDetail chứa nhiều sản phẩm:
    private int productId;
    private List<Product> productList;

    private Date date;

    private int totalQuantity;


    private double totalPrice;


    private String methodPay;

    // Constructors, getters, setters giữ nguyên như cũ (bạn có thể bỏ constructor có tham số nếu không cần)

    public OrderDetail() {}

    // ... các getter, setter như cũ ...

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getRecipientName() {
        return recipientName;
    }

    public void setRecipientName(String recipientName) {
        this.recipientName = recipientName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getMethodPay() {
        return methodPay;
    }

    public void setMethodPay(String methodPay) {
        this.methodPay = methodPay;
    }
}