<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Iniciar Sesi�n - Gesti�n de Tareas</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Estilos personalizados -->
  <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
  <!-- Contenedor principal centrado vertical y horizontalmente -->
  <div class="container d-flex justify-content-center align-items-center vh-100">
    <!-- Tarjeta para el formulario de inicio de sesi�n -->
    <div class="card p-4 shadow" style="width: 100%; max-width: 400px;">
      <h3 class="text-center mb-4">Iniciar Sesi�n</h3>
      <!-- Formulario de inicio de sesi�n -->
      <form action="autenticarUsuario" method="POST">
        <!-- Campo para correo electr�nico -->
        <div class="form-group">
          <label for="email">Correo Electr�nico</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Ingresa tu correo" required>
        </div>
        <!-- Campo para contrase�a -->
        <div class="form-group">
          <label for="password">Contrase�a</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa tu contrase�a" required>
        </div>
        <!-- Bot�n para enviar el formulario -->
        <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
      </form>
    </div>
  </div>
  <!-- Bootstrap JS y dependencias -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
