package hcmuaf.edu.fit.webqlnhahang.dao;

import hcmuaf.edu.fit.webqlnhahang.entity.Address;
import hcmuaf.edu.fit.webqlnhahang.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class AddressDao {
    private final SessionFactory sessionFactory;

    public AddressDao() {
        this.sessionFactory = HibernateUtil.getSessionFactory();
    }

    // Add new address
    public boolean addAddress(Address address) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.persist(address);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }
    }

    // Update address
    public boolean updateAddress(Address address) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.merge(address);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }
    }

    // Delete address
    public boolean deleteAddress(int id) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            Address address = session.get(Address.class, id);
            if (address != null) {
                session.remove(address);
                transaction.commit();
                return true;
            }
            return false;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }
    }

    // Get address by ID
    public Address getAddressById(int id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Address.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    // Get all addresses for a user
    public List<Address> getAddressesByUserId(int userId) {
        try (Session session = sessionFactory.openSession()) {
            Query<Address> query = session.createQuery("FROM Address WHERE userId = :userId", Address.class);
            query.setParameter("userId", userId);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    // Get default address for a user
    public Address getDefaultAddressByUserId(int userId) {
        try (Session session = sessionFactory.openSession()) {
            Query<Address> query = session.createQuery("FROM Address WHERE userId = :userId AND isDefault = true", Address.class);
            query.setParameter("userId", userId);
            return query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
} 