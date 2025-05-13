<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../Components/Header/header.jsp" %>


<div class="container mt-4">
    <div class="card">
        <div class="card-header bg-light d-flex justify-content-between align-items-center">
            <h4>Matrícula académica</h4>
            <button class="btn btn-outline-secondary" id="btnImprimir" onclick="window.print();">
                <i class="bi bi-printer"></i> Imprimir
            </button>
        </div>

        <div class="card-body">
            <!-- Información de créditos -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead class="table-primary">
                                <tr>
                                    <th>Sem</th>
                                    <th>Tipo matrícula</th>
                                    <th>Cred. semestre</th>
                                    <th>Cred. extra</th>
                                    <th>Cred. Matriculados</th>
                                    <th>Cred. Disponibles</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>6</td>
                                    <td>Completa</td>
                                    <td>16</td>
                                    <td>2</td>
                                    <td>${matricula.credMatriculados}</td>
                                    <td>${matricula.credDisponibles}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Pestañas de navegación -->
            <ul class="nav nav-tabs mb-3" id="materiasTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="materias-matriculadas-tab" data-bs-toggle="tab"
                            data-bs-target="#materias-matriculadas" type="button" role="tab"
                            aria-controls="materias-matriculadas" aria-selected="true">
                        Materias matriculadas
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="materias-disponibles-tab" data-bs-toggle="tab"
                            data-bs-target="#materias-disponibles" type="button" role="tab"
                            aria-controls="materias-disponibles" aria-selected="false">
                        Materias por matricular
                    </button>
                </li>
            </ul>

            <!-- Contenido de las pestañas -->
            <div class="tab-content" id="materiasTabsContent">
                <!-- Pestaña de Materias Matriculadas -->
                <div class="tab-pane fade show active" id="materias-matriculadas" role="tabpanel"
                     aria-labelledby="materias-matriculadas-tab">

                    <!-- Lista de materias matriculadas -->
                    <div class="row" id="materiasMatriculadasContainer">
                        <!-- Ejemplo de materia matriculada -->
                        <div class="col-md-6 mb-3">
                            <div class="card h-100 border-primary">
                                <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                    <h5 class="card-title mb-0">26499-A2 ARQUITECTURA DE COMPUTADORES</h5>
                                    <span class="badge bg-primary">3 créditos</span>
                                </div>
                                <div class="card-body">
                                    <p><strong>Horarios:</strong></p>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Jueves, 06:00am a 07:40am</li>
                                        <li class="list-group-item">Lunes, 06:00am a 07:40am</li>
                                    </ul>
                                    <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                </div>
                                <div class="card-footer bg-white text-end">
                                    <button class="btn btn-danger btn-sm" onclick="cancelarMateria('26499-A2')">
                                        <i class="bi bi-x-circle"></i> Cancelar
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <div class="card h-100 border-primary">
                                <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                    <h5 class="card-title mb-0">13702-P GESTIÓN DE RECURSOS HUMANOS Y COMUNICACIÓN</h5>
                                    <span class="badge bg-primary">3 créditos</span>
                                </div>
                                <div class="card-body">
                                    <p><strong>Horarios:</strong></p>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Viernes, 07:40am a 09:20am</li>
                                        <li class="list-group-item">Martes, 09:20am a 11:00am</li>
                                    </ul>
                                    <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                </div>
                                <div class="card-footer bg-white text-end">
                                    <button class="btn btn-danger btn-sm" onclick="cancelarMateria('13702-P')">
                                        <i class="bi bi-x-circle"></i> Cancelar
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <div class="card h-100 border-primary">
                                <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                    <h5 class="card-title mb-0">13701-P PROGRAMACIÓN WEB</h5>
                                    <span class="badge bg-primary">3 créditos</span>
                                </div>
                                <div class="card-body">
                                    <p><strong>Horarios:</strong></p>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Lunes, 08:35pm a 10:05pm</li>
                                        <li class="list-group-item">Martes, 06:20pm a 08:35pm</li>
                                    </ul>
                                    <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                </div>
                                <div class="card-footer bg-white text-end">
                                    <button class="btn btn-danger btn-sm" onclick="cancelarMateria('13701-P')">
                                        <i class="bi bi-x-circle"></i> Cancelar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pestaña de Materias por Matricular -->
                <div class="tab-pane fade" id="materias-disponibles" role="tabpanel"
                     aria-labelledby="materias-disponibles-tab">

                    <!-- Filtros y búsqueda -->
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-search"></i></span>
                                <input type="text" class="form-control" id="filtroMaterias"
                                       placeholder="Filtrar por código o nombre">
                                <button class="btn btn-outline-secondary" type="button" onclick="filtrarMaterias()">Buscar</button>
                            </div>
                        </div>
                    </div>

                    <!-- Selector del plan de estudio -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <ul class="nav nav-pills" id="planEstudio" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="plan-estudio-tab" data-bs-toggle="pill"
                                            data-bs-target="#plan-estudio-content" type="button" role="tab">
                                        Plan de Estudio
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="electivas-tab" data-bs-toggle="pill"
                                            data-bs-target="#electivas-content" type="button" role="tab">
                                        Electivas
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="bienestar-tab" data-bs-toggle="pill"
                                            data-bs-target="#bienestar-content" type="button" role="tab">
                                        Bienestar
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- Contenido de los planes de estudio -->
                    <div class="tab-content" id="planEstudioContent">
                        <!-- Plan de estudio principal -->
                        <div class="tab-pane fade show active" id="plan-estudio-content" role="tabpanel">
                            <div class="row" id="materiasDisponiblesContainer">
                                <!-- Ejemplo de materia disponible -->
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100 border-secondary">
                                        <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0">13801-A SISTEMAS OPERATIVOS</h5>
                                            <span class="badge bg-secondary">3 créditos</span>
                                        </div>
                                        <div class="card-body">
                                            <p><strong>Horarios:</strong></p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Lunes, 07:50pm a 09:20pm</li>
                                                <li class="list-group-item">Miércoles, 06:20pm a 07:50pm</li>
                                            </ul>
                                            <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                            <p><strong>Semestre:</strong> 8</p>
                                        </div>
                                        <div class="card-footer bg-white text-end">
                                            <button class="btn btn-success btn-sm" onclick="agregarMateria('13801-A')">
                                                <i class="bi bi-plus-circle"></i> Agregar
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <div class="card h-100 border-secondary">
                                        <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0">13802-P GESTIÓN DE LA CALIDAD DEL PROYECTO</h5>
                                            <span class="badge bg-secondary">3 créditos</span>
                                        </div>
                                        <div class="card-body">
                                            <p><strong>Horarios:</strong></p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Jueves, 05:40pm a 07:05pm</li>
                                                <li class="list-group-item">Martes, 07:05pm a 08:35pm</li>
                                            </ul>
                                            <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                            <p><strong>Semestre:</strong> 7</p>
                                        </div>
                                        <div class="card-footer bg-white text-end">
                                            <button class="btn btn-success btn-sm" onclick="agregarMateria('13802-P')">
                                                <i class="bi bi-plus-circle"></i> Agregar
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <div class="card h-100 border-secondary">
                                        <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0">13804-P MODELOS MATEMÁTICOS</h5>
                                            <span class="badge bg-secondary">3 créditos</span>
                                        </div>
                                        <div class="card-body">
                                            <p><strong>Horarios:</strong></p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Jueves, 02:20pm a 04:00pm</li>
                                                <li class="list-group-item">Viernes, 04:00pm a 05:30pm</li>
                                            </ul>
                                            <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                            <p><strong>Semestre:</strong> 5</p>
                                        </div>
                                        <div class="card-footer bg-white text-end">
                                            <button class="btn btn-success btn-sm" onclick="agregarMateria('13804-P')">
                                                <i class="bi bi-plus-circle"></i> Agregar
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Electivas -->
                        <div class="tab-pane fade" id="electivas-content" role="tabpanel">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100 border-secondary">
                                        <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0">14050-E ELECTIVA DE PROGRAMACIÓN MÓVIL</h5>
                                            <span class="badge bg-secondary">3 créditos</span>
                                        </div>
                                        <div class="card-body">
                                            <p><strong>Horarios:</strong></p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Lunes, 02:00pm a 04:00pm</li>
                                                <li class="list-group-item">Jueves, 02:00pm a 04:00pm</li>
                                            </ul>
                                            <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                            <p><strong>Tipo:</strong> Electiva Profesional</p>
                                        </div>
                                        <div class="card-footer bg-white text-end">
                                            <button class="btn btn-success btn-sm" onclick="agregarMateria('14050-E')">
                                                <i class="bi bi-plus-circle"></i> Agregar
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Bienestar -->
                        <div class="tab-pane fade" id="bienestar-content" role="tabpanel">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100 border-secondary">
                                        <div class="card-header bg-light d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0">BU001 DEPORTE FORMATIVO</h5>
                                            <span class="badge bg-secondary">1 crédito</span>
                                        </div>
                                        <div class="card-body">
                                            <p><strong>Horarios:</strong></p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Viernes, 02:00pm a 04:00pm</li>
                                            </ul>
                                            <p class="mt-2"><strong>Fecha:</strong> 2025-02-03 a 2025-06-01</p>
                                            <p><strong>Tipo:</strong> Bienestar</p>
                                        </div>
                                        <div class="card-footer bg-white text-end">
                                            <button class="btn btn-success btn-sm" onclick="agregarMateria('BU001')">
                                                <i class="bi bi-plus-circle"></i> Agregar
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal de confirmación para agregar materia -->
<div class="modal fade" id="confirmarMatriculaModal" tabindex="-1" aria-labelledby="confirmarMatriculaModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmarMatriculaModalLabel">Confirmar matrícula</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>¿Estás seguro que deseas matricular esta asignatura?</p>
                <p id="materiaAMatricular"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary" id="confirmarMatricula">Confirmar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal de confirmación para cancelar materia -->
