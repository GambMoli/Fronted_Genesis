<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../Components/Header/header.jsp" %>

<div class="container-fluid mt-3">
    <div class="row">
        <!-- Lista de chats -->
        <div class="col-md-4 border-end">
            <input type="text" class="form-control my-3" placeholder="Buscar">
            <div>
                <h6 class="text-muted">Grupos</h6>
                <ul class="list-group mb-3">
                    <li class="list-group-item">
                        <strong>Noticias UDES</strong><br>
                        <small>Comunicado de la Universidad</small>
                    </li>
                    <li class="list-group-item">
                        <strong>Patrones de Diseño</strong><br>
                        <small>El día de hoy se entregarán notas</small>
                    </li>
                    <li class="list-group-item">
                        <strong>Gestión Contable</strong><br>
                        <small>El día de hoy se entregarán notas</small>
                    </li>
                </ul>

                <h6 class="text-muted">Contacto</h6>
                <ul class="list-group">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        Profesor 1
                        <span class="badge bg-light text-muted">✔✔</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        Profesor 2
                        <span class="badge bg-danger">1</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        Compañero 1
                        <span class="badge bg-danger">1</span>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Ventana de chat -->
        <div class="col-md-8 d-flex flex-column">
            <div class="border-bottom py-2 px-3 d-flex justify-content-between align-items-center">
                <div>
                    <strong>Profesor 1</strong><br>
                    <small class="text-muted">Online - Última conexión 2:02pm</small>
                </div>
                <div class="d-flex gap-3 fs-5">
                    📞 💻 ⋮
                </div>
            </div>

            <div class="flex-grow-1 p-3 overflow-auto" style="height: 400px;">
                <div class="mb-3">
                    <div class="bg-light p-2 rounded w-50">Si será la clase hoy</div>
                    <small class="text-muted">Hoy, 8:30pm</small>
                </div>
                <div class="text-end mb-3">
                    <div class="bg-primary text-white p-2 rounded w-50 d-inline-block">Entendido</div><br>
                    <small class="text-muted">Hoy, 8:33pm</small>
                </div>
                <!-- Más mensajes aquí -->
            </div>

            <div class="p-3 border-top">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Escribe tu mensaje...">
                    <button class="btn btn-outline-secondary">📎</button>
                    <button class="btn btn-primary">➤</button>
                </div>
            </div>
        </div>
    </div>
</div>