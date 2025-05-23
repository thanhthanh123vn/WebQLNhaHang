package hcmuaf.edu.fit.webqlnhahang.service;

import hcmuaf.edu.fit.webqlnhahang.dao.OrderDetailDao;
import hcmuaf.edu.fit.webqlnhahang.entity.OrderDetail;


import java.util.List;

public class OrderDetailService {
    private final OrderDetailDao orderDetailDao;

    public OrderDetailService() {
        this.orderDetailDao = new OrderDetailDao();
    }

    // Lưu order detail mới
    public void saveOrderDetail(OrderDetail orderDetail) {
        orderDetailDao.save(orderDetail);
    }

    // Cập nhật order detail
    public void updateOrderDetail(OrderDetail orderDetail) {
        orderDetailDao.update(orderDetail);
    }

    // Xóa order detail theo id
    public void deleteOrderDetail(int orderId) {
        orderDetailDao.delete(orderId);
    }

    // Tìm order detail theo id
    public OrderDetail getOrderDetailById(int orderId) {
        return orderDetailDao.findById(orderId);
    }

    // Lấy tất cả order detail
    public List<OrderDetail> getAllOrderDetails() {
        return orderDetailDao.findAll();
    }
}