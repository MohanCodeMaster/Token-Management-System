package com.tokenmanagement.controller;

import com.tokenmanagement.entity.Contact;
import com.tokenmanagement.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {

    @Autowired
    private ContactService contactService;

    @GetMapping("/Contact")
    public String showContactForm() {
        return "Contact";
    }

    @PostMapping("/ContactServlet")
    public String submitContact(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String message,
            Model model) {
        Contact contact = contactService.createContact(name, email, mobile, message);
        model.addAttribute("message", "Message sent successfully! Contact ID: " + contact.getId());
        return "Contact";
    }
}