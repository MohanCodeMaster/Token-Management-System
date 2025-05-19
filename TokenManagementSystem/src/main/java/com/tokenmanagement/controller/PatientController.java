package com.tokenmanagement.controller;

import com.tokenmanagement.entity.Token;
import com.tokenmanagement.service.PatientService;
import com.tokenmanagement.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PatientController {

    @Autowired
    private TokenService tokenService;

    @Autowired
    private PatientService patientService;

    @GetMapping("/patient")
    public String showPatientForm() {
        return "patient";
    }

    @PostMapping("/GetTokenServlet")
    public String createToken(
            @RequestParam String username,
            @RequestParam String mobile,
            @RequestParam String slot,
            Model model) {
        patientService.createPatient(username, mobile);
        Token token = tokenService.createToken(username, mobile, slot);
        model.addAttribute("message", "Token created successfully! Token ID: " + token.getId());
        return "patient";
    }
}