<div class="modal fade" id="confirmarCancelacionModal" tabindex="-1" aria-labelledby="confirmarCancelacionModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmarCancelacionModalLabel">Confirmar cancelación</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>¿Estás seguro que deseas cancelar esta asignatura?</p>
                <p id="materiaACancelar"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                <button type="button" class="btn btn-danger" id="confirmarCancelacion">Sí, cancelar</button>
            </div>
        </div>
    </div>
</div>

<!-- Script para la funcionalidad -->
<script>
    // Variables para almacenar códigos de materia
    let materiaSeleccionada = '';

    // Función para agregar materia
    function agregarMateria(codigoMateria) {
        materiaSeleccionada = codigoMateria;
        // Mostrar el código de la materia en el modal
        document.getElementById('materiaAMatricular').textContent = 'Código: ' + codigoMateria;
        // Mostrar modal de confirmación
        const modal = new bootstrap.Modal(document.getElementById('confirmarMatriculaModal'));
        modal.show();
    }

    // Función para cancelar materia
    function cancelarMateria(codigoMateria) {
        materiaSeleccionada = codigoMateria;
        // Mostrar el código de la materia en el modal
        document.getElementById('materiaACancelar').textContent = 'Código: ' + codigoMateria;
        // Mostrar modal de confirmación
        const modal = new bootstrap.Modal(document.getElementById('confirmarCancelacionModal'));
        modal.show();
    }

    // Función para filtrar materias
    function filtrarMaterias() {
        const filtro = document.getElementById('filtroMaterias').value.toLowerCase();
        const materias = document.querySelectorAll('#materiasDisponiblesContainer .card');

        materias.forEach(materia => {
            const titulo = materia.querySelector('.card-title').textContent.toLowerCase();
            if (titulo.includes(filtro)) {
                materia.closest('.col-md-6').style.display = 'block';
            } else {
                materia.closest('.col-md-6').style.display = 'none';
            }
        });
    }

    // Evento para confirmar matrícula
    document.getElementById('confirmarMatricula').addEventListener('click', function() {
        // Aquí iría la llamada AJAX para matricular la materia
        alert('Materia ' + materiaSeleccionada + ' matriculada con éxito');
        // Cerrar modal
        const modal = bootstrap.Modal.getInstance(document.getElementById('confirmarMatriculaModal'));
        modal.hide();
        // Actualizar la UI (esto sería reemplazado por una recarga o actualización dinámica)
        setTimeout(() => {
            location.reload();
        }, 1000);
    });

    // Evento para confirmar cancelación
    document.getElementById('confirmarCancelacion').addEventListener('click', function() {
        // Aquí iría la llamada AJAX para cancelar la materia
        alert('Materia ' + materiaSeleccionada + ' cancelada con éxito');
        // Cerrar modal
        const modal = bootstrap.Modal.getInstance(document.getElementById('confirmarCancelacionModal'));
        modal.hide();
        // Actualizar la UI (esto sería reemplazado por una recarga o actualización dinámica)
        setTimeout(() => {
            location.reload();
        }, 1000);
    });

    // Estilo para impresión - ocultar botones y elementos innecesarios al imprimir
    window.addEventListener('beforeprint', function() {
        document.querySelectorAll('.btn-danger, .btn-success, #btnImprimir').forEach(element => {
            element.style.display = 'none';
        });

        // Mostrar solo las materias matriculadas para imprimir
        document.getElementById('materias-matriculadas-tab').click();
    });

    window.addEventListener('afterprint', function() {
        document.querySelectorAll('.btn-danger, .btn-success, #btnImprimir').forEach(element => {
            element.style.display = 'block';
        });
    });
</script>