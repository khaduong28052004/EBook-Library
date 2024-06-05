package com.foti_java.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Voucher;
import java.util.List;
import com.foti_java.model.TypeVoucher;


public interface VoucherRepository extends JpaRepository<Voucher, Integer> {
	Page<Voucher> findAllByStatus(boolean status,Pageable pageable);
	Page<Voucher> findAllByTypeVoucher(TypeVoucher typeVoucher,Pageable pageable);
	Page<Voucher> findAllByStatusAndTypeVoucher(boolean status, TypeVoucher typeVoucher,Pageable pageable);
}
