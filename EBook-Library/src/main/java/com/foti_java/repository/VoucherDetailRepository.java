package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Voucher;
import com.foti_java.model.VoucherDetail;

public interface VoucherDetailRepository extends JpaRepository<VoucherDetail, Integer> {
	//Tuyen
	List<VoucherDetail> findAllByVoucher(Voucher voucher);

}
