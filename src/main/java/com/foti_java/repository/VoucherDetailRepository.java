package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Voucher;
import com.foti_java.model.VoucherDetail;
import java.util.List;

public interface VoucherDetailRepository extends JpaRepository<VoucherDetail, Integer> {
	List<VoucherDetail> findAllByVoucher(Voucher voucher);
}
