package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {

}
