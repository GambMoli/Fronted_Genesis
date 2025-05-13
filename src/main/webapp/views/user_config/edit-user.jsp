<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../Components/Header/header.jsp" %>

<div class="container mt-4">
    <div class="card">
        <div class="card-header bg-light">
            <h4>Editar Perfil de Usuario</h4>
        </div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/student/update" method="POST">
                <input type="hidden" name="id" value="${student.id}">

                <ul class="nav nav-tabs mb-4" id="profileTabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="datos-personales-tab" data-bs-toggle="tab" href="#datos-personales" role="tab">Datos personales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="seguridad-tab" data-bs-toggle="tab" href="#seguridad" role="tab">Seguridad</a>
                    </li>
                </ul>

                <div class="tab-content" id="profileTabsContent">
                    <!-- Datos Personales Tab -->
                    <div class="tab-pane fade show active" id="datos-personales" role="tabpanel">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="code" class="form-label">Código</label>
                                <input type="text" class="form-control" id="code" name="code" value="${student.code}" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="name" class="form-label">Nombre Completo</label>
                                <input type="text" class="form-control" id="name" name="name" value="${student.name}" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email Personal</label>
                                <input type="email" class="form-control" id="email" name="email" value="${student.email}" required>
                            </div>
                            <div class="col-md-6">
                                <label for="emailInstitucional" class="form-label">Email Institucional</label>
                                <input type="email" class="form-control" id="emailInstitucional" value="${student.code}@udes.edu.co" readonly>
                            </div>
                        </div>
                    </div>

                    <!-- Seguridad Tab -->
                    <div class="tab-pane fade" id="seguridad" role="tabpanel">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="currentPassword" class="form-label">Contraseña Actual</label>
                                <input type="password" class="form-control" id="currentPassword" name="currentPassword">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="newPassword" class="form-label">Nueva Contraseña</label>
                                <input type="password" class="form-control" id="newPassword" name="newPassword">
                            </div>
                            <div class="col-md-6">
                                <label for="confirmPassword" class="form-label">Confirmar Contraseña</label>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mt-4 d-flex justify-content-end">
                    <a href="${pageContext.request.contextPath}/views/user_config/profile.jsp" class="btn btn-secondary me-2">Cancelar</a>
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const form = document.querySelector('form');

        form.addEventListener('submit', function(event) {
            const newPassword = document.getElementById('newPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            if (newPassword !== confirmPassword && newPassword !== '') {
                event.preventDefault();
                alert('Las contraseñas no coinciden');
            }
        });
    });
</script>