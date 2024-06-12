package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.OrderStatus;

public interface OrderStatusRepository extends JpaRepository<OrderStatus, Integer>{

}
