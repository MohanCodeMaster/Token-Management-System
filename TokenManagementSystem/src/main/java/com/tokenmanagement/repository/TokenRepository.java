package com.tokenmanagement.repository;

import com.tokenmanagement.entity.Token;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TokenRepository extends JpaRepository<Token, Long> {
}