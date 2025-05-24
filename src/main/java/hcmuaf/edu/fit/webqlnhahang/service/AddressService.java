package hcmuaf.edu.fit.webqlnhahang.service;

import hcmuaf.edu.fit.webqlnhahang.dao.AddressDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Address;

import java.util.List;

public class AddressService {
    private final AddressDao addressDao;

    public AddressService() {
        this.addressDao = new AddressDao();
    }

    public boolean addAddress(Address address) {
        // If this is the first address for the user, set it as default
        List<Address> existingAddresses = addressDao.getAddressesByUserId(address.getUserId());
        if (existingAddresses.isEmpty()) {
            address.setDefault(true);
        }

        return addressDao.addAddress(address);
    }

    public boolean updateAddress(Address address) {
        return addressDao.updateAddress(address);
    }

    public boolean deleteAddress(int id) {
        return addressDao.deleteAddress(id);
    }

    public Address getAddressById(int id) {
        return addressDao.getAddressById(id);
    }

    public List<Address> getAddressesByUserId(int userId) {
        return addressDao.getAddressesByUserId(userId);
    }

    public Address getDefaultAddressByUserId(int userId) {
        return addressDao.getDefaultAddressByUserId(userId);
    }

    public boolean setDefaultAddress(int addressId, int userId) {
        // Get the address to set as default
        Address address = addressDao.getAddressById(addressId);
        if (address == null || address.getUserId() != userId) {
            return false;
        }

        // Get current default address
        Address currentDefault = addressDao.getDefaultAddressByUserId(userId);
        if (currentDefault != null) {
            currentDefault.setDefault(false);
            addressDao.updateAddress(currentDefault);
        }

        // Set new default address
        address.setDefault(true);
        return addressDao.updateAddress(address);
    }
}