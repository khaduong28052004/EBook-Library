package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Voucher;

public interface VoucherRepository extends JpaRepository<Voucher, Integer> {

}
