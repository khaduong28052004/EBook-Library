package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.CartDetail;

public interface CartDetailRepository extends JpaRepository<CartDetail, Integer> {

}
