package com.foti_java.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;
import com.foti_java.model.TypeVoucher;
import com.foti_java.model.Voucher;

public interface VoucherRepository extends JpaRepository<Voucher, Integer> {
	// FIll voucher theo bill
	@Query("SELECT V FROM Bill B " + "JOIN B.voucherDetail VD " + "JOIN VD.voucher V " + "WHERE B.id = ?1")
	Voucher findVoucherInBill(Integer id);
	List<Voucher> findAllByAccount(Account account);
}
