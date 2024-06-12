package com.foti_java.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Account;
import com.foti_java.model.CartDetail;
import com.foti_java.model.Category;
import com.foti_java.model.Product;
import com.foti_java.service.SessionService;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	List<Product> findAllByIdIn(List<Integer> id);

	Page<Product> findAllByAccountNot(Account account, Pageable pageable);

	Page<Product> findAllByAccount(Account account, Pageable pageable);

	Page<Product> findAllByIdNotInAndAccountNot(List<Integer> ids, Account account, Pageable pageable);

	Page<Product> findAllByAccountAndIdNot(Account account, Integer productId, Pageable pageable);

	Page<Product> findAllByAccountAndIdNotIn(Account account, List<Integer> productIds, Pageable pageable);

	@Query("SELECT o FROM Product o WHERE o.id != 1")
	List<Product> findAllNotByID(Integer Id);

//	List<Product> findAllByIdIn(List<Integer> listIdProduct);

	Page<Product> findAllByIdIn(List<Integer> list, Pageable pageable);

	Page<Product> findAllByIdInAndCategoryIn(List<Integer> listIdProduct, List<Category> categories, Pageable pageable);

	Page<Product> findAllByIdInAndCategoryIn(List<Integer> listIdProduct, List<Category> list, double min, double max,
			Pageable pageable);

	Page<Product> findAllByNameContainingAndPriceBetween(String nameSearch, double min, double max, Pageable pageable);

	Page<Product> findAllByPriceBetween(double min, double max, Pageable pageable);

	Page<Product> findAllByNameContaining(String name, Pageable pageable);
//	@Query("SELECT p FROM Product p  WHERE p.cartDetail = listCart")
//	List<Product> listCart(@Param("listCart")CartDetail listCart);

<<<<<<< phucptpc05587
	List<Product> findAllByActiveAndStatus(boolean active, boolean status);
    @Query("SELECT p FROM Product p WHERE p.status = true and p.account.id =:id")
    public List<Product> findByStatus(@Param("id") Integer id);
=======
	//Tuyen
	List<Product> findAllByActiveAndStatus(boolean active, boolean status);
    @Query("SELECT p FROM Product p WHERE p.status = true")
    public List<Product> findByStatus();
>>>>>>> MergerCode01
}
