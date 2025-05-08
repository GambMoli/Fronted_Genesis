package org.example.services;
import org.example.models.User;

public class AuthService {
    public boolean authenticate(User user) {
        return "admin".equals(user.getUsername()) && "1234".equals(user.getPassword());
    }
}

