package com.tokenmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/hospital")
    public String hospital() {
        return "hospital";
    }

    @GetMapping("/patient")
    public String patient() {
        return "patient";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }
}
