package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Follower;

public interface FollowerRepository extends JpaRepository<Follower, Integer> {

}
