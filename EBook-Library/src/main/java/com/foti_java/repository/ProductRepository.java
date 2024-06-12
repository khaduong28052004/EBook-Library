package com.foti_java.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Account;
import com.foti_java.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	Page<Product> findAllByIdNotIn(List<Integer> id, Pageable pageable);

	Page<Product> findAllByAccountAndIdNot(Account account, Integer productId, Pageable pageable);

	List<Product> findAllByActiveAndStatus(boolean active, boolean status);
    @Query("SELECT p FROM Product p WHERE p.status = true and p.account.id =:id")
    public List<Product> findByStatus(@Param("id") Integer id);

    @Query("SELECT p FROM Product p WHERE p.status = true")
    public List<Product> findByStatus();
}
