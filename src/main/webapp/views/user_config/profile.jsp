<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../Components/Header/header.jsp" %>

<div class="container mt-4">
    <div class="card">
        <div class="card-header bg-light">
            <h4>Perfil de Usuario</h4>
        </div>

        <div class="card-body">
            <h5 class="text-center mb-4">Datos personales</h5>

            <!-- Pestañas de navegación -->
            <ul class="nav nav-tabs mb-3">
                <li class="nav-item">
                    <a class="nav-link active" id="datos-personales-tab" data-bs-toggle="tab" href="#datos-personales">Datos personales</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" id="datos-familiares-tab" data-bs-toggle="tab" href="#datos-familiares">Datos Academicos</a>
                </li>
            </ul>

            <!-- Contenido de las pestañas -->
            <div class="tab-content">
                <!-- Pestaña Datos Personales -->
                <div class="tab-pane fade show active" id="datos-personales">
                    <div class="row mb-3">
                        <div class="col-md-3 fw-bold">Email</div>
                        <div class="col-md-9">${student.email}</div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3 fw-bold">Email institucional</div>
                        <div class="col-md-9">${student.code}@udes.edu.co</div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3 fw-bold">Nombre completo</div>
                        <div class="col-md-9">${student.name}</div>
                    </div>
                </div>

            <div class="d-flex justify-content-center mt-4">
                <a href="${pageContext.request.contextPath}/views/user_config/edit-user.jsp" class="btn btn-primary me-2">Actualizar mis datos</a>

            </div>
        </div>
    </div>
</div>