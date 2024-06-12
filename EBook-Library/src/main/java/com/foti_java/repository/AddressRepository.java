package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;
import com.foti_java.model.Address;
import java.util.List;


public interface AddressRepository extends JpaRepository<Address, Integer> {


}
