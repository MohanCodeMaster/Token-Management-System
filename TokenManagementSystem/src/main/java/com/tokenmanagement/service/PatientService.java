package com.tokenmanagement.service;

import com.tokenmanagement.entity.Patient;
import com.tokenmanagement.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class PatientService {

    @Autowired
    private PatientRepository patientRepository;

    public Patient createPatient(String username, String mobile) {
        Patient patient = new Patient();
        patient.setUsername(username);
        patient.setMobile(mobile);
        patient.setCreatedAt(LocalDateTime.now());
        return patientRepository.save(patient);
    }
}