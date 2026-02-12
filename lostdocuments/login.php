<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usuario = $_POST['usuario'];
    $clave = $_POST['clave'];
    // Verificar las credenciales de acceso
    if ($usuario === "ADMINRA2024" && $clave === "2024RAcomve") {
        // Credenciales válidas, crear sesión de usuario
        $_SESSION['usuario'] = $usuario;
        header("Location: archivo_protegido.php"); // Redirigir al archivo protegido
        exit();
    } else {
        $mensaje = "Usuario o contraseña incorrectos";
    }
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Author-->
    <meta name="author" content="Radio America">
    <title>Login - Radio América</title>
    <!--=============== REMIXICONS ===============-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" crossorigin="">
    <!--=============== CSS ===============-->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800&display=swap');
        
        :root {
            --primary: #B12025;
            --primary-dark: #8C191D;
            --secondary: #1E88E5;
            --white: #ffffff;
            --text: #333333;
            --text-light: #666666;
            --border-radius: 12px;
            --box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12);
            --transition: all 0.3s ease;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
            color: var(--text);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }
        
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('assets/img/FONDO.webp') no-repeat center center;
            background-size: cover;
            opacity: 0.15;
            z-index: -1;
        }
        
        .login-container {
            width: 100%;
            max-width: 1200px;
            display: flex;
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--box-shadow);
            background: var(--white);
        }
        
        .login-info {
            flex: 1;
            padding: 60px;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: var(--white);
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
            overflow: hidden;
        }
        
        .login-info::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('assets/img/FONDO.webp') no-repeat center center;
            background-size: cover;
            opacity: 0.2;
            z-index: 0;
        }
        
        .login-info-content {
            position: relative;
            z-index: 1;
        }
        
        .login-info h1 {
            font-size: 2.8rem;
            font-weight: 800;
            margin-bottom: 20px;
            line-height: 1.2;
        }
        
        .login-info p {
            font-size: 1.1rem;
            margin-bottom: 30px;
            opacity: 0.9;
            line-height: 1.6;
        }
        
        .login-features {
            margin-top: 20px;
        }
        
        .login-feature {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        
        .login-feature i {
            font-size: 1.5rem;
            margin-right: 15px;
        }
        
        .login-form-container {
            flex: 1;
            padding: 60px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .login-logo {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .login-logo h2 {
            font-size: 2rem;
            font-weight: 800;
            color: var(--primary);
            margin-bottom: 5px;
        }
        
        .login-logo p {
            color: var(--text-light);
            font-size: 0.9rem;
        }
        
        .login-form {
            margin-top: 20px;
        }
        
        .login-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 30px;
            color: var(--text);
            text-align: center;
        }
        
        .form-group {
            margin-bottom: 25px;
            position: relative;
        }
        
        .form-group input {
            width: 100%;
            padding: 15px 20px 15px 50px;
            border: 1px solid #e0e0e0;
            border-radius: var(--border-radius);
            font-size: 1rem;
            font-family: 'Montserrat', sans-serif;
            transition: var(--transition);
            background: #f9f9f9;
        }
        
        .form-group input:focus {
            outline: none;
            border-color: var(--primary);
            background: var(--white);
            box-shadow: 0 0 0 3px rgba(177, 32, 37, 0.1);
        }
        
        .form-group i {
            position: absolute;
            left: 18px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 1.2rem;
            color: var(--primary);
        }
        
        .login-button {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: var(--border-radius);
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: var(--white);
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            margin-top: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .login-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(177, 32, 37, 0.3);
        }
        
        .login-footer {
            text-align: center;
            margin-top: 30px;
            font-size: 0.9rem;
            color: var(--text-light);
        }
        
        .login-footer a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
        }
        
        .login-footer a:hover {
            text-decoration: underline;
        }
        
        .mensaje {
            background-color: #f8d7da;
            color: #721c24;
            padding: 12px 15px;
            border-radius: var(--border-radius);
            margin-top: 20px;
            text-align: center;
            font-size: 0.9rem;
            border: 1px solid #f5c6cb;
        }
        
        /* Responsive */
        @media (max-width: 992px) {
            .login-container {
                flex-direction: column;
                max-width: 500px;
            }
            
            .login-info {
                padding: 40px;
            }
            
            .login-info h1 {
                font-size: 2.2rem;
            }
            
            .login-form-container {
                padding: 40px;
            }
        }
        
        @media (max-width: 576px) {
            body {
                padding: 10px;
            }
            
            .login-info {
                padding: 30px 20px;
            }
            
            .login-info h1 {
                font-size: 1.8rem;
            }
            
            .login-form-container {
                padding: 30px 20px;
            }
            
            .login-title {
                font-size: 1.5rem;
            }
            
            .form-group input {
                padding: 12px 15px 12px 45px;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-info">
            <div class="login-info-content">
                <h1>Radio América</h1>
                <p>Sistema de Gestión Documental</p>
                <div class="login-features">
                    <div class="login-feature">
                        <i class="ri-shield-check-line"></i>
                        <span>Acceso seguro y protegido</span>
                    </div>
                    <div class="login-feature">
                        <i class="ri-file-list-3-line"></i>
                        <span>Gestión eficiente de documentos</span>
                    </div>
                    <div class="login-feature">
                        <i class="ri-bar-chart-box-line"></i>
                        <span>Estadísticas en tiempo real</span>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="login-form-container">
            <div class="login-logo">
                <h2>Radio <span style="color: var(--primary);">América</span></h2>
                <p>Panel Administrativo</p>
            </div>
            
            <form action="" method="post" class="login-form">
                <h3 class="login-title">Iniciar Sesión</h3>
                
                <div class="form-group">
                    <i class="ri-user-3-line"></i>
                    <input type="text" name="usuario" placeholder="Usuario" required>
                </div>
                
                <div class="form-group">
                    <i class="ri-lock-password-line"></i>
                    <input type="password" name="clave" placeholder="Contraseña" required>
                </div>
                
                <button type="submit" class="login-button">Acceder</button>
                
                <?php if (isset($mensaje)) echo "<div class='mensaje'>$mensaje</div>"; ?>
            </form>
            
            <div class="login-footer">
                <p>© 2024 Radio América. Todos los derechos reservados.</p>
                <p>¿Necesitas ayuda? <a href="#">Contacta al soporte</a></p>
            </div>
        </div>
    </div>
  
    <!--Link canonico de este inicio de sesion -->
    <link rel="canonical" href="https://radioamerica.com.ve/" />
</body>
</html>