package org.example.controller;

import org.example.models.User;
import org.example.services.AuthService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/auth")  // Cambiado de "/login" a "/auth" para evitar conflictos con la página JSP
public class LoginController extends HttpServlet {

    private final AuthService authService = new AuthService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User(username, password);

        if (authService.authenticate(user)) {
            // Crear sesión para el usuario autenticado
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("username", username);

            // Redirigir a la página de chats
            response.sendRedirect(request.getContextPath() + "/views/chats/chats.jsp");
        } else {
            // Redirigir de vuelta a login con mensaje de error
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=true");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirigir a la página de login si se accede por GET
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
}