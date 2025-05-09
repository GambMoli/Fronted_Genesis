<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- Estilos personalizados -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/Components/Header/styles.css">

<!-- Bootstrap JS y dependencias -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Header -->
<div class="udes-header">
    <div class="container-fluid px-0">
        <!-- Logo and branding -->
        <div class="d-flex justify-content-center">
            <img src="${pageContext.request.contextPath}/Assets/logo.png" alt="Logo UDES" class="udes-logo">
        </div>

        <!-- Navigation bar -->
        <nav class="navbar navbar-expand navbar-light bg-light border-bottom">
            <div class="container-fluid">
                <!-- Left side navigation -->
                <div class="navbar-nav me-auto">
                    <a class="nav-link" href="#"><i class="fas fa-home"></i> Trámites Académicos</a>
                    <a class="nav-link" href="#">Record de notas</a>
                    <a class="nav-link" href="#">Plan de estudio</a>
                    <a class="nav-link" href="#">Matrícula</a>
                    <a class="nav-link" href="#">Horario</a>
                    <a class="nav-link" href="#">Notas</a>
                </div>

                <!-- Right side navigation -->
                <div class="d-flex align-items-center">
                    <a href="#" class="tutoriales-btn me-3">
                        <span class="tutoriales-text">Tutoriales</span>
                        <i class="fas fa-question-circle ms-1"></i>
                    </a>
                    <a href="#" class="nav-icon me-3"><i class="far fa-calendar-alt"></i></a>
                    <a href="#" class="nav-icon me-3"><i class="fas fa-bell"></i></a>
                    <div class="dropdown">
                        <a class="dropdown-toggle nav-link user-dropdown" href="#" role="button" data-bs-toggle="dropdown">
                            <i class="fas fa-user-circle"></i> LUIS ALEJANDRO VERGEL IRLET
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="#">Perfil</a></li>
                            <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>

<div class="sub-header">
    <div class="container-fluid">
        <div class="py-2 px-4">
            <strong>PORTALES INSTITUCIONALES</strong>
        </div>
    </div>
</div>