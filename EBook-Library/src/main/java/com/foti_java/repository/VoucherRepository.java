package com.foti_java.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.TypeVoucher;
import com.foti_java.model.Voucher;

public interface VoucherRepository extends JpaRepository<Voucher, Integer> {

}
