<?php
$results = [];
$error_message = '';
$has_searched = false;
$emptyQuery = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['buscar'])) {
  $has_searched = true;

  $numero_documento = isset($_POST['numero_documento']) ? trim($_POST['numero_documento']) : '';
  $nombre           = isset($_POST['nombre']) ? trim($_POST['nombre']) : '';
  $apellido         = isset($_POST['apellido']) ? trim($_POST['apellido']) : '';

  $emptyQuery = empty($nombre) && empty($apellido) && empty($numero_documento);

  if (!$emptyQuery) {
    $params = [
      'document_number' => $numero_documento,
      'owner_name'      => $nombre,
      'owner_lastname'  => $apellido
    ];

    $url = "https://panel.radioamerica.com.ve/api/lost-document";
    $url .= '?' . http_build_query($params);

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, 30);

    $response = curl_exec($ch);

    if (curl_errno($ch)) {
      $error_message = curl_error($ch);
    } else {
      $json_data = json_decode($response, true);

      if (isset($json_data['data']) && is_array($json_data['data'])) {
        $results = $json_data['data'];
      }
    }
    curl_close($ch);
  }
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="Radio America">
  <meta name="description" content="Servicio Público que Presta R.A para toda la colectividad Carabobeña encuentra tus documentos o pertenencias en nuestras instalaciones">

  <meta property="og:locale" content="es_ES">
  <meta property="og:url" content="https://radioamerica.com.ve/">
  <meta property="og:site_name" content="Radio America">
  <meta property="article:modified_time" content="2024-04-25T14:31:26+00:00">

  <title>Búsqueda de Documento Extraviado en nuestras Oficinas</title>

  <link rel="canonical" href="https://radioamerica.com.ve/" />

  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root {
      --primary: #B12025;
      --primary-dark: #8C191D;
      --secondary: #1E88E5;
      --gray-light: #E0E0E0;
      --border-radius: 8px;
      --box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
      --transition: all 0.3s ease;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Montserrat', sans-serif;
      background: #f8f9fa;
      margin: 0;
      padding: 20px;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #000;
      line-height: 1.6;
      position: relative;
      overflow-x: hidden;
    }

    body::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 250px;
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
      z-index: -1;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
    }

    .container {
      background: #fff;
      padding: 2.5rem;
      width: 100%;
      max-width: 850px;
      border-radius: var(--border-radius);
      box-shadow: var(--box-shadow);
      border: 1px solid var(--gray-light);
      position: relative;
      margin-top: 50px;
    }

    .header {
      text-align: center;
      margin-bottom: 2rem;
    }

    .logo {
      font-size: 2.5rem;
      font-weight: 800;
      color: #000;
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    .logo span {
      color: var(--primary);
    }

    .tagline {
      font-size: 1rem;
      font-weight: 500;
      color: #000;
      margin-top: 0.5rem;
    }

    h2 {
      color: #000;
      font-size: 1.8rem;
      font-weight: 700;
      text-align: center;
      margin-bottom: 1.8rem;
      position: relative;
      padding-bottom: 15px;
    }

    h2::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      width: 100px;
      height: 4px;
      background: linear-gradient(90deg, var(--primary), var(--secondary));
      border-radius: 2px;
    }

    form {
      background: #fff;
      padding: 2rem;
      border-radius: var(--border-radius);
      border: 1px solid var(--gray-light);
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
      margin-bottom: 2rem;
    }

    .form-group {
      margin-bottom: 1.5rem;
      position: relative;
    }

    label {
      display: block;
      margin-bottom: 0.6rem;
      font-weight: 600;
      color: #000;
      font-size: 1rem;
    }

    .input-icon {
      position: relative;
      display: flex;
      align-items: center;
    }

    .input-icon i {
      position: absolute;
      left: 12px;
      color: var(--primary);
      font-size: 1.3rem;
      z-index: 2;
      top: 50%;
      transform: translateY(-50%);
      width: 25px;
      text-align: center;
      pointer-events: none;
    }

    .input-icon input {
      width: 100%;
      padding: 0.9rem 1rem 0.9rem 50px;
      font-size: 1rem;
      border: 1px solid var(--gray-light);
      border-radius: var(--border-radius);
      font-family: 'Montserrat', sans-serif;
      background: #fff;
      color: #000;
      transition: var(--transition);
      line-height: 1.2;
    }

    .input-icon input:focus {
      outline: none;
      border-color: var(--primary);
      box-shadow: 0 0 0 0.2rem rgba(177, 32, 37, 0.25);
    }

    input::placeholder {
      color: #757575;
      opacity: 0.7;
    }

    button[type="submit"] {
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 10px;
      width: 100%;
      padding: 1rem;
      font-size: 1.1rem;
      font-weight: 600;
      background: linear-gradient(90deg, var(--primary), var(--primary-dark));
      color: #fff;
      border: none;
      border-radius: var(--border-radius);
      cursor: pointer;
      transition: var(--transition);
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-top: 1.2rem;
    }

    button:hover {
      background: linear-gradient(90deg, var(--primary-dark), var(--primary));
      transform: translateY(-3px);
    }

    .results-container {
      margin: 2rem 0;
    }

    .info-box {
      background-color: #E3F2FD;
      border-left: 4px solid var(--secondary);
      padding: 1.2rem;
      margin: 1.2rem 0;
      border-radius: 0 var(--border-radius) var(--border-radius) 0;
      font-weight: 500;
      color: #000;
      display: flex;
      align-items: center;
    }

    .info-box i {
      margin-right: 10px;
      color: var(--secondary);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin: 1.5rem 0;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
      border-radius: var(--border-radius);
      overflow: hidden;
      background: #fff;
    }

    th,
    td {
      padding: 0.9rem 1rem;
      text-align: left;
      border-bottom: 1px solid var(--gray-light);
      color: #000;
      font-size: 0.95rem;
    }

    th {
      background: linear-gradient(90deg, var(--primary), var(--primary-dark));
      color: #fff;
      font-weight: 600;
      text-transform: uppercase;
      font-size: 0.85rem;
    }

    tr:nth-child(even) {
      background-color: rgba(0, 0, 0, 0.02);
    }

    tr:hover {
      background-color: rgba(177, 32, 37, 0.05);
    }

    .check {
      text-align: center;
      font-size: 1.2rem;
      color: #4CAF50;
      font-weight: bold;
    }

    .copyright {
      text-align: center;
      margin-top: 2.5rem;
      font-size: 0.9rem;
      color: #000;
      padding-top: 1.5rem;
      border-top: 1px solid var(--gray-light);
    }

    .radio-wave {
      position: absolute;
      bottom: -50px;
      left: 0;
      width: 100%;
      height: 50px;
      background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 100" preserveAspectRatio="none"><path fill="%23B12025" d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z" opacity=".25" class="shape-fill"></path><path fill="%23B12025" d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z" opacity=".5" class="shape-fill"></path><path fill="%23B12025" d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z" class="shape-fill"></path></svg>');
      background-size: cover;
      z-index: -1;
    }

    @media (max-width: 768px) {
      body {
        padding: 15px;
        align-items: flex-start;
      }

      .container {
        padding: 1.8rem;
        margin: 1rem 0;
      }

      h2 {
        font-size: 1.5rem;
      }

      form {
        padding: 1.5rem;
      }

      th,
      td {
        padding: 0.7rem;
        font-size: 0.85rem;
      }
    }

    @media (max-width: 576px) {
      body::before {
        height: 200px;
      }

      .input-icon i {
        left: 10px;
        font-size: 1.2rem;
        width: 20px;
      }

      .input-icon input {
        padding-left: 45px;
        height: 45px;
      }

      button {
        font-size: 1rem;
        padding: 0.9rem;
      }

      h2 {
        font-size: 1.3rem;
      }

      .logo {
        font-size: 2rem;
      }

      .container {
        padding: 1.5rem;
      }

      table {
        display: block;
        overflow-x: auto;
      }
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="header">
      <div class="logo">Radio <span>América</span></div>
      <div class="tagline">Encuentra tus documentos extraviados</div>
    </div>

    <h2>Busca tu documento extraviado en nuestras oficinas</h2>

    <form action="" method="post">
      <div class="form-group">
        <label for="numero_documento">Número de Documento:</label>
        <div class="input-icon">
          <i class="fas fa-id-card"></i>
          <input type="text" id="numero_documento" name="numero_documento" placeholder="Ej: V-12345678" value="<?php echo isset($_POST['numero_documento']) ? htmlspecialchars($_POST['numero_documento']) : ''; ?>">
        </div>
      </div>
      <div class="form-group">
        <label for="nombre">Nombre:</label>
        <div class="input-icon">
          <i class="fas fa-user"></i>
          <input type="text" id="nombre" name="nombre" placeholder="Primer nombre" value="<?php echo isset($_POST['nombre']) ? htmlspecialchars($_POST['nombre']) : ''; ?>">
        </div>
      </div>
      <div class="form-group">
        <label for="apellido">Apellido:</label>
        <div class="input-icon">
          <i class="fas fa-user-tag"></i>
          <input type="text" id="apellido" name="apellido" placeholder="Primer Apellido" value="<?php echo isset($_POST['apellido']) ? htmlspecialchars($_POST['apellido']) : ''; ?>">
        </div>
      </div>
      <button type="submit" name="buscar">
        <i class="fas fa-search"></i> Buscar Documento
      </button>
    </form>

    <div class="results-container">
      <?php if ($has_searched): ?>

        <?php if (!empty($error_message)): ?>
          <div class='error-box'><i class='fas fa-exclamation-triangle'></i> Error en la consulta: <?php echo htmlspecialchars($error_message); ?></div>

        <?php elseif ($emptyQuery): ?>
          <div class='info-box'><i class='fas fa-info-circle'></i> Por favor, complete al menos un campo para realizar la búsqueda.</div>

        <?php elseif (count($results) > 0): ?>
          <h3>Resultados de la búsqueda:</h3>
          <div class='info-box'><i class='fas fa-info-circle'></i> Retire sus documentos en el Horario comprendido de 9:00AM hasta las 4:00 PM</div>
          <table>
            <tr>
              <th>Nombre</th>
              <th>Apellido</th>
              <th>Número de Documento</th>
              <th>Tipo de Documento</th>
              <th>Documento en Sede</th>
            </tr>
            <?php foreach ($results as $result): ?>
              <tr>
                <td><?php echo htmlspecialchars($result["owner_name"]); ?></td>
                <td><?php echo htmlspecialchars($result["owner_lastname"]); ?></td>
                <td><?php echo htmlspecialchars($result["document_number"]); ?></td>
                <td><?php echo htmlspecialchars($result["document_type"]); ?></td>
                <td class='check'><i class='fas fa-check-circle'></i></td>
              </tr>
            <?php endforeach; ?>
          </table>

        <?php else: ?>
          <div class='info-box'><i class='fas fa-exclamation-circle'></i> No se encontraron usuarios que coincidan con los criterios de búsqueda.</div>
          <div class='info-box'><i class='fas fa-lightbulb'></i> Sugerencia: Intente buscar con menos criterios o verifique la ortografía.</div>
        <?php endif; ?>

      <?php endif; ?>
    </div>

    <p class="copyright">© Radio América 2024 - Todos los derechos reservados</p>
  </div>
</body>

</html>