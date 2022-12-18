package com.mtuci.mtuci_spring.repository;

import com.mtuci.mtuci_spring.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends JpaRepository<Post, Integer> {

}
