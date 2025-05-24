package hcmuaf.edu.fit.webqlnhahang.entity;

import lombok.Data;

@Data
public class CartItem {
    private int id;
    private String name;
    private String detail;
    private double price;
    private int count;
    private String image;

    public CartItem() {
    }

    public CartItem(Product product, int count) {
        this.id = product.getId();
        this.name = product.getName();
        this.detail = product.getDetail();
        this.price = product.getPrice();
        this.count = count;
        this.image = product.getImage();
    }

    /**
     * Convert a Product to CartItem with specified quantity
     *
     * @param product The product to convert
     * @param count   The quantity of the product
     * @return A new CartItem instance
     */
    public static CartItem fromProduct(Product product, int count) {
        return new CartItem(product, count);
    }

}