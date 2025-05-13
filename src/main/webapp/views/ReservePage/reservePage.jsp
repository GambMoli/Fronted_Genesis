<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../Components/Header/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/views/ReservePage/ReserveStyle.css">


<body>


  <!-- Botón arriba a la derecha -->
  <div class="containerButton">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
      Crear Reserva
    </button>
  </div>

  <!-- Tabla debajo -->
  <div class="ContainerTable">
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Código</th>
      <th scope="col">Fecha</th>
      <th scope="col">Hora Inicio</th>
      <th scope="col">Hora Fin</th>
      <th scope="col">Estado</th>
      <th scope="col">Lugar ID</th>
      <th scope="col">Docente ID</th>
      <th scope="col">Estudiante ID</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>RES123</td>
      <td>2025-04-21</td>
      <td>11:33</td>
      <td>12:30</td>
      <td>NO DISPONIBLE</td>
      <td>2</td>
      <td>2</td>
      <td>5</td>
    </tr>
    <!-- Puedes agregar más filas aquí si hay más reservas -->
  </tbody>
</table>

  </div>

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Crear Reserva</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <!-- Contenido del formulario aquí -->
          <form>
            <div class="mb-3">
              <label for="code" class="form-label">Código de Reserva</label>
              <input type="text" class="form-control" id="code" name="code" placeholder="Ej: RES123">
            </div>

            <div class="mb-3">
              <label for="reserveDate" class="form-label">Fecha de Reserva</label>
              <input type="date" class="form-control" id="reserveDate" name="reserveDate">
            </div>

            <div class="mb-3">
              <label for="hourInit" class="form-label">Hora de Inicio</label>
              <input type="time" class="form-control" id="hourInit" name="hourInit">
            </div>

            <div class="mb-3">
              <label for="hourFinish" class="form-label">Hora de Fin</label>
              <input type="time" class="form-control" id="hourFinish" name="hourFinish">
            </div>

            <div class="mb-3">
              <label for="state" class="form-label">Estado</label>
              <select class="form-select" id="state" name="state">
                <option value="DISPONIBLE">DISPONIBLE</option>
                <option value="NO DISPONIBLE">NO DISPONIBLE</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="placeId" class="form-label">ID del Lugar</label>
              <input type="number" class="form-control" id="placeId" name="placeId" placeholder="Ej: 2">
            </div>

            <div class="mb-3">
              <label for="teacherId" class="form-label">ID del Docente</label>
              <input type="number" class="form-control" id="teacherId" name="teacherId" placeholder="Ej: 2">
            </div>

            <div class="mb-3">
              <label for="studentId" class="form-label">ID del Estudiante</label>
              <input type="number" class="form-control" id="studentId" name="studentId" placeholder="Ej: 5">
            </div>
          </form> 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-primary">Guardar</button>
        </div>
      </div>
    </div>
  </div>

</body>
