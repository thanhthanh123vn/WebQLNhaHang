package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.OrderDetail;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.List;

public class OrderDetailDao {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");

    public void save(OrderDetail orderDetail) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(orderDetail);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void update(OrderDetail orderDetail) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(orderDetail);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void delete(int orderId) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            OrderDetail orderDetail = em.find(OrderDetail.class, orderId);
            if (orderDetail != null) {
                em.remove(orderDetail);
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public OrderDetail findById(int orderId) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(OrderDetail.class, orderId);
        } finally {
            em.close();
        }
    }

    public List<OrderDetail> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT o FROM OrderDetail o", OrderDetail.class).getResultList();
        } finally {
            em.close();
        }
    }
}