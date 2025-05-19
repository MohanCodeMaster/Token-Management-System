package com.tokenmanagement.service;


import com.tokenmanagement.entity.Token;
import com.tokenmanagement.repository.TokenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class TokenService {

    @Autowired
    private TokenRepository tokenRepository;

    public Token createToken(String username, String mobile, String timeSlot) {
        Token token = new Token();
        token.setUsername(username);
        token.setMobile(mobile);
        token.setTimeSlot(timeSlot);
        token.setCreatedAt(LocalDateTime.now());
        return tokenRepository.save(token);
    }
}