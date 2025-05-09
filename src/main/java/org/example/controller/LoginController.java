package org.example.controller;

import com.google.gson.Gson;
import org.example.models.AuthResponse;
import org.example.services.AuthService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet("/auth")  // Cambiado de "/login" a "/auth" para evitar conflictos con la página JSP
public class LoginController extends HttpServlet {

    private final AuthService authService = new AuthService();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Obtener credenciales del formulario
            String email = request.getParameter("email"); // Cambiado de username a email según la API
            String password = request.getParameter("password");


            // Validar que los campos no estén vacíos
            if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=emptyfields");
                return;
            }

            // URL de tu API local
            String apiUrl = "http://localhost:8080/api/auth/login";
            URL url = new URL(apiUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);
            conn.setDoOutput(true);

            // Construir JSON de credenciales usando la estructura exacta que espera tu API
            String jsonInputString = String.format(
                    "{\"email\":\"%s\",\"password\":\"%s\"}",
                    email,
                    password

            );

            // Enviar solicitud
            try (OutputStream os = conn.getOutputStream()) {
                byte[] input = jsonInputString.getBytes("utf-8");
                os.write(input, 0, input.length);
            }

            // Procesar respuesta
            int status = conn.getResponseCode();
            if (status == HttpURLConnection.HTTP_OK) { // 200
                // Leer respuesta
                try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"))) {
                    StringBuilder responseBuilder = new StringBuilder();
                    String responseLine;
                    while ((responseLine = br.readLine()) != null) {
                        responseBuilder.append(responseLine.trim());
                    }

                    String jsonResponse = responseBuilder.toString();
                    System.out.println("Respuesta de API: " + jsonResponse); // Para debugging

                    // Parsear el JSON usando la estructura específica de tu respuesta
                    Gson gson = new Gson();
                    AuthResponse authData = gson.fromJson(jsonResponse, AuthResponse.class);

                    String token = authData.getToken();

                    if (token != null && !token.isEmpty()) {
                        // Guardar los datos relevantes en sesión
                        HttpSession session = request.getSession();
                        session.setAttribute("token", token);
                        session.setAttribute("userId", authData.getId());
                        session.setAttribute("email", authData.getEmail());
                        session.setAttribute("name", authData.getName());

                        // Redireccionar a la página de chats
                        response.sendRedirect(request.getContextPath() + "/views/chats/chats.jsp");
                        return;
                    } else {
                        // Token vacío o nulo
                        response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidtoken");
                        return;
                    }
                }

            } else {
                // Leer detalles del error
                String errorMessage = "";
                try (BufferedReader br = new BufferedReader(new InputStreamReader(
                        conn.getErrorStream() != null ? conn.getErrorStream() : conn.getInputStream(), "utf-8"))) {
                    StringBuilder errorBuilder = new StringBuilder();
                    String errorLine;
                    while ((errorLine = br.readLine()) != null) {
                        errorBuilder.append(errorLine);
                    }
                    errorMessage = errorBuilder.toString();
                } catch (Exception e) {
                    e.printStackTrace();
                }

                System.err.println("Error de autenticación. Código: " + status + ", Mensaje: " + errorMessage);
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=authfailed");
            }
            conn.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=system");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirigir a la página de login si se accede por GET
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
}