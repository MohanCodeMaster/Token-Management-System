package com.tokenmanagement.service;

import com.tokenmanagement.entity.Hospital;
import com.tokenmanagement.repository.HospitalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class HospitalService {

    @Autowired
    private HospitalRepository hospitalRepository;

    public Hospital validateHospital(String email, String password) {
        Hospital hospital = hospitalRepository.findByEmail(email);
        if (hospital != null && hospital.getPassword().equals(password)) {
            return hospital;
        }
        return null;
    }

    public Hospital createHospital(String email, String password) {
        Hospital hospital = new Hospital();
        hospital.setEmail(email);
        hospital.setPassword(password);
        hospital.setCreatedAt(LocalDateTime.now());
        return hospitalRepository.save(hospital);
    }
}