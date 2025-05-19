package com.tokenmanagement.controller;

import com.tokenmanagement.entity.Hospital;
import com.tokenmanagement.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HospitalController {

    @Autowired
    private HospitalService hospitalService;

    @GetMapping("/Hospital")
    public String showHospitalForm() {
        return "Hospital";
    }

    @PostMapping("/HospitalLoginServlet")
    public String loginHospital(
            @RequestParam String email,
            @RequestParam String mobile, // Password field in JSP is named "mobile"
            Model model) {
        Hospital hospital = hospitalService.validateHospital(email, mobile);
        if (hospital != null) {
            model.addAttribute("message", "Login successful! Welcome, " + email);
        } else {
            model.addAttribute("error", "Invalid email or password.");
        }
        return "Hospital";
    }
}