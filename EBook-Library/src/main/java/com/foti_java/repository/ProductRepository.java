package com.foti_java.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;
import com.foti_java.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	Page<Product> findAllByIdNotIn(List<Integer> id, Pageable pageable);

	Page<Product> findAllByAccountAndIdNot(Account account, Integer productId, Pageable pageable);
}
