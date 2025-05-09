<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/login/stylesLogin.css">
    <!-- Bootstrap JS y dependencias -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
    <body>
        <section class="Container-principal">
          <div class="izquierda">
              <img src="${pageContext.request.contextPath}/Assets/loginImage.png" alt="Logo UDES" class="logo">
          </div>

          <div class="login-container">
            <div class="ContainerSecundarioForm">
              <h2>Bienvenido</h2>
              <form action="${pageContext.request.contextPath}/auth" method="post">
                <!-- Campo usuario -->
                <div class="mb-3">
                  <label for="email" class="form-label">Email</label>
                  <div class="input-group">
                    <span class="input-group-text">
                      <i class="fa-solid fa-user"></i>
                    </span>
                    <input type="email" class="form-control" id="email" name="email" required>
                  </div>
                </div>

                <!-- Campo contraseña -->
                <div class="mb-3">
                  <label for="password" class="form-label">Password</label>
                  <div class="input-group">
                    <span class="input-group-text">
                      <i class="fa-solid fa-key"></i>
                    </span>
                    <input type="password" class="form-control" id="password" name="password" required>
                  </div>
                </div>

                <div class="mb-3 form-check">
                  <input type="checkbox" class="form-check-input" id="remember">
                  <label class="form-check-label" for="remember">Remember me</label>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
              </form>
            </div>
          </div>
        </section>
    </body>
</html>