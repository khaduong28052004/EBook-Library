package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;
import com.foti_java.model.Like;

public interface LikeRepository extends JpaRepository<Like, Integer> {
	List<Like> findAllByAccountAndStatusTrue(Account account);
}
