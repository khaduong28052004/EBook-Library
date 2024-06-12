package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;
import com.foti_java.model.CartDetail;
import com.foti_java.model.Product;

public interface CartDetailRepository extends JpaRepository<CartDetail, Integer> {
	List<CartDetail> findAllCartDetailsByAccount(Account account);

	CartDetail findByAccountAndProduct(Account account, Product product);

	List<CartDetail> findAllByIdIn(List<Integer> list);
}
