<?php
session_start();
if (!isset($_SESSION['usuario'])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel Administrativo - Radio América</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.31/jspdf.plugin.autotable.min.js"></script>
    <style>
        :root {
            --primary: #B12025;
            --primary-dark: #8C191D;
            --secondary: #1E88E5;
            --gray-light: #E0E0E0;
            --border-radius: 6px;
            --box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            --transition: all 0.2s ease;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body {
            height: 100%;
            overflow-x: hidden;
        }
        body {
            font-family: 'Montserrat', sans-serif;
            background: #f8f9fa;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            color: #000;
            line-height: 1.4;
            position: relative;
            display: flex;
            flex-direction: column;
        }
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 80px;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            z-index: -1;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        .container {
            background: #fff;
            padding: 0.5rem;
            width: 100%;
            max-width: 100%;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            border: 1px solid var(--gray-light);
            position: relative;
            margin-top: 10px;
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .header {
            text-align: center;
            margin-bottom: 0.5rem;
            padding-bottom: 0.3rem;
            border-bottom: 1px solid var(--gray-light);
        }
        .logo {
            font-size: 1.5rem;
            font-weight: 800;
            color: #000;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .logo span {
            color: var(--primary);
        }
        .tagline {
            font-size: 0.8rem;
            font-weight: 500;
            color: #000;
            margin-top: 0.2rem;
        }
        .menu-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 0.5rem;
            flex-wrap: wrap;
            gap: 2px;
        }
        .menu-btn {
            flex: 1;
            min-width: 100px;
            padding: 4px 6px;
            background: linear-gradient(90deg, var(--primary), var(--primary-dark));
            color: white;
            border: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            font-weight: 600;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 4px;
            font-size: 0.75rem;
        }
        .menu-btn:hover {
            transform: translateY(-1px);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        .menu-btn.active {
            background: linear-gradient(90deg, var(--secondary), #0d47a1);
        }
        .section {
            display: none;
            flex: 1;
            overflow-y: auto;
        }
        .section.active {
            display: flex;
            flex-direction: column;
        }
        h2 {
            color: #000;
            font-size: 1.2rem;
            font-weight: 700;
            text-align: center;
            margin-bottom: 0.5rem;
            position: relative;
            padding-bottom: 6px;
        }
        h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 50px;
            height: 2px;
            background: linear-gradient(90deg, var(--primary), var(--secondary));
            border-radius: 1px;
        }
        .form-group {
            margin-bottom: 0.4rem;
            position: relative;
        }
        label {
            display: block;
            margin-bottom: 0.1rem;
            font-weight: 600;
            color: #000;
            font-size: 0.75rem;
        }
        .input-icon {
            position: relative;
            display: flex;
            align-items: center;
        }
        .input-icon i {
            position: absolute;
            left: 6px;
            color: var(--primary);
            font-size: 0.8rem;
            z-index: 2;
            top: 50%;
            transform: translateY(-50%);
            width: 16px;
            text-align: center;
            pointer-events: none;
        }
        .input-icon input, .input-icon select {
            width: 100%;
            padding: 0.4rem 0.6rem 0.4rem 25px;
            font-size: 0.75rem;
            border: 1px solid var(--gray-light);
            border-radius: var(--border-radius);
            font-family: 'Montserrat', sans-serif;
            background: #fff;
            color: #000;
            transition: var(--transition);
            line-height: 1.2;
        }
        .input-icon input:focus, .input-icon select:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 0.1rem rgba(177, 32, 37, 0.25);
        }
        button[type="submit"] {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 4px;
            width: 100%;
            padding: 0.5rem;
            font-size: 0.8rem;
            font-weight: 600;
            background: linear-gradient(90deg, var(--primary), var(--primary-dark));
            color: #fff;
            border: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-top: 0.4rem;
        }
        button:hover {
            background: linear-gradient(90deg, var(--primary-dark), var(--primary));
            transform: translateY(-1px);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0.3rem 0;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.05);
            border-radius: var(--border-radius);
            overflow: hidden;
            background: #fff;
            font-size: 0.7rem;
        }
        th, td {
            padding: 0.3rem 0.4rem;
            text-align: left;
            border-bottom: 1px solid var(--gray-light);
            color: #000;
        }
        th {
            background: linear-gradient(90deg, var(--primary), var(--primary-dark));
            color: #fff;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.65rem;
            white-space: nowrap;
        }
        tr:nth-child(even) {
            background-color: rgba(0, 0, 0, 0.02);
        }
        tr:hover {
            background-color: rgba(177, 32, 37, 0.05);
        }
        .status-badge {
            padding: 1px 4px;
            border-radius: 8px;
            font-size: 0.6rem;
            font-weight: 600;
            text-transform: uppercase;
            white-space: nowrap;
        }
        .status-entregado {
            background-color: #d4edda;
            color: #155724;
        }
        .status-pendiente {
            background-color: #fff3cd;
            color: #856404;
        }
        .status-procesado {
            background-color: #d1ecf1;
            color: #0c5460;
        }
        .chart-container {
            position: relative;
            height: 200px;
            margin: 5px 0;
        }
        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 8px;
            margin: 8px 0;
        }
        .dashboard-card {
            background: white;
            border-radius: var(--border-radius);
            padding: 8px;
            box-shadow: var(--box-shadow);
            border: 1px solid var(--gray-light);
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .dashboard-card h3 {
            color: var(--primary);
            margin-bottom: 6px;
            font-size: 0.8rem;
            border-bottom: 1px solid var(--gray-light);
            padding-bottom: 2px;
        }
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(80px, 1fr));
            gap: 6px;
            margin-bottom: 8px;
        }
        .stat-card {
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: white;
            padding: 6px;
            border-radius: var(--border-radius);
            text-align: center;
        }
        .stat-number {
            font-size: 1.2rem;
            font-weight: 700;
        }
        .stat-label {
            font-size: 0.65rem;
            opacity: 0.9;
        }
        .copyright {
            text-align: center;
            margin-top: 0.5rem;
            font-size: 0.7rem;
            color: #000;
            padding-top: 0.3rem;
            border-top: 1px solid var(--gray-light);
        }
        .radio-wave {
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 100%;
            height: 10px;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 100" preserveAspectRatio="none"><path fill="%23B12025" d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z" opacity=".25" class="shape-fill"></path><path fill="%23B12025" d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z" opacity=".5" class="shape-fill"></path><path fill="%23B12025" d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z" class="shape-fill"></path></svg>');
            background-size: cover;
            z-index: -1;
        }
        .two-column {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 8px;
            flex: 1;
        }
        .three-column {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 8px;
        }
        .four-column {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
        }
        .btn-sm {
            padding: 1px 3px;
            font-size: 0.6rem;
            border-radius: 3px;
        }
        .alert {
            padding: 6px 8px;
            border-radius: var(--border-radius);
            margin-bottom: 8px;
            font-size: 0.75rem;
        }
        .alert-success {
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
        }
        .alert-danger {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
        }
        .alert-info {
            background-color: #d1ecf1;
            border: 1px solid #bee5eb;
            color: #0c5460;
        }
        .pdf-btn {
            background: linear-gradient(90deg, #e74c3c, #c0392b);
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: var(--border-radius);
            cursor: pointer;
            font-weight: 600;
            font-size: 0.75rem;
            display: flex;
            align-items: center;
            gap: 4px;
            margin: 0 auto 8px;
            transition: var(--transition);
        }
        .pdf-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .content-wrapper {
            flex: 1;
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }
        .scrollable-content {
            flex: 1;
            overflow-y: auto;
            padding-bottom: 10px;
        }
        @media (max-width: 1200px) {
            .four-column {
                grid-template-columns: repeat(2, 1fr);
            }
        }
        @media (max-width: 992px) {
            .three-column {
                grid-template-columns: 1fr;
            }
            .two-column {
                grid-template-columns: 1fr;
            }
        }
        @media (max-width: 768px) {
            .container {
                padding: 0.5rem;
                margin: 0.3rem 0;
            }
            .menu-container {
                flex-direction: column;
            }
            .menu-btn {
                width: 100%;
            }
            .stats-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .four-column {
                grid-template-columns: 1fr;
            }
            .chart-container {
                height: 250px;
            }
        }
        @media (max-width: 576px) {
            body::before {
                height: 60px;
            }
            .input-icon i {
                left: 5px;
                font-size: 0.7rem;
            }
            .input-icon input, .input-icon select {
                padding-left: 22px;
            }
            button {
                font-size: 0.75rem;
                padding: 0.4rem;
            }
            h2 {
                font-size: 1rem;
            }
            .logo {
                font-size: 1.3rem;
            }
            .stats-grid {
                grid-template-columns: 1fr;
            }
            table {
                font-size: 0.65rem;
            }
            th, td {
                padding: 0.2rem;
            }
            .chart-container {
                height: 200px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo">Radio <span>América</span></div>
            <div class="tagline">Panel Administrativo de Documentos</div>
        </div>
        
        <div class="menu-container">
            <button class="menu-btn active" onclick="showSection('gestion')">
                <i class="fas fa-plus-circle"></i> Gestión
            </button>
            <button class="menu-btn" onclick="showSection('revision')">
                <i class="fas fa-check-circle"></i> Revisión
            </button>
            <button class="menu-btn" onclick="showSection('estadisticas')">
                <i class="fas fa-chart-bar"></i> Estadísticas
            </button>
            <button class="menu-btn" onclick="showSection('solicitudes')">
                <i class="fas fa-search"></i> Búsqueda
            </button>
        </div>
        
        <div class="content-wrapper">
            <!-- Sección de Gestión de Documentos -->
            <div id="gestion" class="section active">
                <h2>Gestión de Documentos</h2>
                
                <div class="two-column scrollable-content">
                    <div class="dashboard-card">
                        <h3>Agregar Nuevo Documento</h3>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="nombre">Nombre:</label>
                                <div class="input-icon">
                                    <i class="fas fa-user"></i>
                                    <input type="text" id="nombre" name="nombre" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="apellido">Apellido:</label>
                                <div class="input-icon">
                                    <i class="fas fa-user-tag"></i>
                                    <input type="text" id="apellido" name="apellido" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="documento">Tipo de Documento:</label>
                                <div class="input-icon">
                                    <i class="fas fa-id-card"></i>
                                    <select id="documento" name="tipo_documento">
                                        <option value="cedula">Cédula</option>
                                        <option value="licencia">Licencia</option>
                                        <option value="pasaporte">Pasaporte</option>
                                        <option value="tarjeta_bancaria">Tarjeta Bancaria</option>
                                        <option value="otro">Otro Documento</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="numero_documento">Número de Documento:</label>
                                <div class="input-icon">
                                    <i class="fas fa-hashtag"></i>
                                    <input type="text" id="numero_documento" name="numero_documento" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="documento_en_sede">Documento en Sede:</label>
                                <div class="input-icon">
                                    <i class="fas fa-building"></i>
                                    <select id="documento_en_sede" name="documento_en_sede">
                                        <option value="si">Sí</option>
                                        <option value="no">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sexo">Sexo:</label>
                                <div class="input-icon">
                                    <i class="fas fa-venus-mars"></i>
                                    <select id="sexo" name="sexo">
                                        <option value="masculino">Masculino</option>
                                        <option value="femenino">Femenino</option>
                                        <option value="otro">Otro</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" name="agregar">
                                <i class="fas fa-save"></i> Agregar
                            </button>
                        </form>
                    </div>
                    
                    <div class="dashboard-card">
                        <h3>Documentos Existentes</h3>
                        <div style="max-height: 500px; overflow-y: auto;">
                            <?php
                            // Configuración de la conexión a la base de datos
                            $servername = "localhost";
                            $username = "radioweb_app2AD";
                            $password = "]$Ffv-y,;j>u-j/f";
                            $dbname = "radioweb_App2";
                            
                            // Crear la conexión a la base de datos
                            $conn = new mysqli($servername, $username, $password, $dbname);
                            
                            // Verificar la conexión
                            if ($conn->connect_error) {
                                die("Conexión fallida: " . $conn->connect_error);
                            }
                            
                            // Si se ha enviado el formulario de agregar, agregar el nuevo usuario
                            if (isset($_POST["agregar"])) {
                                $nombre = $_POST['nombre'];
                                $apellido = $_POST['apellido'];
                                $numero_documento = $_POST['numero_documento'];
                                $tipo_documento = $_POST['tipo_documento'];
                                $documento_en_sede = $_POST['documento_en_sede'];
                                $sexo = $_POST['sexo'];
                                
                                // Preparar la consulta SQL para insertar el nuevo usuario
                                $sql_insert = "INSERT INTO usuarios (nombre, apellido, numero_documento, tipo_documento, documento_en_sede, sexo) VALUES ('$nombre', '$apellido', '$numero_documento', '$tipo_documento', '$documento_en_sede', '$sexo')";
                                
                                if ($conn->query($sql_insert) === TRUE) {
                                    echo "<div class='alert alert-success'>Documento agregado correctamente.</div>";
                                    header("Location: {$_SERVER['PHP_SELF']}?section=gestion");
                                    exit();
                                } else {
                                    echo "<div class='alert alert-danger'>Error al agregar documento: " . $conn->error . "</div>";
                                }
                            }
                            
                            // Construir la consulta SQL para seleccionar solo los usuarios activos
                            $sql_select = "SELECT * FROM usuarios WHERE retirado = 0";
                            $result = $conn->query($sql_select);
                            
                            // Verificar si hay errores en la consulta
                            if (!$result) {
                                echo "<div class='alert alert-danger'>Error en la consulta: " . $conn->error . "</div>";
                            } else {
                                // Mostrar resultados en una tabla si la consulta se ejecutó correctamente
                                if ($result->num_rows > 0) {
                                    echo "<table>";
                                    echo "<tr><th>Nombre</th><th>Apellido</th><th>Documento</th><th>Tipo</th><th>En Sede</th><th>Acción</th></tr>";
                                    while ($row = $result->fetch_assoc()) {
                                        echo "<tr>";
                                        echo "<td>" . $row["nombre"] . "</td>";
                                        echo "<td>" . $row["apellido"] . "</td>";
                                        echo "<td>" . $row["numero_documento"] . "</td>";
                                        echo "<td>" . $row["tipo_documento"] . "</td>";
                                        echo "<td>" . $row["documento_en_sede"] . "</td>";
                                        echo "<td><form action='' method='post'><input type='hidden' name='id' value='" . $row["id"] . "'><button type='submit' name='retirado' class='btn btn-danger btn-sm'><i class='fas fa-trash'></i></button></form></td>";
                                        echo "</tr>";
                                    }
                                    echo "</table>";
                                } else {
                                    echo "<div class='alert alert-info'>No se encontraron documentos.</div>";
                                }
                            }
                            
                            // Si se ha enviado el formulario de retiro, actualizar el estado del usuario
                            if (isset($_POST["retirado"])) {
                                $id = $_POST["id"];
                                $sql_update = "UPDATE usuarios SET retirado = 1 WHERE id = $id";
                                
                                if ($conn->query($sql_update) === TRUE) {
                                    echo "<div class='alert alert-success'>Documento retirado correctamente.</div>";
                                    header("Location: {$_SERVER['PHP_SELF']}?section=gestion");
                                    exit();
                                } else {
                                    echo "<div class='alert alert-danger'>Error al retirar documento: " . $conn->error . "</div>";
                                }
                            }
                            
                            // Cerrar la conexión a la base de datos
                            $conn->close();
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Sección de Revisión de Entregas -->
            <div id="revision" class="section">
                <h2>Revisión de Entregas</h2>
                
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-number">
                            <?php
                            $conn = new mysqli($servername, $username, $password, $dbname);
                            $result = $conn->query("SELECT COUNT(*) as total FROM usuarios WHERE retirado = 0");
                            $row = $result->fetch_assoc();
                            echo $row['total'];
                            ?>
                        </div>
                        <div class="stat-label">Activos</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-number">
                            <?php
                            $result = $conn->query("SELECT COUNT(*) as total FROM usuarios WHERE documento_en_sede = 'si' AND retirado = 0");
                            $row = $result->fetch_assoc();
                            echo $row['total'];
                            ?>
                        </div>
                        <div class="stat-label">En Sede</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-number">
                            <?php
                            $result = $conn->query("SELECT COUNT(*) as total FROM usuarios WHERE documento_en_sede = 'no' AND retirado = 0");
                            $row = $result->fetch_assoc();
                            echo $row['total'];
                            ?>
                        </div>
                        <div class="stat-label">Por Procesar</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-number">
                            <?php
                            $result = $conn->query("SELECT COUNT(*) as total FROM usuarios WHERE retirado = 1");
                            $row = $result->fetch_assoc();
                            echo $row['total'];
                            ?>
                        </div>
                        <div class="stat-label">Entregados</div>
                    </div>
                </div>
                
                <div class="dashboard-card scrollable-content">
                    <h3>Documentos para Revisión</h3>
                    <div style="max-height: 500px; overflow-y: auto;">
                        <?php
                        $sql_select = "SELECT * FROM usuarios WHERE retirado = 0 ORDER BY documento_en_sede DESC";
                        $result = $conn->query($sql_select);
                        
                        if ($result->num_rows > 0) {
                            echo "<table>";
                            echo "<tr><th>Nombre</th><th>Apellido</th><th>Documento</th><th>Tipo</th><th>Estado</th><th>Acciones</th></tr>";
                            while ($row = $result->fetch_assoc()) {
                                $statusClass = $row["documento_en_sede"] == 'si' ? 'status-entregado' : 'status-pendiente';
                                $statusText = $row["documento_en_sede"] == 'si' ? 'En Sede' : 'Por Procesar';
                                
                                echo "<tr>";
                                echo "<td>" . $row["nombre"] . "</td>";
                                echo "<td>" . $row["apellido"] . "</td>";
                                echo "<td>" . $row["numero_documento"] . "</td>";
                                echo "<td>" . $row["tipo_documento"] . "</td>";
                                echo "<td><span class='status-badge $statusClass'>$statusText</span></td>";
                                echo "<td>
                                    <form action='' method='post' style='display:inline;'>
                                        <input type='hidden' name='id' value='" . $row["id"] . "'>
                                        <input type='hidden' name='accion' value='cambiar_estado'>
                                        <button type='submit' name='cambiar_estado' class='btn btn-sm btn-primary'><i class='fas fa-sync-alt'></i></button>
                                    </form>
                                    <form action='' method='post' style='display:inline;'>
                                        <input type='hidden' name='id' value='" . $row["id"] . "'>
                                        <input type='hidden' name='accion' value='entregar'>
                                        <button type='submit' name='entregar' class='btn btn-sm btn-success'><i class='fas fa-check'></i></button>
                                    </form>
                                </td>";
                                echo "</tr>";
                            }
                            echo "</table>";
                        } else {
                            echo "<div class='alert alert-info'>No se encontraron documentos para revisión.</div>";
                        }
                        
                        // Procesar acciones de cambio de estado
                        if (isset($_POST["cambiar_estado"])) {
                            $id = $_POST["id"];
                            $current = $conn->query("SELECT documento_en_sede FROM usuarios WHERE id = $id")->fetch_assoc();
                            $newStatus = $current['documento_en_sede'] == 'si' ? 'no' : 'si';
                            
                            $sql_update = "UPDATE usuarios SET documento_en_sede = '$newStatus' WHERE id = $id";
                            
                            if ($conn->query($sql_update) === TRUE) {
                                echo "<div class='alert alert-success'>Estado actualizado correctamente.</div>";
                                header("Location: {$_SERVER['PHP_SELF']}?section=revision");
                                exit();
                            } else {
                                echo "<div class='alert alert-danger'>Error al actualizar estado: " . $conn->error . "</div>";
                            }
                        }
                        
                        // Procesar acciones de entrega
                        if (isset($_POST["entregar"])) {
                            $id = $_POST["id"];
                            $sql_update = "UPDATE usuarios SET retirado = 1 WHERE id = $id";
                            
                            if ($conn->query($sql_update) === TRUE) {
                                echo "<div class='alert alert-success'>Documento marcado como entregado.</div>";
                                header("Location: {$_SERVER['PHP_SELF']}?section=revision");
                                exit();
                            } else {
                                echo "<div class='alert alert-danger'>Error al marcar como entregado: " . $conn->error . "</div>";
                            }
                        }
                        
                        $conn->close();
                        ?>
                    </div>
                </div>
            </div>
            
            <!-- Sección de Estadísticas -->
            <div id="estadisticas" class="section">
                <h2>Estadísticas de Documentos</h2>
                
                <button class="pdf-btn" onclick="generarReportePDF()">
                    <i class="fas fa-file-pdf"></i> Generar Reporte PDF
                </button>
                
                <div class="four-column scrollable-content">
                    <div class="dashboard-card">
                        <h3>Documentos por Mes</h3>
                        <div class="chart-container">
                            <canvas id="mesChart"></canvas>
                        </div>
                    </div>
                    
                    <div class="dashboard-card">
                        <h3>Documentos por Sexo</h3>
                        <div class="chart-container">
                            <canvas id="sexoChart"></canvas>
                        </div>
                    </div>
                    
                    <div class="dashboard-card">
                        <h3>Tipo de Documentos</h3>
                        <div class="chart-container">
                            <canvas id="tipoChart"></canvas>
                        </div>
                    </div>
                    
                    <div class="dashboard-card">
                        <h3>Estado de Documentos</h3>
                        <div class="chart-container">
                            <canvas id="estadoChart"></canvas>
                        </div>
                    </div>
                </div>
                
                <script>
                    document.addEventListener('DOMContentLoaded', function() {
                        // Gráfico de documentos por mes
                        const mesCtx = document.getElementById('mesChart').getContext('2d');
                        const mesChart = new Chart(mesCtx, {
                            type: 'bar',
                            data: {
                                labels: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                                datasets: [{
                                    label: 'Documentos',
                                    data: [12, 19, 15, 25, 22, 30, 28, 35, 32, 40, 38, 45],
                                    backgroundColor: 'rgba(177, 32, 37, 0.7)',
                                    borderColor: 'rgba(177, 32, 37, 1)',
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                responsive: true,
                                maintainAspectRatio: false,
                                plugins: {
                                    legend: {
                                        display: false
                                    },
                                    title: {
                                        display: true,
                                        text: 'Documentos Ingresados por Mes',
                                        font: {
                                            size: 14,
                                            weight: 'bold'
                                        }
                                    }
                                },
                                scales: {
                                    y: {
                                        beginAtZero: true,
                                        ticks: {
                                            font: {
                                                size: 11
                                            }
                                        },
                                        title: {
                                            display: true,
                                            text: 'Cantidad',
                                            font: {
                                                size: 12
                                            }
                                        }
                                    },
                                    x: {
                                        ticks: {
                                            font: {
                                                size: 10
                                            }
                                        },
                                        title: {
                                            display: true,
                                            text: 'Mes',
                                            font: {
                                                size: 12
                                            }
                                        }
                                    }
                                }
                            }
                        });
                        
                        // Gráfico de documentos por sexo
                        const sexoCtx = document.getElementById('sexoChart').getContext('2d');
                        const sexoChart = new Chart(sexoCtx, {
                            type: 'pie',
                            data: {
                                labels: ['Masculino', 'Femenino', 'Otro'],
                                datasets: [{
                                    data: [65, 30, 5],
                                    backgroundColor: [
                                        'rgba(54, 162, 235, 0.7)',
                                        'rgba(255, 99, 132, 0.7)',
                                        'rgba(255, 206, 86, 0.7)'
                                    ],
                                    borderColor: [
                                        'rgba(54, 162, 235, 1)',
                                        'rgba(255, 99, 132, 1)',
                                        'rgba(255, 206, 86, 1)'
                                    ],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                responsive: true,
                                maintainAspectRatio: false,
                                plugins: {
                                    legend: {
                                        position: 'bottom',
                                        labels: {
                                            font: {
                                                size: 11
                                            },
                                            padding: 15
                                        }
                                    },
                                    title: {
                                        display: true,
                                        text: 'Distribución por Sexo',
                                        font: {
                                            size: 14,
                                            weight: 'bold'
                                        }
                                    }
                                }
                            }
                        });
                        
                        // Gráfico de tipo de documentos
                        const tipoCtx = document.getElementById('tipoChart').getContext('2d');
                        const tipoChart = new Chart(tipoCtx, {
                            type: 'doughnut',
                            data: {
                                labels: ['Cédula', 'Licencia', 'Pasaporte', 'Tarjeta Bancaria', 'Otro'],
                                datasets: [{
                                    data: [45, 20, 15, 12, 8],
                                    backgroundColor: [
                                        'rgba(177, 32, 37, 0.7)',
                                        'rgba(30, 136, 229, 0.7)',
                                        'rgba(46, 204, 113, 0.7)',
                                        'rgba(241, 196, 15, 0.7)',
                                        'rgba(155, 89, 182, 0.7)'
                                    ],
                                    borderColor: [
                                        'rgba(177, 32, 37, 1)',
                                        'rgba(30, 136, 229, 1)',
                                        'rgba(46, 204, 113, 1)',
                                        'rgba(241, 196, 15, 1)',
                                        'rgba(155, 89, 182, 1)'
                                    ],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                responsive: true,
                                maintainAspectRatio: false,
                                plugins: {
                                    legend: {
                                        position: 'bottom',
                                        labels: {
                                            font: {
                                                size: 10
                                            },
                                            padding: 10
                                        }
                                    },
                                    title: {
                                        display: true,
                                        text: 'Tipos de Documentos',
                                        font: {
                                            size: 14,
                                            weight: 'bold'
                                        }
                                    }
                                }
                            }
                        });
                        
                        // Gráfico de estado de documentos
                        const estadoCtx = document.getElementById('estadoChart').getContext('2d');
                        const estadoChart = new Chart(estadoCtx, {
                            type: 'polarArea',
                            data: {
                                labels: ['En Sede', 'Por Procesar', 'Entregados'],
                                datasets: [{
                                    data: [60, 25, 15],
                                    backgroundColor: [
                                        'rgba(46, 204, 113, 0.7)',
                                        'rgba(241, 196, 15, 0.7)',
                                        'rgba(52, 152, 219, 0.7)'
                                    ],
                                    borderColor: [
                                        'rgba(46, 204, 113, 1)',
                                        'rgba(241, 196, 15, 1)',
                                        'rgba(52, 152, 219, 1)'
                                    ],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                responsive: true,
                                maintainAspectRatio: false,
                                plugins: {
                                    legend: {
                                        position: 'bottom',
                                        labels: {
                                            font: {
                                                size: 11
                                            },
                                            padding: 15
                                        }
                                    },
                                    title: {
                                        display: true,
                                        text: 'Estado Actual',
                                        font: {
                                            size: 14,
                                            weight: 'bold'
                                        }
                                    }
                                },
                                scales: {
                                    r: {
                                        ticks: {
                                            display: false,
                                            backdropColor: 'transparent'
                                        },
                                        grid: {
                                            color: 'rgba(0, 0, 0, 0.1)'
                                        }
                                    }
                                }
                            }
                        });
                    });
                    
                    function generarReportePDF() {
                        const { jsPDF } = window.jspdf;
                        const doc = new jsPDF();
                        
                        // Título
                        doc.setFontSize(18);
                        doc.text('Reporte de Documentos - Radio América', 105, 15, { align: 'center' });
                        
                        // Fecha de generación
                        doc.setFontSize(10);
                        doc.text('Fecha de generación: ' + new Date().toLocaleDateString(), 105, 22, { align: 'center' });
                        
                        // Estadísticas generales
                        doc.setFontSize(14);
                        doc.text('Estadísticas Generales', 20, 35);
                        
                        doc.setFontSize(10);
                        doc.text('Total Activos: ' + document.querySelector('.stat-card:nth-child(1) .stat-number').textContent, 20, 45);
                        doc.text('En Sede: ' + document.querySelector('.stat-card:nth-child(2) .stat-number').textContent, 20, 52);
                        doc.text('Por Procesar: ' + document.querySelector('.stat-card:nth-child(3) .stat-number').textContent, 20, 59);
                        doc.text('Entregados: ' + document.querySelector('.stat-card:nth-child(4) .stat-number').textContent, 20, 66);
                        
                        // Documentos por mes
                        doc.setFontSize(14);
                        doc.text('Documentos por Mes', 20, 80);
                        
                        const meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
                        const datosMes = [12, 19, 15, 25, 22, 30, 28, 35, 32, 40, 38, 45];
                        
                        doc.autoTable({
                            head: [['Mes', 'Cantidad']],
                            body: meses.map((mes, i) => [mes, datosMes[i]]),
                            startY: 85,
                            styles: { fontSize: 9 },
                            headStyles: { fillColor: [177, 32, 37] }
                        });
                        
                        // Documentos por sexo
                        doc.setFontSize(14);
                        doc.text('Documentos por Sexo', 20, doc.lastAutoTable.finalY + 10);
                        
                        doc.autoTable({
                            head: [['Sexo', 'Cantidad']],
                            body: [
                                ['Masculino', '65'],
                                ['Femenino', '30'],
                                ['Otro', '5']
                            ],
                            startY: doc.lastAutoTable.finalY + 15,
                            styles: { fontSize: 9 },
                            headStyles: { fillColor: [177, 32, 37] }
                        });
                        
                        // Tipo de documentos
                        doc.setFontSize(14);
                        doc.text('Tipo de Documentos', 20, doc.lastAutoTable.finalY + 10);
                        
                        doc.autoTable({
                            head: [['Tipo', 'Cantidad']],
                            body: [
                                ['Cédula', '45'],
                                ['Licencia', '20'],
                                ['Pasaporte', '15'],
                                ['Tarjeta Bancaria', '12'],
                                ['Otro', '8']
                            ],
                            startY: doc.lastAutoTable.finalY + 15,
                            styles: { fontSize: 9 },
                            headStyles: { fillColor: [177, 32, 37] }
                        });
                        
                        // Estado de documentos
                        doc.setFontSize(14);
                        doc.text('Estado de Documentos', 20, doc.lastAutoTable.finalY + 10);
                        
                        doc.autoTable({
                            head: [['Estado', 'Cantidad']],
                            body: [
                                ['En Sede', '60'],
                                ['Por Procesar', '25'],
                                ['Entregados', '15']
                            ],
                            startY: doc.lastAutoTable.finalY + 15,
                            styles: { fontSize: 9 },
                            headStyles: { fillColor: [177, 32, 37] }
                        });
                        
                        // Guardar el PDF
                        doc.save('reporte_documentos.pdf');
                    }
                </script>
            </div>
            
            <!-- Sección de Búsqueda de Solicitudes -->
            <div id="solicitudes" class="section">
                <h2>Búsqueda de Solicitudes</h2>
                
                <div class="two-column scrollable-content">
                    <div class="dashboard-card">
                        <h3>Buscar por Documento</h3>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="busqueda_documento">Número de Documento:</label>
                                <div class="input-icon">
                                    <i class="fas fa-id-card"></i>
                                    <input type="text" id="busqueda_documento" name="busqueda_documento" placeholder="Ej: 0.000.000">
                                </div>
                            </div>
                            <button type="submit" name="buscar_documento">
                                <i class="fas fa-search"></i> Buscar
                            </button>
                        </form>
                        
                        <?php
                        if (isset($_POST["buscar_documento"])) {
                            $documento_busqueda = $_POST["busqueda_documento"];
                            
                            $conn = new mysqli($servername, $username, $password, $dbname);
                            
                            $sql = "SELECT * FROM usuarios WHERE numero_documento LIKE '%$documento_busqueda%'";
                            $result = $conn->query($sql);
                            
                            if ($result->num_rows > 0) {
                                echo "<h3>Resultados:</h3>";
                                echo "<div style='max-height: 400px; overflow-y: auto;'>";
                                echo "<table>";
                                echo "<tr><th>Nombre</th><th>Apellido</th><th>Documento</th><th>Tipo</th><th>Estado</th><th>Historial</th></tr>";
                                
                                while ($row = $result->fetch_assoc()) {
                                    $statusClass = $row["retirado"] == 1 ? 'status-entregado' : ($row["documento_en_sede"] == 'si' ? 'status-procesado' : 'status-pendiente');
                                    $statusText = $row["retirado"] == 1 ? 'Entregado' : ($row["documento_en_sede"] == 'si' ? 'En Sede' : 'Por Procesar');
                                    
                                    echo "<tr>";
                                    echo "<td>" . $row["nombre"] . "</td>";
                                    echo "<td>" . $row["apellido"] . "</td>";
                                    echo "<td>" . $row["numero_documento"] . "</td>";
                                    echo "<td>" . $row["tipo_documento"] . "</td>";
                                    echo "<td><span class='status-badge $statusClass'>$statusText</span></td>";
                                    echo "<td><button class='btn btn-sm btn-info' onclick='verHistorial(" . $row["id"] . ")'><i class='fas fa-history'></i></button></td>";
                                    echo "</tr>";
                                }
                                
                                echo "</table>";
                                echo "</div>";
                            } else {
                                echo "<div class='alert alert-info'>No se encontraron documentos.</div>";
                            }
                            
                            $conn->close();
                        }
                        ?>
                    </div>
                    
                    <div class="dashboard-card">
                        <h3>Historial de Solicitudes</h3>
                        <div id="historial-container" style="max-height: 500px; overflow-y: auto;">
                            <div class="alert alert-info">Seleccione un documento para ver su historial.</div>
                        </div>
                    </div>
                </div>
                
                <script>
                    function verHistorial(id) {
                        const historialHTML = `
                            <table>
                                <tr><th>Fecha</th><th>Acción</th><th>Realizado por</th><th>Observaciones</th></tr>
                                <tr>
                                    <td>2024-05-15 10:30</td>
                                    <td>Registro</td>
                                    <td>Sistema</td>
                                    <td>Documento ingresado</td>
                                </tr>
                                <tr>
                                    <td>2024-05-16 14:22</td>
                                    <td>Actualización</td>
                                    <td>Admin</td>
                                    <td>Documento recibido en sede</td>
                                </tr>
                                <tr>
                                    <td>2024-05-18 09:45</td>
                                    <td>Solicitud</td>
                                    <td>Usuario</td>
                                    <td>Solicitó devolución</td>
                                </tr>
                            </table>
                        `;
                        
                        document.getElementById('historial-container').innerHTML = historialHTML;
                    }
                </script>
            </div>
        </div>
        
        <p class="copyright">© Radio América 2024 - Todos los derechos reservados</p>
    </div>
    <div class="radio-wave"></div>
    
    <script>
        function showSection(sectionId) {
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => {
                section.classList.remove('active');
            });
            
            document.getElementById(sectionId).classList.add('active');
            
            const buttons = document.querySelectorAll('.menu-btn');
            buttons.forEach(button => {
                button.classList.remove('active');
            });
            event.target.classList.add('active');
        }
    </script>
</body>
</html>