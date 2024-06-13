package com.foti_java.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;
import com.foti_java.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	Page<Product> findAllByIdNotIn(List<Integer> id, Pageable pageable);

	Page<Product> findAllByAccountAndIdNot(Account account, Integer productId, Pageable pageable);

	List<Product> findAllByActiveAndStatus(boolean active, boolean status);

    @Query("SELECT p FROM Product p WHERE p.status = true")
    public List<Product> findByStatus();

	@Query(value = "SELECT P.* FROM Products P JOIN BillDetails BD ON BD.product_id = P.id WHERE BD.bill_id= :idBill", nativeQuery = true)
	Product getProuct(@Param("idBill") Integer idBill);
}
