package com.tokenmanagement.repository;
import com.tokenmanagement.entity.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HospitalRepository extends JpaRepository<Hospital, Long> {
    Hospital findByEmail(String email);
}