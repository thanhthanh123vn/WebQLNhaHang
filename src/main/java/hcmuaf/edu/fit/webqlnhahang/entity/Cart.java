package hcmuaf.edu.fit.webqlnhahang.entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> items;
    private double totalCart;
    private int totalProductCart;

    public Cart() {
        this.items = new ArrayList<>();
        this.totalCart = 0;
        this.totalProductCart = 0;
    }

    public void addItem(CartItem item) {
        // Check if item already exists in cart
        for (CartItem existingItem : items) {
            if (existingItem.getId() == item.getId()) {
                existingItem.setCount(existingItem.getCount() + item.getCount());
                updateTotals();
                return;
            }
        }
        items.add(item);
        updateTotals();
    }

    public void updateQuantity(int productId, int quantity) {
        for (CartItem item : items) {
            if (item.getId() == productId) {
                item.setCount(quantity);
                break;
            }
        }
        updateTotals();
    }

    public void removeItem(int productId) {
        items.removeIf(item -> item.getId() == productId);
        updateTotals();
    }

    private void updateTotals() {
        totalCart = 0;
        totalProductCart = 0;
        for (CartItem item : items) {
            totalCart += item.getPrice() * item.getCount();
            totalProductCart += item.getCount();
        }
    }

    public List<CartItem> getList() {
        return items;
    }

    public double getTotalCart() {
        return totalCart;
    }

    public int getTotalProductCart() {
        return totalProductCart;
    }
}