package com.tokenmanagement.service;

import com.tokenmanagement.entity.Contact;
import com.tokenmanagement.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class ContactService {

    @Autowired
    private ContactRepository contactRepository;

    public Contact createContact(String name, String email, String mobile, String message) {
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setMobile(mobile);
        contact.setMessage(message);
        contact.setCreatedAt(LocalDateTime.now());
        return contactRepository.save(contact);
    }
   }
